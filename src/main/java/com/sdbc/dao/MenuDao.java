package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklSysPersontype;
import com.sdbc.pojo.TQklSysResource;

public interface MenuDao {

		public  List<TQklSysResource> MenuList(int level,int typeid);
		public  List<TQklSysResource> allMenuList(int level,int typeid);
		public  List<TQklSysResource> MenuList_typeid(int level,int typeid);
		public List<TQklSysResource> allMenulist();

		public List<TQklSysResource> midByTypeId(int typeid);
		
		public void deleteMid(int typeid);
		
		public void insertMidTypeid(String mid, int typeid);
}
