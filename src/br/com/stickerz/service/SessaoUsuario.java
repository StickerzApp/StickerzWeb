package br.com.stickerz.service;

import java.io.Serializable;

public class SessaoUsuario implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer codigoUsuario;
	private String nomeUsuario;
	private String email;
	private boolean trocaSenha;
	
	
	public Integer getCodigoUsuario() {
		return codigoUsuario;
	}
	
	public void setCodigoUsuario(Integer codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}
	
	public String getNomeUsuario() {
		return nomeUsuario;
	}
	
	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public boolean isTrocaSenha() {
		return trocaSenha;
	}
	
	public void setTrocaSenha(boolean trocaSenha) {
		this.trocaSenha = trocaSenha;
	}
	
	
}
