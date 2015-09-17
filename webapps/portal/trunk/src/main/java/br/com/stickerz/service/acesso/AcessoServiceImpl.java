package br.com.stickerz.service.acesso;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.stickerz.dao.UsuarioDao;
import br.com.stickerz.model.Usuario;
import br.com.stickerz.service.AcessoService;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.service.SessaoUsuario;
import br.com.stickerz.utils.Utilitario;
import br.com.stickerz.vo.LoginVo;


@Service
public class AcessoServiceImpl implements AcessoService {
	
	@Autowired
	private UsuarioDao usuarioDao;

	public SessaoUsuario login(LoginVo vo) throws LogicServiceException {
		Usuario usuario = getUsuarioDao().recuperaUsuario(vo.getEmail());

		if (usuario == null){
			throw new LogicServiceException("acesso.login.erro.containexistente");
		}

		if (!usuario.getDescHashSenha().equals( vo.getSenha() )) {
			throw new LogicServiceException("acesso.login.erro.senhainvalida");
		}
		
		if (!usuario.isBolAtivo()) {
			throw new LogicServiceException("acesso.login.erro.containativa");
		}
		
		if (usuario.isBolTrocaSenha()) {
			throw new LogicServiceException("acesso.login.erro.alteracaosenhapendente");
		}
		
		SessaoUsuario sessaoUsuario = new SessaoUsuario();
		
		sessaoUsuario.setIdUsuario(usuario.getIdPessoa());
		sessaoUsuario.setDescNome( usuario.getPessoa().getDescNome());
		sessaoUsuario.setDescEmail( usuario.getPessoa().getDescEmail() );
		sessaoUsuario.setBolTrocaSenha(usuario.isBolTrocaSenha());
		
		return sessaoUsuario;
	}
	
	
	@Override
	public void recuperarSenha(LoginVo model) throws LogicServiceException {
		
		Usuario usuario = usuarioDao.recuperaUsuario(model.getEmail());
		if(!Utilitario.isVazio(usuario) && usuario.isBolAtivo()){
			usuario.setCodTrocaSenha(Utilitario.gerarSenha(10));
			usuarioDao.save(usuario);
			
			//TODO criar mecaniscmo de envio de email
			//enviaEmailUsuario("recuperarSenha", usuario.getCodTrocaSenha());
		}else{
			throw new LogicServiceException("acesso.recuperacaosenha.erro.usuarionaoencontrado");
		}
		
	}

	public UsuarioDao getUsuarioDao() {
		return usuarioDao;
	}

	public void setUsuarioDao(UsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}


	@Override
	public Usuario buscarUsuarioSenhaAlteracao(LoginVo usuarioVo) throws LogicServiceException {
		Usuario usuario = usuarioDao.buscarUsuarioSenhaAlteracao(usuarioVo.getEmail(),usuarioVo.getCodigoAlteracaoSenha());
		if(usuario != null){
			usuario.setBolTrocaSenha(true);
			usuarioDao.update(usuario);
			return usuario;
		}else{
			throw new LogicServiceException("acesso.recuperacaosenha.erro.emailoucodigoincorreto");
		}
	}


	@Override
	public void alterarSenhaRecuperacao(LoginVo usuarioVo) throws LogicServiceException {
		try {
			Usuario usuario = usuarioDao.buscarUsuarioSenhaAlteracao(usuarioVo.getEmail(),usuarioVo.getCodigoAlteracaoSenha());
			usuario.setBolTrocaSenha(false);
			usuario.setDescHashSenha(usuarioVo.getSenha());
			usuario.setCodTrocaSenha(null);
			usuarioDao.update(usuario);
		} catch (Exception e) {
			throw new LogicServiceException("acesso.alteracaosenha.erro.erronaalteracaosenha");
		}
	}
}
