package br.com.stickerz.vo;


public class LoginVo {

	String email;
	String senha;
	
	
	public LoginVo(String email, String senha) {
		super();
		this.email = email;
		this.senha = senha;
	}
	
	
	
	public LoginVo() {
		super();
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}

	
}