package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.AgencyManageDao;
import com.sdbc.pojo.TQklBankinfo;
import com.sdbc.service.AgencyManageService;

//机构管理
@Service
public class AgencyManageServiceImpl implements AgencyManageService {
	@Autowired
	private AgencyManageDao amd;

	@Override
	public List<TQklBankinfo> agencylist() {
		return amd.agencylist();
	}

	@Override
	public boolean insertAgency(TQklBankinfo bankinfo) {
		
		boolean ret = amd.insertAgency(bankinfo);
		if (ret == true) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void deleteAgency(int id) {
		amd.deleteAgency(id);
	}

	@Override
	public int unique_bank_id(int bank_id) {
		int count=amd.unique_bank_id(bank_id);
		return count;
	}

}
