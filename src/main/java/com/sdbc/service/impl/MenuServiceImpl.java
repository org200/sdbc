package com.sdbc.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.MenuDao;
import com.sdbc.pojo.TQklSysPersontype;
import com.sdbc.pojo.TQklSysResource;
import com.sdbc.service.MenuService;
@Service
public class MenuServiceImpl implements MenuService {
@Autowired
private MenuDao menudao;
	public List<TQklSysResource> MenuList(int level,int typeid) {
		List<TQklSysResource> list = new ArrayList<>();
		if (level==0&&typeid==0) {
			list=menudao.allMenuList(level, typeid);	
		}else if (level==0&&typeid!=0) {
			list=menudao.MenuList_typeid(level, typeid);	
		}else {
			list=menudao.MenuList(level,typeid);	
		}
		return list;
	}

	@Override
	public List<TQklSysResource> allMenulist() {
		 List<TQklSysResource> list=menudao.allMenulist();
		return list;
	}
	@Override
	public List<TQklSysResource> midByTypeId(int typeid) {
		
		return menudao.midByTypeId(typeid);
	}
	@Override
	public void deleteMid(int typeid) {
		menudao.deleteMid(typeid);
		
	}
	@Override
	public void insertMidTypeid(List<String> mids, int typeid) {
		for(int i=0;i<mids.size();i++){
			menudao.insertMidTypeid(mids.get(i), typeid);
		}
		
	}


	

}
