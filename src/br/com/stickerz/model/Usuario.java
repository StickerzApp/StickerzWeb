package br.com.stickerz.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "usuario", catalog = "stickerz")
public class Usuario implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "IdPessoa", nullable = false)
	private int idPessoa;

	@OneToOne
    @JoinColumn(name = "IdPessoa") 
	private Pessoa pessoa;
	
	@Column(nullable = false, length = 200)
	private String descUsuarioConta;
	
	@Column(nullable = false, length = 64)
	private String descHashSenha;
	
	@Column(nullable = false, length = 32)
	private String descChaveAutenticacao;
	
	@Column(nullable = false)
	private boolean bolAtivo;
	
	@Column(nullable = false)
	private boolean bolTrocaSenha;
	
	@Column(nullable = true, length = 10)
	private String codTrocaSenha;
	
	public Usuario(Pessoa pessoa) {
		if (pessoa == null) {
			throw new IllegalArgumentException("Argumento 'pessoa' está nulo.");
		}
		
		this.pessoa = pessoa;
		this.pessoa.setUsuario(this);
		
		this.idPessoa = pessoa.getIdPessoa();
		
	}
	

	public Usuario() {
		super();
	}



	public int getIdPessoa() {
		return idPessoa;
	}

	public void setIdPessoa(int idPessoa) {
		this.idPessoa = idPessoa;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public String getDescHashSenha() {
		return descHashSenha;
	}

	public void setDescHashSenha(String descHashSenha) {
		this.descHashSenha = descHashSenha;
	}

	public String getDescChaveAutenticacao() {
		return descChaveAutenticacao;
	}

	public void setDescChaveAutenticacao(String descChaveAutenticacao) {
		this.descChaveAutenticacao = descChaveAutenticacao;
	}

	public boolean isBolAtivo() {
		return bolAtivo;
	}

	public void setBolAtivo(boolean bolAtivo) {
		this.bolAtivo = bolAtivo;
	}

	public boolean isBolTrocaSenha() {
		return bolTrocaSenha;
	}

	public void setBolTrocaSenha(boolean bolTrocaSenha) {
		this.bolTrocaSenha = bolTrocaSenha;
	}

	public String getCodTrocaSenha() {
		return codTrocaSenha;
	}

	public void setCodTrocaSenha(String codTrocaSenha) {
		this.codTrocaSenha = codTrocaSenha;
	}

	public String getDescUsuarioConta() {
		return descUsuarioConta;
	}

	public void setDescUsuarioConta(String descUsuarioConta) {
		this.descUsuarioConta = descUsuarioConta;
	}

}
