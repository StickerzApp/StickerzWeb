package br.com.stickerz.service.rede;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.stickerz.dao.RedeDao;
import br.com.stickerz.dao.UsuarioDao;
import br.com.stickerz.model.Rede;
import br.com.stickerz.model.Usuario;
import br.com.stickerz.service.AcessoService;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.service.RedeService;
import br.com.stickerz.service.SessaoUsuario;
import br.com.stickerz.utils.Utilitario;
import br.com.stickerz.vo.LoginVo;


@Service
public class RedeServiceImpl implements RedeService {
	
	@Autowired
	private RedeDao redeDao;



	@Override
	public List<Rede> listarRedesAtivas() throws LogicServiceException {
		return redeDao.listarRedesAtivas();
	}
}
