package com.cwsj.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONNull;
import net.sf.json.JSONObject;

public class JSONHelper {

    /**
     * 将JSONObjec对象转换成Map集合
     * @see JSONHelper#reflect(JSONArray)
     * @param json
     * @return
     */
    public static HashMap<String, Object> reflect(JSONObject json){
        HashMap<String, Object> map = new HashMap<String, Object>();
        Set keys = json.keySet();
        for(Object key : keys){
            Object o = json.get(key);
            if(o instanceof JSONArray){
                map.put((String) key, reflect((JSONArray) o));
            }else if(o instanceof JSONObject){
                map.put((String) key, reflect((JSONObject) o));
            }else{
            	if(o instanceof JSONNull){
            		map.put((String) key, "");
            	}else{
            		map.put((String) key, o.toString());
            	}
                
            }
        }
        return map;
    }
    /**
     * 将JSONObjec对象转换成Map集合
     * @see JSONHelper#reflect(JSONArray)
     * @param json
     * @return
     */
    public static Map<String, String> jsontoMap(JSONObject json){
        Map<String, String> map = new HashMap<String,  String>();
        Set keys = json.keySet();
        String value=null;
        for(Object key : keys){
        	value= (String) json.get(key);
        	map.put((String) key, value);
        }
        return map;
    }
    /**
     * 将JSONArray对象转换成List集合
     * @see JSONHelper#reflect(JSONObject)
     * @param json
     * @return
     */
    public static Object reflect(JSONArray json){
        List<Object> list = new ArrayList<Object>();
        for(Object o : json){
            if(o instanceof JSONArray)
                list.add(reflect((JSONArray) o));
            else if(o instanceof JSONObject)
                list.add(reflect((JSONObject) o));
            else
                list.add(o);
        }
        return list;
    }
}