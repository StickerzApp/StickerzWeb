package br.com.stickerz.service.rede;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.stickerz.dao.RedeDao;
import br.com.stickerz.model.Rede;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.service.RedeService;
import br.com.stickerz.vo.RedeVo;


@Service
public class RedeServiceImpl implements RedeService {
	
	@Autowired
	private RedeDao redeDao;



	@Override
	public List<Rede> listarRedesAtivas() throws LogicServiceException {
		return redeDao.listarRedesAtivas();
	}

	@Override
	public RedeVo buscarRede(String codigoRede) {
		Rede rede = redeDao.get(Integer.valueOf(codigoRede));
		RedeVo vo = new RedeVo();
		vo.setCodigoRede(String.valueOf(rede.getIdRede()));
		vo.setNomeRede(rede.getNomeRede());
		vo.setPathImagemRede(rede.getPathImagemRede());
		vo.setValorTicketMedio(rede.getValorTicketMedio());
		return vo;
	}
}
