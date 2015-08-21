package br.com.stickerz.dao;


import static br.com.stickerz.dao.QueryParameter.with;

import org.springframework.stereotype.Repository;

import br.com.stickerz.model.Usuario;


@Repository
public class UsuarioDao extends AbstractJpaDao<Usuario> {
	
	public Number verificaExistenciaCadastro(String descEmail) {
		String jpql = "SELECT COUNT(*) FROM Usuario u WHERE u.descEmail = :descEmail";
		Parameters params = with("descEmail",descEmail).parameters();
		return getWithQuery(jpql, params);
	}

	public Number verificaExistenciaCadastro(String cpf, String descEmail) {
		String jpql = "SELECT COUNT(*) FROM Usuario u WHERE u.cpf = :cpf OR u.descEmail = :descEmail";
		Parameters params = with("cpf", cpf).and("descEmail",descEmail).parameters();
		return getWithQuery(jpql, params);
	}
	
	
	public Usuario recuperaUsuario(String login){
		String jpql = "FROM Usuario u WHERE u.descEmail = :descEmail ";
		Parameters params = with("descEmail", login).parameters();
		return getWithQuery(jpql, params);
	}
	
}
