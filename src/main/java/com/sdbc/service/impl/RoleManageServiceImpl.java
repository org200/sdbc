package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.RoleManageDao;
import com.sdbc.pojo.TQklSysPersontype;
import com.sdbc.service.RoleManageService;
@Service
public class RoleManageServiceImpl implements RoleManageService{
@Autowired
private RoleManageDao rd;
	@Override
	public List<TQklSysPersontype> rolelist() {
		
		return rd.rolelist();
	}
	@Override
	public boolean insertRole(TQklSysPersontype role) {

		boolean ret = rd.insertRole(role);
		if (ret == true) {
			return true;
		} else {
			return false;
		}
	}
	@Override
	public int maxid() {
	
		return rd.maxid();
	}
	@Override
	public void deleteRole(int id) {

		rd.deleteRole(id);
	}

	

}
