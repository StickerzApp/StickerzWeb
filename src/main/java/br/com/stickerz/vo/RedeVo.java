package br.com.stickerz.vo;


public class RedeVo {

	String codigoRede;
	String nomeRede;
	Double valorTicketMedio;
	boolean bolAtivo;
	String pathImagemRede;
	public String getCodigoRede() {
		return codigoRede;
	}
	public void setCodigoRede(String codigoRede) {
		this.codigoRede = codigoRede;
	}
	public String getNomeRede() {
		return nomeRede;
	}
	public void setNomeRede(String nomeRede) {
		this.nomeRede = nomeRede;
	}
	public Double getValorTicketMedio() {
		return valorTicketMedio;
	}
	public void setValorTicketMedio(Double valorTicketMedio) {
		this.valorTicketMedio = valorTicketMedio;
	}
	public boolean isBolAtivo() {
		return bolAtivo;
	}
	public void setBolAtivo(boolean bolAtivo) {
		this.bolAtivo = bolAtivo;
	}
	public String getPathImagemRede() {
		return pathImagemRede;
	}
	public void setPathImagemRede(String pathImagemRede) {
		this.pathImagemRede = pathImagemRede;
	}
	
}
