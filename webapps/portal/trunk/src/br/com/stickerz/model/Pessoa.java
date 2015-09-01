package br.com.stickerz.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "pessoa", catalog = "stickerz")
public class Pessoa implements Serializable{

	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IdPessoa", unique=true ,nullable = false)
	private int idPessoa;

	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn(name = "IdPessoa")
	private Usuario usuario;
	
	@Column(nullable = false, length = 200 , unique=true)
	private String descEmail;
	
	@Column(nullable = false, length = 150)
	private String descNome;

	@Column(nullable = true, length = 11 , unique=true)
	private String numCpf;
	
	@Temporal(TemporalType.DATE)
	@Column(nullable = true)
	private Date dataNascimento;

	@Column(nullable = true, length = 2 )
	private String descUf;
	
	@Column(nullable = true, length = 100 )
	private String descCidade;
	
	public Pessoa() {

	}

	public int getIdPessoa() {
		return idPessoa;
	}

	public void setIdPessoa(int idPessoa) {
		this.idPessoa = idPessoa;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public String getDescEmail() {
		return descEmail;
	}

	public void setDescEmail(String descEmail) {
		this.descEmail = descEmail;
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

	public String getDescUf() {
		return descUf;
	}

	public void setDescUf(String descUf) {
		this.descUf = descUf;
	}

	public String getDescCidade() {
		return descCidade;
	}

	public void setDescCidade(String descCidade) {
		this.descCidade = descCidade;
	}


	
}
