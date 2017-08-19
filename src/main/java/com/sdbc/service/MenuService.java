package com.sdbc.service;

import java.util.List;
import com.sdbc.pojo.TQklSysResource;

public interface MenuService {

	public  List<TQklSysResource> MenuList(int level,int typeid);

	//查询所有的菜单
	public List<TQklSysResource> allMenulist();


	
	//通过typeid查询对应的资源号
	
	public List<TQklSysResource> midByTypeId(int typeid);
	
	//通过typeid 删除该条记录,表typeResource表
	public void deleteMid(int typeid);
	
	//插入typid和mid的值
	
	public void insertMidTypeid(List<String> mids,int typeid);
}
