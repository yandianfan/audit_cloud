package com.platform.tool;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.sf.ezmorph.bean.MorphDynaBean;
import net.sf.json.JSONArray;
import net.sf.json.JSONNull;
import net.sf.json.JSONObject;

import com.cwsj.util.JSONHelper;

public class JsonHelp {

    /**
     * 将MorphDynaBean对象转换成Map集合
     * @see JSONHelper#reflect(JSONArray)
     * @param json
     * @return
     */
    public static List<Map> treetoMap(List<MorphDynaBean> jsonmprph){
    	Map newobjline=null;
    	List<Map> objlist=new ArrayList();
		for(MorphDynaBean treeline:jsonmprph){
			newobjline=new HashMap();
			newobjline.put("id", treeline.get("id"));
			newobjline.put("name", treeline.get("name"));
			objlist.add(newobjline);
		}
		return objlist;
    }
}
