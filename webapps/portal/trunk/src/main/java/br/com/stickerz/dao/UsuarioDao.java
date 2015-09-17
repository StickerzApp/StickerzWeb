package br.com.stickerz.dao;


import static br.com.stickerz.dao.QueryParameter.with;

import org.springframework.stereotype.Repository;

import br.com.stickerz.model.Usuario;


@Repository
public class UsuarioDao extends AbstractJpaDao<Usuario> {
	
	public Number verificaExistenciaCadastro(String descEmail) {
		String jpql = "SELECT COUNT(*) FROM Usuario u WHERE u.descEmail = :descEmail and u.bolAtivo = :bolAtivo";
		Parameters params = with("descEmail",descEmail).and("bolAtivo", true).parameters();
		return getWithQuery(jpql, params);
	}

	public Number verificaExistenciaCadastro(String cpf, String descEmail) {
		String jpql = "SELECT COUNT(*) FROM Usuario u WHERE u.cpf = :cpf OR u.descEmail = :descEmail";
		Parameters params = with("cpf", cpf).and("descEmail",descEmail).parameters();
		return getWithQuery(jpql, params);
	}
	
	
	public Usuario recuperaUsuario(String login){
		String jpql = "FROM Usuario u WHERE u.descUsuarioConta = :descEmail ";
		Parameters params = with("descEmail", login).parameters();
		return getWithQuery(jpql, params);
	}

	public Usuario buscarUsuarioSenhaAlteracao(String emailAlteracaoSenha, String codigoAlteracaoSenha) {
		String jpql = "FROM Usuario u WHERE u.descEmail = :emailAlteracaoSenha AND u.codTrocaSenha = :codTrocaSenha AND u.bolAtivo = :bolAtivo";
		Parameters params = with("emailAlteracaoSenha", emailAlteracaoSenha).and("codTrocaSenha",codigoAlteracaoSenha).and("bolAtivo", true).parameters();
		return getWithQuery(jpql, params);
	}
	
}
