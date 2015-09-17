package br.com.stickerz.utils;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.MessageFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.StringTokenizer;

/**
 * The Class UtilDate.
 */
public class UtilDate {

    /** The Constant MILLIS_DIA. */
    private static final long MILLIS_DIA = 86400000L;
    
    /** The Constant DIA. */
    public static final int DIA = 1;
    
    /** The Constant MES. */
    public static final int MES = 2;
    
    /** The Constant ANO. */
    public static final int ANO = 3;
    
    /** The Constant LOCALE. */
    private static final Locale LOCALE = new Locale("pt", "BR");

    /**
     * Gets the sql date como date.
     *
     * @param date the date
     * @return the sql date como date
     */
    public static Date getSqlDateComoDate(java.sql.Date date) {
        if (date != null) {
            return new Date(date.getTime());
        } else {
            return null;
        }
    }

    /**
     * Gets the date como sql date.
     *
     * @param date the date
     * @return the date como sql date
     */
    public static java.sql.Date getDateComoSqlDate(Date date) {
        if (date != null) {
            return new java.sql.Date(date.getTime());
        } else {
            return null;
        }
    }

    /**
     * Gets the date como sql timestamp.
     *
     * @param date the date
     * @return the date como sql timestamp
     */
    public static java.sql.Timestamp getDateComoSqlTimestamp(Date date) {
        if (date != null) {
            return new java.sql.Timestamp(date.getTime());
        } else {
            return null;
        }
    }
    
    
    public static Date zerarHoraData(Date data){
    	Calendar cal = Calendar.getInstance();  
    	cal.setTime(data);  
    	  
    	cal.set(Calendar.HOUR_OF_DAY, 0);  
    	cal.set(Calendar.MINUTE, 0);  
    	cal.set(Calendar.SECOND, 0);  
    	cal.set(Calendar.MILLISECOND, 0);  
    	  
    	return cal.getTime();  
    	
    }

    /**
     * Gets the date como sql time.
     *
     * @param date the date
     * @return the date como sql time
     */
    public static java.sql.Time getDateComoSqlTime(Date date) {
        if (date != null) {
            return new java.sql.Time(date.getTime());
        } else {
            return null;
        }
    }

    /**
     * Gets the data como string.
     *
     * @param data the data
     * @return the data como string
     */
    public static String getDataComoString(Date data) {
        return getDataComoString(data, "dd/MM/yyyy");
    }

    /**
     * Gets the hora como string.
     *
     * @param data the data
     * @return the hora como string
     */
    public static String getHoraComoString(Date data) {
        return getDataComoString(data, "HH:mm");
    }

    /**
     * Gets the data hora como string.
     *
     * @param data the data
     * @return the data hora como string
     */
    public static String getDataHoraComoString(Date data) {
        return getDataComoString(data, "dd/MM/yyyy hh:mm:ss");
    }

    /**
     * Gets the hora completa como string.
     *
     * @param data the data
     * @return the hora completa como string
     */
    public static String getHoraCompletaComoString(Date data) {
        return UtilDate.getDataComoString(data, "HH:mm:ss");
    }
    
    /**
     * Gets the data invertida como string.
     *
     * @param date the date
     * @return the data invertida como string
     */
    public static String getDataInvertidaComoString(Date date) {
        return getDataComoString(date, "yyyy-MM-dd");
    }

    /**
     * Gets the data como string.
     *
     * @param data the data
     * @param formatoDaData the formato da data
     * @return the data como string
     */
    public static String getDataComoString(Date data, String formatoDaData) {
        if (data == null) {
            return "";
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat(formatoDaData, LOCALE);
        return dateFormat.format(data);
    }

    /**
     * Gets the data.
     *
     * @param dataString the data string
     * @param formatoDaData the formato da data
     * @return the data
     * @throws ParseException the parse exception
     */
    public static Date getData(String dataString, String formatoDaData) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat(formatoDaData);
        dateFormat.setLenient(false);
        return dateFormat.parse(dataString);
    }
    
    
//    public static Date getHora(String horaString, String formatoDaData) throws ParseException {
//        SimpleDateFormat dateFormat = new SimpleDateFormat(formatoDaData);
//        dateFormat.setLenient(false);
//        return dateFormat.parse(horaString);
//    }
    
    

    /**
     * Gets the data.
     *
     * @param dataString the data string
     * @return the data
     * @throws ParseException the parse exception
     */
    public static Date getData(String dataString) throws ParseException {
        return getData(dataString, "dd/MM/yyyy");
    }

    /**
     * Gets the data hora.
     *
     * @param dataHoraString the data hora string
     * @return the data hora
     * @throws ParseException the parse exception
     */
    public static Date getDataHora(String dataHoraString) throws ParseException {
        return getData(dataHoraString, "dd/MM/yyyy HH:mm:ss");
    }

    /**
     * Nova data.
     *
     * @param ano the ano
     * @param mes the mes
     * @param dia the dia
     * @param hora the hora
     * @param minuto the minuto
     * @param segundo the segundo
     * @return the date
     */
    public static Date novaData(int ano, int mes, int dia, int hora, int minuto, int segundo) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(ano, mes, dia, hora, minuto, segundo);
        return calendar.getTime();
    }

    /**
     * Nova data.
     *
     * @param ano the ano
     * @param mes (0=janeiro -> 11=dezembro)
     * @param dia the dia
     * @return the date
     */
    public static Date novaData(int ano, int mes, int dia) {
        return novaData(ano, mes, dia, 0, 0, 0);
    }

    /**
     * Gets the hora zero.
     *
     * @param date the date
     * @return the hora zero
     */
    public static Date getHoraZero(Date date) {
        Calendar calendario = Calendar.getInstance();
        calendario.setTime(date);
        int residuoDeMilisegundos = calendario.get(Calendar.MILLISECOND);
        int residuoDeSegundos = calendario.get(Calendar.SECOND) * 1000;
        int residuoDeMinutos = calendario.get(Calendar.MINUTE) * 60000;
        int residuoDeHoras = calendario.get(Calendar.HOUR_OF_DAY) * 3600000;
        int residuoTotal = residuoDeMilisegundos
                + residuoDeSegundos
                + residuoDeMinutos
                + residuoDeHoras;
        long longDate = calendario.getTimeInMillis() - residuoTotal;
        return new Date(longDate);
    }

    /**
     * Millis to dias.
     *
     * @param millis the millis
     * @return the int
     */
    public static int millisToDias(long millis) {
        return (int) (millis / MILLIS_DIA);
    }

    /**
     * Dias to millis.
     *
     * @param quantidadeDeDias the quantidade de dias
     * @return the long
     */
    public static long diasToMillis(int quantidadeDeDias) {
        return quantidadeDeDias * MILLIS_DIA;
    }

    /**
     * Horas to millis.
     *
     * @param quantidadeDeHoras the quantidade de horas
     * @return the long
     */
    public static long horasToMillis(int quantidadeDeHoras) {
        return quantidadeDeHoras * MILLIS_DIA;
    }

    /**
     * Minutos to millis.
     *
     * @param quantidadeDeMinutos the quantidade de minutos
     * @return the long
     */
    public static long minutosToMillis(int quantidadeDeMinutos) {
        return quantidadeDeMinutos * 60000L;
    }

    /**
     * Segundos to millis.
     *
     * @param quantidadeDeSegundos the quantidade de segundos
     * @return the long
     */
    public static long segundosToMillis(int quantidadeDeSegundos) {
        return quantidadeDeSegundos * 1000;
    }

    /**
     * Soma horas.
     *
     * @param data the data
     * @param quantidadeDeHoras the quantidade de horas
     * @return the date
     */
    public static Date somaHoras(Date data, int quantidadeDeHoras) {
        return somaCampo(Calendar.HOUR_OF_DAY, data, quantidadeDeHoras);
    }

    /**
     * Soma minutos.
     *
     * @param data the data
     * @param quantidadeDeMinutos the quantidade de minutos
     * @return the date
     */
    public static Date somaMinutos(Date data, int quantidadeDeMinutos) {
        return somaCampo(Calendar.MINUTE, data, quantidadeDeMinutos);
    }

    /**
     * Soma milisegundos.
     *
     * @param data the data
     * @param quantidadeDeMilisegundos the quantidade de milisegundos
     * @return the date
     */
    public static Date somaMilisegundos(Date data, int quantidadeDeMilisegundos) {
        return somaCampo(Calendar.MILLISECOND, data, quantidadeDeMilisegundos);
    }

    /**
     * Soma segundos.
     *
     * @param data the data
     * @param quantidadeDeSegundos the quantidade de segundos
     * @return the date
     */
    public static Date somaSegundos(Date data, int quantidadeDeSegundos) {
        return somaCampo(Calendar.SECOND, data, quantidadeDeSegundos);
    }

    /**
     * Soma dias.
     *
     * @param data the data
     * @param quantidadeDeDias the quantidade de dias
     * @return the date
     */
    public static Date somaDias(Date data, int quantidadeDeDias) {
        return somaCampo(Calendar.DAY_OF_MONTH, data, quantidadeDeDias);
    }
    
    public static String somaDiasString(Date data, int quantidadeDeDias) {
    	
        return getDataComoString(somaCampo(Calendar.DAY_OF_MONTH, data, quantidadeDeDias),"dd/MM/yyyy");
    }

    /**
     * Soma meses.
     *
     * @param data the data
     * @param numeroDeMeses the numero de meses
     * @return the date
     */
    public static Date somaMeses(Date data, int numeroDeMeses) {
        return somaCampo(Calendar.MONTH, data, numeroDeMeses);
    }

    /**
     * Soma anos.
     *
     * @param data the data
     * @param numeroDeAnos the numero de anos
     * @return the date
     */
    public static Date somaAnos(Date data, int numeroDeAnos) {
        return somaCampo(Calendar.YEAR, data, numeroDeAnos);
    }

    /**
     * Soma campo.
     *
     * @param campo the campo
     * @param data the data
     * @param quantidade the quantidade
     * @return the date
     */
    public static Date somaCampo(int campo, Date data, int quantidade) {
        Calendar calendar = getCalendarDaData(data);
        calendar.add(campo, quantidade);
        return calendar.getTime();
    }

    /**
     * Diferenca em anos.
     *
     * @param dataA the data a
     * @param dataB the data b
     * @return the int
     */
    public static int diferencaEmAnos(Date dataA, Date dataB) {
        return (UtilDate.getAno(dataA) - UtilDate.getAno(dataB));
    }

    /**
     * Diferenca em meses.
     *
     * @param dataA the data a
     * @param dataB the data b
     * @return the int
     */
    public static int diferencaEmMeses(Date dataA, Date dataB) {
        int anoA = UtilDate.getAno(dataA);
        int anoB = UtilDate.getAno(dataB);
        int mesA = UtilDate.getMes(dataA);
        int mesB = UtilDate.getMes(dataB);
        if (dataA.before(dataB)) {
            return ((anoB - anoA) * 12 + (mesB - mesA)) * -1;
        } else {
            return (anoA - anoB) * 12 + (mesA - mesB);
        }
    }

    /**
     * Diferenca em dias.
     *
     * @param dataA the data a
     * @param dataB the data b
     * @return the int
     */
    public static int diferencaEmDias(Date dataA, Date dataB) {
        int diferencaTemporaria = 0;
        int diferencaEmDias = 0;
        Calendar menorData = Calendar.getInstance();
        Calendar maiorData = Calendar.getInstance();
        if (dataA.compareTo(dataB) < 0) {
            menorData.setTime(dataA);
            maiorData.setTime(dataB);
        } else {
            menorData.setTime(dataB);
            maiorData.setTime(dataA);
        }
        while (menorData.get(Calendar.YEAR) != maiorData.get(Calendar.YEAR)) {
            diferencaTemporaria = 365 * (maiorData.get(Calendar.YEAR) - menorData.get(Calendar.YEAR));
            diferencaEmDias += diferencaTemporaria;
            menorData.add(Calendar.DAY_OF_YEAR, diferencaTemporaria);
        }
        if (menorData.get(Calendar.DAY_OF_YEAR) != maiorData.get(Calendar.DAY_OF_YEAR)) {
            diferencaTemporaria = maiorData.get(Calendar.DAY_OF_YEAR)
                    - menorData.get(Calendar.DAY_OF_YEAR);
            diferencaEmDias += diferencaTemporaria;
            menorData.add(Calendar.DAY_OF_YEAR, diferencaTemporaria);
        }
        return diferencaEmDias;
    }

    /**
     * Gets the primeiro do mes atual.
     *
     * @return the primeiro do mes atual
     */
    public static Date getPrimeiroDoMesAtual() {
        return getCalendarPrimeiroDoMesAtual().getTime();
    }

    /**
     * Gets the calendar primeiro do mes atual.
     *
     * @return the calendar primeiro do mes atual
     */
    public static Calendar getCalendarPrimeiroDoMesAtual() {
        Calendar calendar = getCalendarDeHoje();
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        return zeraCalendar(calendar);
    }

    /**
     * Gets the calendar de hoje.
     *
     * @return the calendar de hoje
     */
    public static Calendar getCalendarDeHoje() {
        return getCalendarDaData(new Date());
    }

    /**
     * Gets the calendar de hoje hora zero.
     *
     * @return the calendar de hoje hora zero
     */
    public static Calendar getCalendarDeHojeHoraZero() {
        Calendar calendar = getCalendarDeHoje();
        return zeraCalendar(calendar);
    }

    /**
     * Zera calendar.
     *
     * @param calendar the calendar
     * @return the calendar
     */
    public static Calendar zeraCalendar(Calendar calendar) {
        calendar.set(Calendar.MILLISECOND, 0);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        return calendar;
    }

    /**
     * Gets the calendar da data.
     *
     * @param data the data
     * @return the calendar da data
     */
    public static Calendar getCalendarDaData(Date data) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(data);
        return calendar;
    }

    /**
     * Subtrai dias.
     *
     * @param date the date
     * @param quantidadeDeDias the quantidade de dias
     * @return the date
     */
    public static Date subtraiDias(Date date, int quantidadeDeDias) {
        return somaDias(date, -quantidadeDeDias);
    }

    /**
     * Gets the ultimo dia do mes.
     *
     * @param data the data
     * @return the ultimo dia do mes
     */
    public static int getUltimoDiaDoMes(Date data) {
        Calendar calendar = getCalendarDaData(data);
        return calendar.getActualMaximum(Calendar.DATE);
    }

    /**
     * Gets the ano.
     *
     * @param data the data
     * @return -1 caso o parametro data esteja nulo
     */
    public static int getAno(Date data) {
        if (data == null) {
            return -1;
        }
        
        String ano = getDataComoString(data, "yyyy");
        return Integer.parseInt(ano);
    }
    
    
    /**
     * Gets the ano atual.
     *
     * @return the ano atual
     */
    public static int getMesAtual() {
    	return getMes(getDataAtual());
    }
    /**
     * Gets the ano atual.
     *
     * @return the ano atual
     */
    public static int getAnoAtual() {
    	return getAno(getDataAtual());
    }

    /**
     * Gets the mes.
     *
     * @param data the data
     * @return the mes
     */
    public static int getMes(Date data) {
        String mes = getDataComoString(data, "MM");
        return Integer.parseInt(mes);
    }

    /**
     * Gets the dia.
     *
     * @param data the data
     * @return the dia
     */
    public static int getDia(Date data) {
        String dia = getDataComoString(data, "dd");
        return Integer.parseInt(dia);
    }

    /**
     * Gets the horas.
     *
     * @param data the data
     * @return the horas
     */
    public static int getHoras(Date data) {
        String dia = getDataComoString(data, "HH");
        return Integer.parseInt(dia);
    }

    /**
     * Gets the minutos.
     *
     * @param data the data
     * @return the minutos
     */
    public static int getMinutos(Date data) {
        String dia = getDataComoString(data, "mm");
        return Integer.parseInt(dia);
    }

    /**
     * Gets the segundos.
     *
     * @param data the data
     * @return the segundos
     */
    public static int getSegundos(Date data) {
        String dia = getDataComoString(data, "ss");
        return Integer.parseInt(dia);
    }

    /**
     * Gets the dia da semana.
     *
     * @param data the data
     * @return 1 = domingo, 7 = sábado
     */
    public static int getDiaDaSemana(Date data) {
        return getCalendarDaData(data).get(Calendar.DAY_OF_WEEK);
    }

    /**
     * Checks if is mesmo dia.
     *
     * @param dataA the data a
     * @param dataB the data b
     * @return true, if is mesmo dia
     */
    public static boolean isMesmoDia(Date dataA, Date dataB) {
        if (dataA != null && dataB != null) {
            Calendar a = Calendar.getInstance();
            a.setTime(dataA);
            Calendar b = Calendar.getInstance();
            b.setTime(dataB);
            return (a.get(Calendar.YEAR) == b.get(Calendar.YEAR)
                    && a.get(Calendar.MONTH) == b.get(Calendar.MONTH) && a.get(Calendar.DATE) == b.get(Calendar.DATE));
        } else {
            return false;
        }
    }

    /**
     * Checks if is data na faixa.
     *
     * @param data Data a testar
     * @param dataInicial limite inicial
     * @param dataFinal limite final
     * 
     * uma data de limite nula significa infinito, sem limite
     * @return true, if is data na faixa
     */
    public static boolean isDataNaFaixa(Date data, Date dataInicial, Date dataFinal) {
        return (dataInicial == null || data.compareTo(dataInicial) >= 0)
                && (dataFinal == null || data.compareTo(dataFinal) <= 0);
    }

    /**
     * Checks if is data valida.
     *
     * @param data the data
     * @return true, if is data valida
     */
    public static boolean isDataValida(String data) {
        return isDataValida(data, "dd/MM/yyyy");
    }

    /**
     * Checks if is data valida.
     *
     * @param data the data
     * @param formatoDaData the formato da data
     * @return true, if is data valida
     */
    public static boolean isDataValida(String data, String formatoDaData) {
        try {
            StringTokenizer tokenizer = new StringTokenizer(data, "/");
            int ano, mes, dia;
            dia = Integer.parseInt(tokenizer.nextToken());
            mes = Integer.parseInt(tokenizer.nextToken());
            ano = Integer.parseInt(tokenizer.nextToken());
            Calendar calendario = new GregorianCalendar();
            SimpleDateFormat formatador = new SimpleDateFormat(formatoDaData);
            java.util.Date resposta = formatador.parse(data);
            calendario.setTime(resposta);
            return (ano == calendario.get(Calendar.YEAR)
                    && mes == calendario.get(Calendar.MONTH) + 1 && dia == calendario.get(Calendar.DATE));
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * Sets the dia da data.
     *
     * @param data the data
     * @param dia the dia
     * @return the date
     */
    public static Date setDiaDaData(Date data, int dia) {
        Calendar calendar = getCalendarDaData(data);
        try {
            calendar.set(Calendar.DAY_OF_MONTH, dia);
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        }
        return calendar.getTime();
    }

    /**
     * Sets the mes da data.
     *
     * @param data the data
     * @param mes the mes
     * @return the date
     */
    public static Date setMesDaData(Date data, int mes) {
        Calendar calendar = getCalendarDaData(data);
        calendar.set(Calendar.MONTH, mes - 1);
        return calendar.getTime();
    }

    /**
     * Sets the ano da data.
     *
     * @param data the data
     * @param ano the ano
     * @return the date
     */
    public static Date setAnoDaData(Date data, int ano) {
        Calendar calendar = getCalendarDaData(data);
        try {
            calendar.set(Calendar.YEAR, ano);
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        }
        return calendar.getTime();
    }

    /**
     * Gets the data atual.
     *
     * @return the data atual
     */
    public static Date getDataAtual() {
        return new Date();
    }

    /**
     * Retorna a data para o formato de documentos <br>
     * EX.: 05 de Outubro de 2004
     *
     * @param data the data
     * @return dd de MMMMM de yyyy
     */
    public static String getDataPorExtenso(Date data) {
        String o[] = { "de", "de" };
        MessageFormat msg = new MessageFormat(getDataComoString(data, "dd {0} MMMMM {1} yyyy"));
        return msg.format(o);
    }

    /**
     * Gets the data no ultimo dia do mes.
     *
     * @param data the data
     * @return the data no ultimo dia do mes
     */
    public static Date getDataNoUltimoDiaDoMes(Date data) {
        Calendar calendario = Calendar.getInstance();
        calendario.setTime(data);
        calendario.set(Calendar.DAY_OF_MONTH, calendario.getActualMaximum(Calendar.DAY_OF_MONTH));
        return calendario.getTime();
    }

    /**
     * Gets the mes literal.
     *
     * @param mes the mes
     * @return the mes literal
     * @throws ParseException 
     */
    public static String getMesLiteral(int mes) throws ParseException {
        Date data = setMesDaData(getData("01/01/1970"), mes);
        return getDataComoString(data, "MMMMM");
    }

    /**
     * Gets the date como time.
     *
     * @param value the value
     * @return the date como time
     */
    public static Time getDateComoTime(Date value) {
        Time time = null;
        if (value != null) {
            time = new Time(value.getTime());
        }
        return time;
    }

    /**
     * Gets the dia maximo do mes.
     *
     * @param data the data
     * @return the dia maximo do mes
     */
    public static int getDiaMaximoDoMes(Date data) {
        Calendar calendar = getCalendarDaData(data);
        return calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    }

    /**
     * Checks if is hora redunda.
     *
     * @param data the data
     * @return true, if is hora redunda
     */
    public static boolean isHoraRedunda(Date data) {
        return getMinutos(data) == 0;
    }

    /**
     * Diferenca em minutos.
     *
     * @param fim the fim
     * @param inicio the inicio
     * @return the long
     */
    public static long diferencaEmMinutos(Date fim, Date inicio) {
        return (fim.getTime() - inicio.getTime()) / 60000;
    } 

    /**
     * Diferenca em horas.
     *
     * @param fim the fim
     * @param inicio the inicio
     * @return the long
     */
    public static long diferencaEmHoras(Date fim, Date inicio) {
        return (fim.getTime() - inicio.getTime()) / 3600000;
    } 

    /**
     * Gets the data primeiro dia mes depois.
     *
     * @param dataSelecionada the data selecionada
     * @return the data primeiro dia mes depois
     */
    public static Date getDataPrimeiroDiaMesDepois(Date dataSelecionada) {
        return somaDias(getDataNoUltimoDiaDoMes(dataSelecionada), 1);
    }

    /**
     * Gets the date com hora final.
     *
     * @param date the date
     * @return the date com hora final
     */
    public static Date getDateComHoraFinal(Date date) {
        return novaData(getAno(date), getMes(date) - 1, getDia(date), 23, 59, 59);
    }

    /**
     * Compara datas desprezando a hora.
     *
     * @param data1 the data1
     * @param data2 the data2
     * @return VALOR booleano indicando se os dias informados são o mesmo
     */
    public static boolean equalsDia(Date data1, Date data2) {
        return diferencaEmDias(data1, data2) == 0;
    }

    /**
     * Junta time.
     *
     * @param data the data
     * @param horas the horas
     * @return the date
     */
    public static Date juntaTime(Date data, Date horas) {
        Calendar calendar = getCalendarDaData(data);
        calendar.set(Calendar.HOUR_OF_DAY, UtilDate.getHoras(horas));
        calendar.set(Calendar.MINUTE, UtilDate.getMinutos(horas));
        calendar.set(Calendar.SECOND, UtilDate.getSegundos(horas));
        return calendar.getTime();
    }

    /**
     * Gets the dia da semana literal.
     *
     * @param data the data
     * @return the dia da semana literal
     */
    public static String getDiaDaSemanaLiteral(Date data) {
        return getDataComoString(data, "EEEEEEEEEEEEE");
    }
    
	/**
	 * Gets the data atual se nula.
	 *
	 * @param data the data
	 * @return the data atual se nula
	 */
	public static Date getDataAtualSeNula(Date data){
	    Date resposta = data;
	    if (data == null) {
            resposta = getDataAtual();
        }
	    return resposta;
	}
	
	/**
	 * Gets the date do timestamp.
	 *
	 * @param timestamp the timestamp
	 * @return the date do timestamp
	 */
	public static Date getDateDoTimestamp(Timestamp timestamp){
	    Date resposta = null;
	    if(timestamp != null){
	        resposta = new Date(timestamp.getTime());    
	    }
	    return resposta;
	}
	
	// TODO brunno.mello: Comentado para retirar ERRO após o rebase!
//	public static int getHoraMinutosSegundosEmSegundos(Date data) {
//		int numeroDeSegundos = getHoraMinutosSegundosEmSegundos(data)*3600;
//		numeroDeSegundos+=getMinutos(data)*60;
//		numeroDeSegundos+=getSegundos(data);
//		return numeroDeSegundos;
//	}
	
	
	/**
	 * Gets the hora minutos segundos em segundos.
	 *
	 * @param data the data
	 * @return the hora minutos segundos em segundos
	 */
	public static int getHoraMinutosSegundosEmSegundos(Date data) {
		int numeroDeSegundos = getHoras(data)*3600;
		numeroDeSegundos+=getMinutos(data)*60;
		numeroDeSegundos+=getSegundos(data);
		return numeroDeSegundos;
	}
	
	/**
	 * Gets the idade em anos.
	 *
	 * @param dataDeNascimento the data de nascimento
	 * @return the idade em anos
	 */
	public static int getIdadeEmAnos(Date dataDeNascimento) {
        return getIdadeEmAnos(dataDeNascimento,getDataAtual());
	}

	/**
	 * Gets the idade em anos.
	 *
	 * @param dataDeNascimento the data de nascimento
	 * @param dataDeReferencia the data de referencia
	 * @return the idade em anos
	 */
	public static int getIdadeEmAnos(Date dataDeNascimento, Date dataDeReferencia) {
        int diferencaEmAnos = getAno(dataDeReferencia) - getAno(dataDeNascimento);
        int diferencaEmMeses = getMes(dataDeReferencia) - getMes(dataDeNascimento);
        int diferencaEmDias = getDia(dataDeReferencia) - getDia(dataDeNascimento);
        if (diferencaEmAnos <= 0) {
            return 0;
        } else if (diferencaEmMeses < 0 || (diferencaEmMeses == 0 && diferencaEmDias < 0)) {
            return diferencaEmAnos - 1;
        }
        return diferencaEmAnos;      
	}
  
	/**
	 * Checks if is data nula ou vazia.
	 *
	 * @param data the data
	 * @return true, if is data nula ou vazia
	 */
	public static boolean isDataNulaOuVazia(Date data) {
		return data == null || data.toString().trim().equals("");
	}
	
	
    /**
     * Gets the data hora24.
     *
     * @param dataHoraString the data hora string
     * @return the data hora24
     * @throws ParseException the parse exception
     */
    public static Date getDataHora24(String dataHoraString) throws ParseException {
        return getData(dataHoraString, "dd/MM/yyyy HH:mm:ss");
    }

    ///////agendamento///////
	/**
     * Gets the hora.
     *
     * @param data the data
     * @return the hora
     */
    public static Time getHora(Date data) {
		DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
		String hora = getHoraComoString(data) + ":00";
		try {
			return new java.sql.Time(dateFormat.parse(hora).getTime());
		} catch (ParseException e) {
			return null;
		}
	}

    /**
     * Subtrai campo.
     *
     * @param campo the campo
     * @param data the data
     * @param quantidade the quantidade
     * @return the date
     */
    public static Date subtraiCampo(int campo, Date data, int quantidade) {
        Calendar calendar = getCalendarDaData(data);
        quantidade = quantidade*(-1);
        calendar.add(campo, quantidade);
        return calendar.getTime();
    }

    /**
     * Subtrai minutos.
     *
     * @param data the data
     * @param quantidadeDeMinutos the quantidade de minutos
     * @return the date
     */
    public static Date subtraiMinutos(Date data, int quantidadeDeMinutos) {
        return subtraiCampo(Calendar.MINUTE, data, quantidadeDeMinutos);
    }
    
    /**
     * Incrementa dia.
     *
     * @param data the data
     * @return the date
     */
    public static Date incrementaDia(Date data) {
    	Calendar calendario = getCalendarDaData(data);
    	int dia = calendario.get(Calendar.DAY_OF_MONTH);
    	calendario.set(Calendar.DAY_OF_MONTH,dia+1);
    	return calendario.getTime();
    }
    
	/** The meses ano. */
	public static String[] mesesAno = new String[]{"Janeiro","Fevereiro",
		"Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    
    /**
     * Gets the mes por extenso.
     *
     * @param numeroMes the numero mes
     * @return the mes por extenso
     */
    public static String getMesPorExtenso(Integer numeroMes){
    	return mesesAno[numeroMes-1];
    }
    
    /**
     * Gets the data por extenso.
     *
     * @param horas the horas
     * @return yyyy ano(s) mm mês(es) dd dia(s)
     */
    public static String getDataPorExtenso(long horas) {
        String ret = "";
        long dias = horas/24;
        int dia, mes, ano;
        if((ano = (int) (dias / 365)) != 0) {
            ret += ano + " ano(s) ";
            dias -= ano * 365;
        }
        
        mes = (int) dias;
        
        if(( mes / 30) != 0) {
            ret += mes + " mês(es) ";
            dias -= mes*30;
        }

        dia = (int) dias;
        if((dia) > 0) {
            ret += dia + " dia(s) ";
        }
        return ret;
    }
    
	/**
	 * Obter intervalo dias.
	 *
	 * @param d1 the d1
	 * @param d2 the d2
	 * @return the int
	 */
	public static int obterIntervaloDias(Date d1, Date d2) {
		int result = (int) ((d1.getTime() - d2.getTime()) / (24 * 60 * 60 * 1000));
		return result < 0 ? result * -1 : result;
	}

	/**
	 * Obter intervalo dias com sinal.
	 *
	 * @param d1 the d1
	 * @param d2 the d2
	 * @return the int
	 */
	public static int obterIntervaloDiasComSinal(Date d1, Date d2) {
		int result = (int) ((d1.getTime() - d2.getTime()) / (24 * 60 * 60 * 1000));
		return result;
	}

}
