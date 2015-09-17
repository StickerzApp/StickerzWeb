package br.com.stickerz.actions;


import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import br.com.stickerz.model.Rede;
import br.com.stickerz.service.RedeService;


public class PortalAction extends BaseAction {
	
	
	private RedeService redeService;
	private List<Rede> listaRedes;
	
	private static final long serialVersionUID = 1L;

	@Action(value="abrirPortal",results={@Result(name=SUCCESS, location="portal.jsp")})
	public String index() {
		try {
			setListaRedes(redeService.listarRedesAtivas());
		} catch (Exception e) {
			// TODO: handle exception
		}
		return SUCCESS;
	}

	public List<Rede> getListaRedes() {
		return listaRedes;
	}

	public void setListaRedes(List<Rede> listaRedes) {
		this.listaRedes = listaRedes;
	}

	public RedeService getRedeService() {
		return redeService;
	}

	public void setRedeService(RedeService redeService) {
		this.redeService = redeService;
	}
}
