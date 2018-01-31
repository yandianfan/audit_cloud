package com.cwsj.util;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class MapUtil {
    /**
     * 将map对象去空并转换为string
     * @see JSONHelper#reflect(JSONArray)
     * @param json
     * @return
     */
    public static HashMap<String, Object> mapStringutil(Map<String,Object> map){
        HashMap<String, Object> newmap = new HashMap<String, Object>();
        Set keys = newmap.keySet();
        String value="";
        for (Entry<String, Object> entry: map.entrySet()) {  
        	value=entry.getValue().toString();
        	if("".equals(value)||value==null){
        		newmap.put(entry.getKey(), "");
        	}else{
        		newmap.put(entry.getKey(), value);
        	}
        }  
        return newmap;
    }
}
