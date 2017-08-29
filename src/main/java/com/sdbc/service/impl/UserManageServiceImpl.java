package com.sdbc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.UserManageDao;
import com.sdbc.pojo.TQklSysPerson;
import com.sdbc.service.UserManageService;

@Service
public class UserManageServiceImpl implements UserManageService {
	
	@Autowired
	private UserManageDao umd;
	@Override
	public List<TQklSysPerson> userlist() {

		return umd.userlist();
	}

	@Override
	public boolean validateUser(String username, String passwd) {
		System.out.println(username);
		TQklSysPerson user = umd.selectUserByName(username);
		boolean ret = username.equals(user.getUsername()) && passwd.equals(user.getUserpasswd());
		if (ret == false) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public boolean insertUser(TQklSysPerson user) {
		user.setStatus(1);
		boolean ret = umd.insertUser(user);
		if (ret == true) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public int unique_username(String username) {
		int count = umd.unique_username(username);
		return count;
	}

	@Override
	public void deleteUser(int userid) {
		umd.deleteUser(userid);
	}

	@Override
	public void changStatus(TQklSysPerson user) {
			 umd.changStatus(user);
	}


	@Override
	public int resetUser(TQklSysPerson user) {
		int count=umd.resetUser(user);	
		return count;
	}

	@Override
	public TQklSysPerson userTypeId(String username) {

		return umd.userTypeId(username);
	}

	@Override
	public List<TQklSysPerson> userlist_query(String name, String status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyUserRole(TQklSysPerson user) {
	umd.modifyUserRole(user);
		
	}

	@Override
	public TQklSysPerson selectById(int id) {
		TQklSysPerson user= umd.selectById(id);
		return user;
	}

}
