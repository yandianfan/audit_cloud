package com.platform.event;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.fh.util.PageData;
/**
 * BLH中的基础请求封装类
 * @author yan
 *
 */
public class BaseRequestEvent implements IRequestEvent {
	private String monitorId = null;
	protected String transactionID;
	protected String sessionID;
	private String method;
	private int key = -1;
	public String transaction_flag = "";
	private Map cache = new HashMap();
	private HttpServletRequest request;
	
	private HashMap attr;
	private HashMap<String,Map> form;
	private HashMap<String,List> grid;
	private HashMap<String,List> tree;
	private PageData pageData ;


	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		return request;
	}

	public String getMonitorId() {
		return this.monitorId;
	}

	public void setMonitorId(String id) {
		this.monitorId = id;
	}

	public void setTransactionID(String transactionID) {
		this.transactionID = transactionID;
	}

	public BaseRequestEvent(String transactionID, String sessionID) {
		if ((transactionID != null) && (transactionID.indexOf("_") > -1)) {
			this.transactionID = transactionID.substring(0,
					transactionID.indexOf("_"));

			this.method = transactionID
					.substring(transactionID.indexOf("_") + 1);
		} else
			this.transactionID = transactionID;

		this.sessionID = sessionID;
		this.cache = new HashMap();
		this.attr = new HashMap();
		this.form = new HashMap();
		this.grid = new HashMap();
		this.tree = new HashMap();
	}

	public String getTransactionID() {
		return this.transactionID;
	}

	public String getSessionID() {
		return this.sessionID;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public int getKey() {
		return this.key;
	}

	public String getMethod() {
		return this.method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public void put(String name, Object object) {
		this.cache.put(name, object);
	}

	public Object get(String name) {
		return this.cache.get(name);
	}
	
	public PageData getPageData() {
		return pageData;
	}

	public void setPageData(PageData pageData) {
		this.pageData = pageData;
	}

	public void addAttr(String attrname, Object attrobj) {
		this.attr.put(attrname, attrobj);
		this.cache.put("attr", attr);
	}
	
	public Object getAttr(String attrname) {		
		return this.attr.get(attrname);
	}	

	public void addForm(String formname, Map<String,Object> formobj) {
		this.form.put(formname, formobj);
		//this.cache.put("attr", attr);
	}
	
	public Map getForm(String formname) {		
		return this.form.get(formname);
	}		
	
	public void addGrid(String gridname, List<Map> gridobj) {
		this.grid.put(gridname, gridobj);
		//this.cache.put("attr", attr);
	}
	
	public List<Map> getGrid(String gridname) {		
		return this.grid.get(gridname);
	}
	public void addTree(String treename, List<Map> treeobj) {
		this.tree.put(treename, treeobj);
	}	
	public List<Map> getTree(String treename) {		
		return this.tree.get(treename);
	}		
}