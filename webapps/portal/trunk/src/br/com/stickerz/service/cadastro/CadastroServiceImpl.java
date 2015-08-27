package br.com.stickerz.service.cadastro;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.stickerz.dao.UsuarioDao;
import br.com.stickerz.model.Usuario;
import br.com.stickerz.service.CadastroService;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.vo.CadastroVo;


@Service
public class CadastroServiceImpl implements CadastroService {
	
	@Autowired
	private UsuarioDao usuarioDao;

	
	@Override
	public Usuario cadastrarUsuario(CadastroVo cadastroVo) throws LogicServiceException {

		Usuario usuario = new Usuario();
		usuario.setDescNome(cadastroVo.getNome());
		usuario.setDescEmail(cadastroVo.getEmail());
		usuario.setDescHashSenha(cadastroVo.getSenha());
		
		//TODO Perguntar ao doido para que serve isso.. kkk.
		usuario.setDescChaveAutenticacao(cadastroVo.getSenha());
		
		usuario.setDataHoraCadastro(new Date());

		//TODO caso seja decidido que o usuário terá que ativar seu email cadastrado, o usuário deve ficar como inativo até confirmação por email
		usuario.setBolAtivo(true);
		
		usuario.setBolTrocaSenha(false);
		
		try {
			getUsuarioDao().save(usuario);
		} catch (Exception e) {
			e.printStackTrace();
			throw new LogicServiceException("cadastro.erro.contaexistente");
		}
		
		return usuario;
	}
	
	
	


	public UsuarioDao getUsuarioDao() {
		return usuarioDao;
	}

	public void setUsuarioDao(UsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}


}
