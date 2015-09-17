package br.com.stickerz.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.TokenHelper;




import br.com.stickerz.service.SessaoUsuario;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    public static final String TOKEN = "invalid.token";
    public static final String INDEX = "index";
    
    public static final MessageType information = MessageType.information;
    public static final MessageType warning = MessageType.warning;
    
    public static final String MNU_QUEM_SOMOS = "quemsomos";
    public static final String MNU_COMO_FUNCIONA = "comofunciona";
    public static final String MNU_CONTATO = "contato";
    
    private String menuSelecionado;
    
    public static enum MessageType {
        information, warning
    }
    
    private SessaoUsuario sessaoUsuario;
    private String token;
    private MessageType messageType;
    
    public SessaoUsuario getSessaoUsuario() {
    	
    	if (sessaoUsuario == null) {
    	    HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession(false);
            sessaoUsuario = (session == null) ? null : (SessaoUsuario) session.getAttribute(SessaoUsuario.class.getCanonicalName());
    	}
    	
        return sessaoUsuario;
    }
    
    public String getTokenNameField() {
    	return TokenHelper.TOKEN_NAME_FIELD;
    }
    
    public String getTokenName() {
    	return TokenHelper.DEFAULT_TOKEN_NAME;
    }
    
    public String getTokenValue() {
    	if (token == null) {
			token = TokenHelper.setToken();
    	}
        return token;
    }
    
    public void setMessageType(MessageType messageType) {
        this.messageType = messageType;
    }
    
    public MessageType getMessageType() {
        return messageType;
    }
    
    public boolean isMessageInformation() {
        return information == messageType;
    }
    
    public boolean isMessageWarning() {
        return warning == messageType;
    }

	public String getMenuSelecionado() {
		return menuSelecionado;
	}

	public void setMenuSelecionado(String menuSelecionado) {
		this.menuSelecionado = menuSelecionado;
	}
    
}
