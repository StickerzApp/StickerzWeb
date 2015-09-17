package br.com.stickerz.service;

import org.springframework.transaction.annotation.Transactional;

import br.com.stickerz.model.Usuario;
import br.com.stickerz.vo.LoginVo;


public interface AcessoService extends ActionService {

	
//	@Transactional
//	public SessaoUsuario login(UsuarioVo usuario) throws LogicServiceException;
	
	@Transactional
	public SessaoUsuario login(LoginVo vo) throws LogicServiceException;

	@Transactional
	public void recuperarSenha(LoginVo model) throws LogicServiceException;

	@Transactional
	public Usuario buscarUsuarioSenhaAlteracao(LoginVo usuarioVo) throws LogicServiceException;

	@Transactional
	public void alterarSenhaRecuperacao(LoginVo usuarioVo) throws LogicServiceException;
	
//	@Transactional
//    Pessoa validaLoginSenha(String login, String senha);
//
//	public List<Pessoa> listFuncionarios();
//
//
//	@Transactional
//	public void desativarFuncionario(FuncionarioVo model);
//
//	@Transactional
//	public Pessoa cadastrarCliente(String email, String senha, String nome);
//
//	@Transactional
//	public Pessoa alterarDadosCliente(PessoaVo model);
}
