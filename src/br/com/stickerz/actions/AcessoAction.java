package br.com.stickerz.actions;


import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import br.com.stickerz.service.AcessoService;
import br.com.stickerz.service.LogicServiceException;
import br.com.stickerz.service.SessaoUsuario;
import br.com.stickerz.vo.LoginVo;

import com.opensymphony.xwork2.ModelDriven;


public class AcessoAction extends BaseAction implements ModelDriven<LoginVo> {
	
	private LoginVo model;
	
	private AcessoService acessoService;
	

	private static final long serialVersionUID = 1L;

	@Action(value ="login", results={
			@Result(name=SUCCESS, type="redirectAction", params={"actionName", "abrirPortal"})	,
			@Result(name=ERROR, location="acesso.jsp"),
			@Result(name="TROCA_SENHA",location="trocaSenha.jsp")})
	public String login(){
		try {
			SessaoUsuario sessaoUsuario = getAcessoService().login(getModel());
			createUserSession(sessaoUsuario);

			//TODO Criar mecanismo para trocar senha
//			if(sessaoUsuario.isTrocaSenha()){
//				return "TROCA_SENHA";
//			}
			return SUCCESS;
		} catch (LogicServiceException e) {
			addActionError( getText(e.getMessage()) );
			return ERROR;
		}
	}
	
	@Action(value="logoff", results=@Result(name=SUCCESS, type="redirectAction", params={"actionName", "index"}))
	public String logoff() {
	    invalidateUserSession();
		return SUCCESS;
	}
	
	
	private void invalidateUserSession() {
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	    	Enumeration<String> en = session.getAttributeNames();
	    	while (en.hasMoreElements()) {
	    		session.removeAttribute(en.nextElement());
	    	}
	    }
	}
	
	private void createUserSession(SessaoUsuario sessaoUsuario) {
	    HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.setAttribute(SessaoUsuario.class.getCanonicalName(), sessaoUsuario);
            session.setAttribute("loggedUser", true);
        }
	}
	
	@Override
	public LoginVo getModel() {
		if(model == null){
			model = new LoginVo();
		}
		return model;
	}


	public AcessoService getAcessoService() {
		return acessoService;
	}


	public void setAcessoService(AcessoService acessoService) {
		this.acessoService = acessoService;
	}
}
