package br.com.stickerz.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "usuario", catalog = "stickerz")
public class Usuario implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "idUsuario", unique = true, nullable = false)
	private int idUsuario;
	
	@Column(nullable = false, length = 200 , unique=true)
	private String descEmail;
	
	@Column(nullable = false, length = 64)
	private String descHashSenha;
	
	@Column(nullable = false, length = 32)
	private String descChaveAutenticacao;
	
	@Column(nullable = false, length = 150)
	private String descNome;
	
	@Column(nullable = true, length = 11 , unique=true)
	private String numCpf;
	
	@Temporal(TemporalType.DATE)
	@Column(nullable = true)
	private Date dataNascimento;
	
	@Temporal(TemporalType.DATE)
	@Column(nullable = false)
	private Date dataHoraCadastro;
	
	@Column(nullable = false)
	private boolean bolAtivo;
	
	
	public Usuario() {

	}


	public int getIdUsuario() {
		return idUsuario;
	}


	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}


	public String getDescEmail() {
		return descEmail;
	}


	public void setDescEmail(String descEmail) {
		this.descEmail = descEmail;
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


	public String getDescNome() {
		return descNome;
	}


	public void setDescNome(String descNome) {
		this.descNome = descNome;
	}


	public String getNumCpf() {
		return numCpf;
	}


	public void setNumCpf(String numCpf) {
		this.numCpf = numCpf;
	}


	public Date getDataNascimento() {
		return dataNascimento;
	}


	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}


	public Date getDataHoraCadastro() {
		return dataHoraCadastro;
	}


	public void setDataHoraCadastro(Date dataHoraCadastro) {
		this.dataHoraCadastro = dataHoraCadastro;
	}


	public boolean isBolAtivo() {
		return bolAtivo;
	}


	public void setBolAtivo(boolean bolAtivo) {
		this.bolAtivo = bolAtivo;
	}

	
	
	
}
