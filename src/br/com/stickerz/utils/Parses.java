package br.com.stickerz.utils;

import java.text.DateFormatSymbols;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import org.apache.log4j.Logger;

public final class Parses {

    private Parses() {

    }

    private static final Logger LOGGER = Logger.getLogger(Parses.class);

    public static final Locale BRAZIL = new Locale("pt", "BR");

    public static DecimalFormat newDecimalFormat() {
        return new DecimalFormat(",##0.00", new DecimalFormatSymbols(BRAZIL));
    }

    public static SimpleDateFormat newSimpleDateFormatDate() {
        return new SimpleDateFormat("dd/MM/yyyy", new DateFormatSymbols(BRAZIL));
    }
    
    public static double toDouble(String str, double defaultValue) {
        if (str == null) {
            return defaultValue;
        }
        try {
            return newDecimalFormat().parse(str).doubleValue();
        } catch (ParseException e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Error newDecimalFormat().parse(" + str + ")", e);
            }
            return defaultValue;
        }
    }

    public static Date toDate(String str, String pattern, Date defaultValue) {
        if (str == null) {
            return defaultValue;
        }
        try {
            return new SimpleDateFormat(pattern, new DateFormatSymbols(BRAZIL)).parse(str);
        } catch (ParseException e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Error newSimpleDateFormat().parse(" + str + ")", e);
            }
            return defaultValue;
        }
    }

    public static Calendar toCalendar(String str, String pattern, Calendar defaultValue) {
        if (str == null) {
            return defaultValue;
        }
        try {
            Date date = new SimpleDateFormat(pattern, new DateFormatSymbols(BRAZIL)).parse(str);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            return calendar;
        } catch (ParseException e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Error newSimpleDateFormat().parse(" + str + ")", e);
            }
            return defaultValue;
        }
    }

    public static long toLong(String str, long defaultValue) {
        if (str == null || str.length() == 0) {
            return defaultValue;
        }
        try {
            return Long.parseLong(onlyNumbers(str));
        } catch (NumberFormatException e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Error Long.parseLong(" + str + ")", e);
            }
            return defaultValue;
        }
    }

    public static long toLong(String str) {
        return toLong(str, 0);
    }

    public static int toInt(String str, int defaultValue) {
        if (str == null || str.length() == 0) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(onlyNumbers(str));
        } catch (NumberFormatException e) {
            if (LOGGER.isDebugEnabled()) {
                LOGGER.debug("Error Integer.parseInt(" + str + ")", e);
            }
            return defaultValue;
        }
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static String onlyNumbers(String str) {
        return (str == null) ? null : str.replaceAll("\\D", "");
    }

    public static String toString(Calendar calendar, String pattern) {
        if (calendar == null) {
            return null;
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, BRAZIL);
        return dateFormat.format(calendar.getTime());
    }
    
    public static String toString(Calendar calendar) {
        return toString(calendar, "dd/MM/yyyy");
    }
    
    public static String toString(Date date, String pattern) {
        if (date == null) {
            return null;
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, BRAZIL);
        return dateFormat.format(date);
    }
    
    public static String toString(Date date) {
        return toString(date, "dd/MM/yyyy");
    }
    
    public static String toString(double number) {
        return newDecimalFormat().format(number);
    }

}
