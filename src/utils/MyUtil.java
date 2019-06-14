package utils;

import java.util.Scanner;

import org.owasp.esapi.ESAPI;

public class MyUtil {
	public static String encodeValueForHTML(String input){
  		String value = "";
  		value = (String) ESAPI.encoder().encodeForHTML(input);
  		return value;
	}
	public static boolean isInteger(String s) {
   		int radix = 10;
		Scanner sc = new Scanner(s.trim());
    		if(!sc.hasNextInt(radix)){
    			sc.close();
    			return false;
    		}
   		//Chắc chắn ko còn dữ liệu
   		sc.nextInt(radix);
    		boolean flag = !sc.hasNext();
    		sc.close();
    		return flag;
	}
	public static boolean isLong(String s) {
   		int radix = 10;
		Scanner sc = new Scanner(s.trim());
    		if(!sc.hasNextLong(radix)){
    			sc.close();
    			return false;
    		}
   		//Chắc chắn ko còn dữ liệu
   		sc.nextLong(radix);
    		boolean flag = !sc.hasNext();
    		sc.close();
    		return flag;
	}
	public static boolean isDouble(String s) {
		Scanner sc = new Scanner(s.trim());
    		if(!sc.hasNextDouble()){
    			sc.close();
    			return false;
    		}
   		//Chắc chắn ko còn dữ liệu
   		sc.nextDouble();
    		boolean flag = !sc.hasNext();
    		sc.close();
    		return flag;
	}
}
