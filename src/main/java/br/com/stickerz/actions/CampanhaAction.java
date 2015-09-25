package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import br.com.stickerz.service.RedeService;
import br.com.stickerz.vo.RedeVo;


public class CampanhaAction extends BaseAction implements ModelDriven<RedeVo>{
	
	private static final long serialVersionUID = 1L;

	
	public RedeVo model;
	private RedeService redeService;
	
	
	@Action(value="abrirCampanha",results={@Result(name=SUCCESS, location="campanha.jsp")})
	public String index() {
		model = redeService.buscarRede(model.getCodigoRede());
		return SUCCESS;
	}

	@Override
	public RedeVo getModel() {
		if(model == null){
			model = new RedeVo();
		}
		return model;
	}

	public RedeService getRedeService() {
		return redeService;
	}

	public void setRedeService(RedeService redeService) {
		this.redeService = redeService;
	}

}
