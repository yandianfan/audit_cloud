package com.platform.tool;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.ezmorph.bean.MorphDynaBean;

public class PlatformUtil {
/**
 * 增加grid表格数据里面的对象值   
 * @param gridlist
 * @param key
 * @param value
 * @return
 */
    public static List<Map> addGridcolvalue(List<Map> gridlist,String key,String value){
    	Map newobjline=null;
    	List<Map> objlist=new ArrayList();
		for(Map girdline:gridlist){
			newobjline=new HashMap();
			girdline.put(key, value);
			newobjline.putAll(girdline);
			objlist.add(newobjline);
		}
		return objlist;
    }   
    /**
     * 增加grid表格数据里面的对象值   
     * @param gridlist
     * @param key
     * @param value
     * @return
     */
        public static List<Map> addGridcolvaluepro(List<Map> gridlist,String keys,String values,String keys1,String keys2){
        	Map newobjline=null;
        	List<Map> objlist=new ArrayList();
        	String[] arg=null;
        	String[] argvalue=null;
        	String[] arg_key1=null;
        	String[] arg_key2=null; 
        	if(!"".equals(keys)&&keys!=null){
        		arg=keys.split(",");
        	}  
        	if(!"".equals(values)&&values!=null){
        		argvalue=values.split(",");
        	}  
        	if(!"".equals(keys1)&&keys1!=null){
        		arg_key1=keys1.split(",");
        	}  
        	if(!"".equals(keys2)&&keys2!=null){
        		arg_key2=keys2.split(",");
        	}  
    		for(Map girdline:gridlist){
    			newobjline=new HashMap();
    			if(!"".equals(arg)&&arg!=null){
        			for(int i=0;i<arg.length;i++){
            			girdline.put(arg[i], argvalue[i]);			
        			}  				
    			}
    			if(!"".equals(arg_key1)&&arg_key1!=null){
        			for(int j=0;j<arg_key1.length;j++){
            			girdline.put(arg_key1[j], girdline.get(arg_key2[j]));			
        			}   				
    			} 			
    			newobjline.putAll(girdline);
    			objlist.add(newobjline);
    		}
    		return objlist;
        }    
        
        /**
         * 增加grid表格数据里面的对象值  ，增加XH属性 
         * @param gridlist
         * @param key
         * @param value
         * @return
         */
            public static List<Map> addGridcolvaluepro(List<Map> gridlist,String keys,String values,String keys1,String keys2,String pxzd,int beginxh){
            	Map newobjline=null;
            	List<Map> objlist=new ArrayList();
            	String[] arg=null;
            	String[] argvalue=null;
            	String[] arg_key1=null;
            	String[] arg_key2=null; 
            	if(!"".equals(keys)&&keys!=null){
            		arg=keys.split(",");
            	}  
            	if(!"".equals(values)&&values!=null){
            		argvalue=values.split(",");
            	}  
            	if(!"".equals(keys1)&&keys1!=null){
            		arg_key1=keys1.split(",");
            	}  
            	if(!"".equals(keys2)&&keys2!=null){
            		arg_key2=keys2.split(",");
            	}  
        		for(Map girdline:gridlist){
        			newobjline=new HashMap();
        			if(!"".equals(arg)&&arg!=null){
            			for(int i=0;i<arg.length;i++){
                			girdline.put(arg[i], argvalue[i]);
                			if(!"".equals(pxzd)&&pxzd!=null){
                				girdline.put(pxzd, beginxh);
                				beginxh++;
                			}
            			}  				
        			}
        			if(!"".equals(arg_key1)&&arg_key1!=null){
            			for(int j=0;j<arg_key1.length;j++){
                			girdline.put(arg_key1[j], girdline.get(arg_key2[j]));			
            			}   				
        			} 			
        			newobjline.putAll(girdline);
        			objlist.add(newobjline);
        		}
        		return objlist;
            }         
 /**
  *    复制grid里面的对象值
  * @param gridlist
  * @param key
  * @param value
  * @return
  */
    public static List<Map> copyGridcolvalue(List<Map> gridlist,String key1,String key2){
    	Map newobjline=null;
    	List<Map> objlist=new ArrayList();
		for(Map girdline:gridlist){
			newobjline=new HashMap();
			girdline.put(key1, girdline.get(key2));
			newobjline.putAll(girdline);
			objlist.add(newobjline);
		}
		return objlist;
    }      
}
