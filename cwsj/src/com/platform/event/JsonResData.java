package com.platform.event;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * json发送对象的封装
 * @author yan
 *
 */
public class JsonResData {

	/**
	 * 是否下载文件
	 */
	private String fileDownload = "false";
	private String msg = "";
	private String code = "";
	/**
	 * 表单数据
	 */
	private List<Map> Form = new ArrayList<Map>();
	/**
	 * 表格数据
	 */
	private List<Map> Grid = new ArrayList<Map>();	
	/**
	 * 树数据
	 */
	private List<Map> Tree = new ArrayList<Map>();	
	/**
	 * 下拉框数据
	 */
	private List<Map> Select = new ArrayList<Map>();	

	private Map<String, Object> data = new HashMap<String, Object>();

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public String getFileDownload() {
		return fileDownload;
	}

	public void setFileDownload(String fileDownload) {
		this.fileDownload = fileDownload;
	}

	public List<Map> getForm() {
		return Form;
	}

	public void setForm(List<Map> form) {
		Form = form;
	}

	public List<Map> getGrid() {
		return Grid;
	}

	public void setGrid(List<Map> grid) {
		Grid = grid;
	}

	public List<Map> getTree() {
		return Tree;
	}

	public void setTree(List<Map> tree) {
		Tree = tree;
	}
	public List<Map> getSelect() {
		return Select;
	}

	public void setSelect(List<Map> select) {
		Select = select;
	}
}
