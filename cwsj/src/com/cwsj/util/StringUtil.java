package com.cwsj.util;

import org.apache.commons.lang.StringUtils;

public class StringUtil {
	   
       public static String stringEmpty(String str){
    	   if(StringUtils.isBlank(str)){
    		   return null;
    	   }else{
    		   return str;
    	   }
       }
}
