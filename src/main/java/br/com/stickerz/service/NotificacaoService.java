package br.com.stickerz.service;

import br.com.stickerz.vo.ParceiroVo;


public interface NotificacaoService extends ActionService {

	
	public void registrarInteresseParceiro(ParceiroVo parceiro) throws LogicServiceException;
	
	
}
