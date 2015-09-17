package br.com.stickerz.actions;


import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import br.com.stickerz.model.Rede;
import br.com.stickerz.service.RedeService;


public class IndexAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	
	private RedeService redeService;
	private List<Rede> listaRedes;
	

	@Action(value="index",results={@Result(name=SUCCESS, location="acesso.jsp")})
	public String index() {
		try {
			setListaRedes(redeService.listarRedesAtivas());
		} catch (Exception e) {
			setListaRedes(null);
		}
		
		return SUCCESS;
	}


	public RedeService getRedeService() {
		return redeService;
	}


	public void setRedeService(RedeService redeService) {
		this.redeService = redeService;
	}


	public List<Rede> getListaRedes() {
		return listaRedes;
	}


	public void setListaRedes(List<Rede> listaRedes) {
		this.listaRedes = listaRedes;
	}
}
