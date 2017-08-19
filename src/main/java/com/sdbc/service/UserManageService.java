package com.sdbc.service;

import java.util.List;

import com.sdbc.pojo.TQklSysPerson;

public interface UserManageService {
	//用户列表
	public List<TQklSysPerson> userlist();
	// 验证用户
	public boolean validateUser(String  username,String passwd);  
	
	//新增用户
	public boolean insertUser(TQklSysPerson user);
	
	//验证用户名的唯一性
	public int unique_username(String username);
	
	//删除用户
	public void deleteUser(int userid);
	
	//改变用户状态,冻结或解冻
	public  void changStatus(TQklSysPerson user);
	
	//重置用户密码
	public int resetUser(TQklSysPerson user);
	public List<TQklSysPerson> userlist_query(String name, String status);
	
	//查询用户的角色类型
	public TQklSysPerson userTypeId(String username);
	
	//给用户设置角色类型
	public void modifyUserRole(TQklSysPerson user);
	
	//通过id号查询记录
	
	public TQklSysPerson selectById(int id);
	
}
