package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;


public class IndexAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;

	@Action(value="index",results={@Result(name=SUCCESS, location="acesso.jsp")})
	public String index() {
		return SUCCESS;
	}
}
