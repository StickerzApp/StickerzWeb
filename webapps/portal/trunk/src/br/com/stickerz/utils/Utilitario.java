package br.com.stickerz.utils;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.bind.Element;

@SuppressWarnings({ "rawtypes" })
public class Utilitario {


	public static boolean isVazio(String valor) {

		if (valor == null || (valor.trim()).length() == 0)
			return true;
		else
			return false;

	}

	public static boolean isVazio(Object[] obj) {

		if (obj == null || obj.length == 0) {
			return true;
		}

		return false;

	}	

	public static boolean isVazio(Object obj) {

		if (obj == null) {
			return true;
		}

		return false;

	}

	public static boolean isVazio(StringBuffer stringBuffer){
		if (stringBuffer == null) {
			return true;
		}
		if(stringBuffer.length() == 0){
			return true;
		}
		return false;
	}

	public static boolean isVazio(char valor) {

		Character character = new Character(valor);

		return isVazio(character.toString());

	}

	public static boolean isVazio(Collection<?> lista) {
		if (lista == null || lista.isEmpty()) {
			return true;
		}

		return false;
	}

	public static boolean isVazio(Map<?,?> mapa) {
		if (mapa == null || mapa.isEmpty()) {
			return true;
		}

		return false;
	}

	public static boolean isVazio(HttpServletRequest requisicao, String campo) {

		if (requisicao.getParameter(campo) instanceof String) {
			return (isVazio(requisicao.getParameter(campo)));

		} else if (requisicao.getAttribute(campo) instanceof String) {
			return (isVazio((String) requisicao.getAttribute(campo)));

		} else if (requisicao.getAttribute(campo) instanceof Collection) {
			Collection auxiliar = (Collection) requisicao.getAttribute(campo);

			if (auxiliar.isEmpty())
				return true;
			else
				return false;

		} else if (requisicao.getAttribute(campo) instanceof Hashtable) {
			Hashtable auxiliar = (Hashtable) requisicao.getAttribute(campo);

			if (auxiliar.isEmpty())
				return true;
			else
				return false;

		} else if (requisicao.getAttribute(campo) instanceof Element) {
			Element elemento = (Element) requisicao.getAttribute(campo);

			return (isVazio(elemento.toString()));

		} else {
			return true;

		}

	}

	public static boolean isVazio(HttpSession sessao, String campo) {

		if (sessao.getAttribute(campo) instanceof String) {
			return (isVazio((String) sessao.getAttribute(campo)));

		} else if (sessao.getAttribute(campo) instanceof Collection) {
			Collection auxiliar = (Collection) sessao.getAttribute(campo);

			if (auxiliar.isEmpty())
				return true;
			else
				return false;

		} else if (sessao.getAttribute(campo) instanceof Hashtable) {
			Hashtable auxiliar = (Hashtable) sessao.getAttribute(campo);

			if (auxiliar.isEmpty())
				return true;
			else
				return false;

		} else if (sessao.getAttribute(campo) instanceof Element) {
			Element elemento = (Element) sessao.getAttribute(campo);

			return (isVazio(elemento.toString()));

		} else {
			return true;

		}

	}

	public static boolean isVazio(Date date) {

		if (date == null || (date.toString().trim()).length() == 0)
			return true;
		else
			return false;

	}

	public static boolean isVazio(Double valor) {

		if (valor == null || (valor.toString().trim()).length() == 0)
			return true;
		else
			return false;

	}

	public static boolean isVazio(Integer valor) {

		if (valor == null || (valor.toString().trim()).length() == 0)
			return true;
		else
			return false;

	}

	public static boolean isVazio(Long valor) {

		if (valor == null || (valor.toString().trim()).length() == 0)
			return true;
		else
			return false;
	}

	public static boolean validarEmail(String parametro) {

		boolean retorno = true;

		if (isVazio(parametro)) {
			retorno = false;

		} else if (parametro.indexOf("@") <= 0) {
			retorno = false;

		} else if (parametro.substring(0, parametro.indexOf("@")).length() <= 0) {
			retorno = false;

		} else if (parametro.substring(parametro.indexOf("@") + 1).length() <= 0) {
			retorno = false;

		} else if (parametro.substring(parametro.indexOf("@") + 1).indexOf("@") > 0) {
			retorno = false;

		} else if ((parametro.substring(parametro.indexOf("@") + 1))
				.indexOf(".") <= 0) {
			retorno = false;

		} else if (parametro.substring(parametro.indexOf(".") + 1).length() <= 0) {
			retorno = false;

		} else if (parametro.substring(parametro.indexOf(".") + 1).length() > 0) {
			String auxiliar = parametro.substring(parametro.indexOf(".") + 1);

			if (auxiliar.length() > 1
					&& auxiliar.substring(auxiliar.indexOf(".") + 1).length() <= 0) {
				retorno = false;

			} else {
				while (auxiliar.length() > 1
						&& auxiliar.substring(auxiliar.indexOf(".") + 1)
						.length() > 0) {

					if (auxiliar.indexOf(".") > 0)
						auxiliar = auxiliar
						.substring(auxiliar.indexOf(".") + 1);
					else
						break;

				}

				if (auxiliar.indexOf(".") > 0)
					retorno = false;
				else
					retorno = true;

			}

		}

		return retorno;

	}

	public static Date formatarData(String data) throws ParseException{
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		return df.parse(data);
	}

	public static String formatarDataHora(Date data){
		try{
			SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm");
			return df.format(data);
		}catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	public static Date formatarHora(String horaString){
		SimpleDateFormat formatador = new SimpleDateFormat("HH:mm");  
		Date data = null;
		try {
			data = formatador.parse(horaString);
		} catch (ParseException e) {
			e.printStackTrace();
		}  
		return data;
	}

	public static String limpaTelefone(String telefone){
		return telefone.replaceAll("[-()]", "");
	}
	
	public static String limpaCPF(String cpf){
		return cpf.replaceAll("[-.]","");
	}
	
	public static int converteMinutos(String hora){
        String[] horaMinuto = hora.split(":");
	    
  		int minutos = new Integer(horaMinuto[0]).intValue() * 60;
  		minutos += new Integer(horaMinuto[1]).intValue();
  		return minutos;
	}
	
	public static String converteHoras(int minutos){
		int inteira = minutos / 60;
		int resto = minutos % 60;
		return  inteira + ":" + resto;
	}
	public static String gerarSenha(int tamanho){
		String[] carct ={"0","1","2","3","4","5","7","8","9","A","B","C","D","E","F","G","H","I","J","K","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}; 
		String senha=""; 
		for (int x=0; x<tamanho; x++){ 
			int j = (int) (Math.random()*carct.length); 
			senha += carct[j];
		}
		return senha;
	}

	public static Double converteMoeda(String valorItem) {
		return Double.valueOf(valorItem.replaceAll("[R$]", "").replaceAll(",", "."));
	}



}
