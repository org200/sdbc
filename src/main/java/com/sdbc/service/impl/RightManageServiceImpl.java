package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.RightManageDao;
import com.sdbc.service.RightManageService;
@Service
public class RightManageServiceImpl implements RightManageService{
	@Autowired
	private RightManageDao rmd;
	@Override
	public void updateresource(List list, int typeid) {
		// TODO Auto-generated method stub
		rmd.removeresource(typeid);
		for (int i = 0; i <list.size(); i++) {
			rmd.giveresource(list.get(i).toString(), typeid);
			
		}
	}

}
