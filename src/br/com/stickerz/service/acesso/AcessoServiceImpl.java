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
			throw new LogicServiceException("contaAcessoService.exception.conta_inexistente");
		}

		if (!usuario.getDescHashSenha().equals( vo.getSenha() )) {
			throw new LogicServiceException("contaAcessoService.exception.senha_invalida");
		}
		
		if (!usuario.isBolAtivo()) {
			throw new LogicServiceException("contaAcessoService.exception.conta_inativa");
		}
		
		SessaoUsuario sessaoUsuario = new SessaoUsuario();
		
//		Pessoa pessoa = contaAcesso.getPessoa();
//		if (pessoa != null) {
//			
//			ContratoCondominio contratoCondominio = getContratoCondominioDao().getContratoVigente( pessoa.getIdCondominio() );
//			
//			if(contratoCondominio == null){
//				throw new LogicServiceException("contaAcessoService.exception.contrato_inexistente");
//			}
//			
//			if (contratoCondominio.isBolSuspenso()) {
//				throw new LogicServiceException("contaAcessoService.exception.contrato_suspenso");
//			}
//			
//			if(pessoa.getIdUnidade() != null){
//				List<PendenciaUnidade> pendencias = getPendenciaUnidadeDao().getPendenciasImpeditivas(pessoa.getIdUnidade());
//				if (pendencias.size() > 0) {
//					throw new UnidadeComPendenciaException(pendencias);
//				}
//			}
//			
//			sessaoUsuario.setIdCondominio( pessoa.getIdCondominio() );
//			if(pessoa.getIdUnidade() != null){
//				sessaoUsuario.setIdUnidade( pessoa.getIdUnidade() );
//			}
//			sessaoUsuario.setIdPessoa( pessoa.getIdPessoa() );
//			sessaoUsuario.setNomePessoa( pessoa.getNomePessoa() );
//			sessaoUsuario.setBolConfigurado( pessoa.getCondominio().isBolConfigurado() );
//		}
		
		sessaoUsuario.setIdUsuario(usuario.getIdUsuario());
		sessaoUsuario.setDescNome( usuario.getDescNome() );
		sessaoUsuario.setDescEmail( usuario.getDescEmail() );
		sessaoUsuario.setBolTrocaSenha(usuario.isBolTrocaSenha());
		
//		contaAcesso.setDataUltimoAcesso(new Date());
//		getContaAcessoDao().update(contaAcesso);
		
		return sessaoUsuario;
	}
	
	
	@Override
	public void recuperarSenha(LoginVo model) throws LogicServiceException {
		
		Usuario usuario = usuarioDao.recuperaUsuario(model.getEmail());
		if(!Utilitario.isVazio(usuario) && usuario.isBolAtivo()){
			usuario.setBolTrocaSenha(true);
			usuario.setCodTrocaSenha(Utilitario.gerarSenha(10));
			
			usuarioDao.save(usuario);
			
			//TODO criar mecaniscmo de envio de email
//				enviaEmailUsuario("recuperarSenha", usuario.getCodTrocaSenha());
		}else{
			throw new LogicServiceException("contaAcessoService.exception.conta_inexistente_ou_inativa");
		}
		
	}

	public UsuarioDao getUsuarioDao() {
		return usuarioDao;
	}

	public void setUsuarioDao(UsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}


}
