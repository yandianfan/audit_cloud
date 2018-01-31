package com.platform.tool;

import java.text.SimpleDateFormat;
import java.util.Set;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * json格式中的日期格式的处理
 * @author yan
 *
 */
public class JsonDateValueProcessor implements JsonValueProcessor {


	private String format = "yyyy-MM-dd";


	private Object processJsonDateValue(Object arg0) {

		SimpleDateFormat sdf = new SimpleDateFormat(format);

		return sdf.format(arg0);

	}
	

    public Object processObjectValue(String key, Object value,JsonConfig arg2){

      if(value==null)

            return "";

      if (value instanceof java.util.Date) {

            String str = new SimpleDateFormat(format).format((java.util.Date) value);

            return str;

      }

            return value.toString();

    }



    public Object processArrayValue(Object value, JsonConfig arg1){

               return null;

    }
	

}
