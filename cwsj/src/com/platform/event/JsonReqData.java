package com.platform.event;

import java.util.HashMap;
import java.util.Map;
/**
 * Json请求对象的封装
 * @author yan
 *
 */
public class JsonReqData {

	/**
	 * 用户唯一标识
	 */
	private String sessionId = "";
	/**
	 * 是否下载文件
	 */
	private String downLoadFile = "0";
	
	/**
	 * 健值，主要用于bean转map
	 */
	private Map<String, Object> bean = new HashMap<String, Object>();
	/**
	 * 表单数据
	 */
	private Map<String, Object> Form = new HashMap<String, Object>();
	/**
	 * 表格数据
	 */
	private Map<String, Object> Grid = new HashMap<String, Object>();

	/**
	 * 业务数据
	 */
	private Map<String, Object> data = new HashMap<String, Object>();
	/**
	 * 树数据
	 */
	private Map<String, Object> Tree = new HashMap<String, Object>();
	public Map<String, Object> getBean() {
		return bean;
	}

	public void setBean(Map<String, Object> bean) {
		this.bean = bean;
	}	
	
	public Map<String, Object> getTree() {
		return Tree;
	}

	public void setTree(Map<String, Object> tree) {
		Tree = tree;
	}	
	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public Map<String, Object> getForm() {
		return Form;
	}

	public void setForm(Map<String, Object> form) {
		Form = form;
	}

	public Map<String, Object> getGrid() {
		return Grid;
	}

	public void setGrid(Map<String, Object> grid) {
		Grid = grid;
	}

	public String getDownLoadFile() {
		return downLoadFile;
	}

	public void setDownLoadFile(String downLoadFile) {
		this.downLoadFile = downLoadFile;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

}
