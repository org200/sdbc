package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklSysPersontype;

public interface RoleManageDao {
	public List<TQklSysPersontype> rolelist();
	public boolean insertRole(TQklSysPersontype role);
	public int maxid();
	public void deleteRole(int id);
	
}
