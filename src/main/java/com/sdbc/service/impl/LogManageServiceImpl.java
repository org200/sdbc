package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.LogManageDao;
import com.sdbc.pojo.TQklSysLoginfo;
import com.sdbc.service.LogManageService;
@Service 
public class LogManageServiceImpl implements LogManageService{
@Autowired
private LogManageDao ld;
	@Override
	public List<TQklSysLoginfo> loglist() {
		
		return ld.loglist();
	}

}
