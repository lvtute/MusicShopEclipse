package utils;

import org.owasp.esapi.ESAPI;

public class MyUtil {
	public static String encodeValueForHTML(String input){
  		String value = "";
  		value = (String) ESAPI.encoder().encodeForHTML(input);
  		return value;
	}
}
