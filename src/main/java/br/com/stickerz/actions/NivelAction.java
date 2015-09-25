package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import br.com.stickerz.service.RedeService;
import br.com.stickerz.vo.NivelVo;
import br.com.stickerz.vo.RedeVo;


public class NivelAction extends BaseAction implements ModelDriven<NivelVo>{
	
	private static final long serialVersionUID = 1L;

	
	public NivelVo model;
	
	
	@Action(value="abrirNivel",results={@Result(name=SUCCESS, location="nivel.jsp")})
	public String index() {
		return SUCCESS;
	}

	@Override
	public NivelVo getModel() {
		if(model == null){
			model = new NivelVo();
		}
		return model;
	}

}
