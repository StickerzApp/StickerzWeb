package br.com.stickerz.service;

import java.io.Serializable;

public class SessaoUsuario implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer idUsuario;
	private String descNome;
	private String descEmail;
	private boolean bolTrocaSenha;
	
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getDescNome() {
		return descNome;
	}
	public void setDescNome(String descNome) {
		this.descNome = descNome;
	}
	public String getDescEmail() {
		return descEmail;
	}
	public void setDescEmail(String descEmail) {
		this.descEmail = descEmail;
	}
	public boolean isBolTrocaSenha() {
		return bolTrocaSenha;
	}
	public void setBolTrocaSenha(boolean bolTrocaSenha) {
		this.bolTrocaSenha = bolTrocaSenha;
	}
	
	
}
