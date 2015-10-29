package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import br.com.stickerz.service.NotificacaoService;
import br.com.stickerz.vo.ParceiroVo;



public class ParceiroAction extends BaseAction implements ModelDriven<ParceiroVo> {
	
	private static final long serialVersionUID = 1L;
	private ParceiroVo model;
	
	private NotificacaoService notificacaoService;
	
	@Action(value="registroInteresseParceiro",results={@Result(name=SUCCESS, location="registroInteresseParceiro.jsp")})
	public String registroInteresseParceiro() {
		return SUCCESS;
	}
	
	@Action(value="registrarInteresseParceiro",results={@Result(name=SUCCESS, type="redirectAction", params={"actionName", "index"}),
			@Result(name=ERROR, location="registroInteresseParceiro.jsp")
	})
	public String registrarInteresseParceiro() {
		try {
			notificacaoService.registrarInteresseParceiro(getModel());
		} catch (Exception e) {
			addActionError( getText(e.getMessage()) );
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	
	@Override
	public ParceiroVo getModel() {
		if(model == null){
			model = new ParceiroVo();
		}
		return model;
	}

}
