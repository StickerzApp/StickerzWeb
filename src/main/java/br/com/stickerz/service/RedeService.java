package br.com.stickerz.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import br.com.stickerz.model.Rede;
import br.com.stickerz.vo.RedeVo;

public interface RedeService extends ActionService {

	@Transactional
	public List<Rede> listarRedesAtivas() throws LogicServiceException;

	public RedeVo buscarRede(String codigoRede);
	
	
}
