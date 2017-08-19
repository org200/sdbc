package com.sdbc.service;

import java.util.List;



import com.sdbc.pojo.TQklSysPersontype;

public interface RoleManageService {
	//角色管理
	public List<TQklSysPersontype> rolelist();

	//插入角色
	public boolean insertRole(TQklSysPersontype role);
	
	//查询数据库中最大的typeid的值
	public int maxid();
	
	//角色删除
	public void deleteRole(int id);

	

}
