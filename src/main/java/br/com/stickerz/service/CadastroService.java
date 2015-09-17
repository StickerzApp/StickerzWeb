package br.com.stickerz.service;

import org.springframework.transaction.annotation.Transactional;

import br.com.stickerz.model.Usuario;
import br.com.stickerz.vo.CadastroVo;


public interface CadastroService extends ActionService {

	
//	@Transactional
//	public void desativarFuncionario(FuncionarioVo model);
//
	@Transactional
	public Usuario cadastrarUsuario(CadastroVo cadastroVo) throws LogicServiceException;
//
//	@Transactional
//	public Pessoa alterarDadosCliente(PessoaVo model);
}
