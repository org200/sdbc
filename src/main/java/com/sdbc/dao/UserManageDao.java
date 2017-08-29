package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklSysPerson;

public interface UserManageDao{
	public TQklSysPerson selectUserByName(String username);  
	public List<TQklSysPerson> userlist();
	public boolean insertUser(TQklSysPerson user);
	public int unique_username(String username);
	public void deleteUser(int userid);
	public void changStatus(TQklSysPerson user);
	public int resetUser(TQklSysPerson user);
	public TQklSysPerson userTypeId(String username);
	public List<TQklSysPerson> userlist_query(String username, String status);
	public void modifyUserRole(TQklSysPerson user);
	public TQklSysPerson selectById(int id);
}
