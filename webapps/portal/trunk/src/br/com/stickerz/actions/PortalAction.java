package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;


public class PortalAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;

	@Action(value="abrirPortal",results={@Result(name=SUCCESS, location="portal.jsp")})
	public String index() {
		return SUCCESS;
	}
}
