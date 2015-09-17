package br.com.stickerz.service.cadastro;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.stickerz.dao.PessoaDao;
import br.com.stickerz.dao.UsuarioDao;
import br.com.stickerz.model.Pessoa;
import br.com.stickerz.model.Usuario;
import br.com.stickerz.service.CadastroService;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.utils.Utilitario;
import br.com.stickerz.vo.CadastroVo;


@Service
public class CadastroServiceImpl implements CadastroService {
	
	@Autowired
	private UsuarioDao usuarioDao;
	
	@Autowired
	private PessoaDao pessoaDao;

	
	@Override
	public Usuario cadastrarUsuario(CadastroVo cadastroVo) throws LogicServiceException {

		Pessoa pessoa = new Pessoa();
		pessoa.setDescNome(cadastroVo.getNome());
		pessoa.setDescEmail(cadastroVo.getEmail());
		
		pessoaDao.save(pessoa);
		
		Usuario usuario = new Usuario(pessoa);

		usuario.setDescUsuarioConta(cadastroVo.getEmail());
		usuario.setDescHashSenha(cadastroVo.getSenha());
		
		//TODO Perguntar ao doido para que serve isso.. kkk.
		usuario.setDescChaveAutenticacao(Utilitario.gerarSenha(10));

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
