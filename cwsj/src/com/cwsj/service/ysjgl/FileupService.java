package com.cwsj.service.ysjgl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;

@Service("FileupService")
public class FileupService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
}
