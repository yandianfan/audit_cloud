package com.platform.event;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
/**
 * BLH中的基础发送数据封装类
 * @author yan
 *
 */
public class BaseResponseEvent implements IResponseEvent {
	public Map getCache() {
		return cache;
	}

	public void setCache(Map cache) {
		this.cache = cache;
	}

	private long costTime;
	private Map cache;
	private String page;
	private HashMap select;
	private HashMap object;
	private HashMap form; 
	private HashMap grid;
	private HashMap tree;
	private HashMap attr;

	public BaseResponseEvent() {
		this.cache = new HashMap();
		this.select = new HashMap();
		this.object = new HashMap();
		this.form=new HashMap();
		this.grid=new HashMap();
		this.tree=new HashMap();
		this.attr=new HashMap();
	}

	public boolean isSuccess() {
		return true;
	}

	public boolean isOne() {
		return true;
	}

	public void setSuccess() {
	}

	public void setCostTime(long costTime) {
		this.costTime = costTime;
	}

	public long getCostTime() {
		return this.costTime;
	}

	public void put(String name, Object object) {
		this.cache.put(name, object);
	}

	public Object get(String name) {
		return this.cache.get(name);
	}

	public void addPage(String page) {
		this.cache.put("page", page);
	}

	public void addSelect(String selectname, List selectlist) {
		this.select.put(selectname, selectlist);
		this.cache.put("select", select);
	}

	// public Map getSelect(){
	// return this.select;
	// }

	public void addObject(String objectname, Object obj) {
		this.object.put(objectname, obj);
		this.cache.put("object", object);
	}

	// public Map getObject(){
	// return this.object;
	// }
	
	public void addForm(String formname, Map formmap) {
		this.form.put(formname, formmap);
		this.cache.put("form", form);
	}	
	
	public void addGrid(String gridname, List<Map> gridlist) {
		this.grid.put(gridname, gridlist);
		this.cache.put("grid", grid);
	}	
	
	public void addTree(String treename, List<ZTreeVO> treelist) {
		this.tree.put(treename, treelist);
		this.cache.put("tree", tree);
	}
	
	public void addCode(String code) {
		this.cache.put("code", code);
	}	
	
	public void addMessage(String msg) {
		this.cache.put("msg", msg);
	}	
	
	public void addAttr(String key,String value) {
		this.attr.put(key, value);
	}	
	
	public String getAttr(String key) {
		return (String) this.attr.get(key);
	}		
}