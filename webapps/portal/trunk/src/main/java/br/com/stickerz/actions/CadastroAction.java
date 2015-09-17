package br.com.stickerz.actions;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ModelDriven;

import br.com.stickerz.service.AcessoService;
import br.com.stickerz.service.CadastroService;
import br.com.stickerz.vo.CadastroVo;
import br.com.stickerz.vo.LoginVo;



public class CadastroAction extends BaseAction implements ModelDriven<CadastroVo> {
	
	private static final long serialVersionUID = 1L;
	private CadastroVo model;
	
	private CadastroService cadastroService;
	private AcessoService acessoService;
	
	@Action(value="cadastro",results={@Result(name=SUCCESS, location="cadastro.jsp")})
	public String cadastro() {
		return SUCCESS;
	}
	
	@Action(value="cadastrar",results={@Result(name=SUCCESS, type="redirectAction", params={"actionName", "abrirPortal"}),
			@Result(name=ERROR, location="cadastro.jsp")
	})
	public String cadastrar() {
		try {
			cadastroService.cadastrarUsuario(getModel());
			acessoService.login(new LoginVo(getModel().getEmail(),getModel().getSenha()));
		} catch (Exception e) {
			addActionError( getText(e.getMessage()) );
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	
	@Override
	public CadastroVo getModel() {
		if(model == null){
			model = new CadastroVo();
		}
		return model;
	}

	public CadastroService getCadastroService() {
		return cadastroService;
	}

	public void setCadastroService(CadastroService cadastroService) {
		this.cadastroService = cadastroService;
	}

	public AcessoService getAcessoService() {
		return acessoService;
	}

	public void setAcessoService(AcessoService acessoService) {
		this.acessoService = acessoService;
	}
}
