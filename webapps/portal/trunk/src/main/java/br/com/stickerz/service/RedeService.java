package br.com.stickerz.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import br.com.stickerz.model.Rede;

public interface RedeService extends ActionService {

	@Transactional
	public List<Rede> listarRedesAtivas() throws LogicServiceException;

	
}
