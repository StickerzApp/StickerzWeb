package br.com.stickerz.vo;


public class ParceiroVo {
	
	
	public static final String ATIV_1 = "Outros";
	public static final String ATIV_2 = "Alimentação";
	public static final String ATIV_3= "Educação";
	public static final String ATIV_4 = "Vestuário";
	public static final String ATIV_5 = "Transporte";

	String nomeRazaoSocial;
	String emailContato;
	String telefoneContato;
	String ramoAtividade;
	private String mensagem;
	
	
	public String getNomeRazaoSocial() {
		return nomeRazaoSocial;
	}
	public void setNomeRazaoSocial(String nomeRazaoSocial) {
		this.nomeRazaoSocial = nomeRazaoSocial;
	}
	public String getEmailContato() {
		return emailContato;
	}
	public void setEmailContato(String emailContato) {
		this.emailContato = emailContato;
	}
	public String getTelefoneContato() {
		return telefoneContato;
	}
	public void setTelefoneContato(String telefoneContato) {
		this.telefoneContato = telefoneContato;
	}
	public String getRamoAtividade() {
		return ramoAtividade;
	}
	public void setRamoAtividade(String ramoAtividade) {
		this.ramoAtividade = ramoAtividade;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}
