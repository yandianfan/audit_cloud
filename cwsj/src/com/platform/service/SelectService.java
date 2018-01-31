package com.platform.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cwsj.vo.ysjgl.BzsjxVO;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
@Service("SelectService")
public class SelectService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	

	
	public List<Map> listSelect(PageData pd) throws Exception {
		return (List<Map>) dao.findForList(pd.getString("selectKey"), pd);	
	}
}
