package com.sdbc.service;

import java.util.List;

import com.sdbc.pojo.TQklBankinfo;

public interface AgencyManageService {
	//机构列表
	public List<TQklBankinfo> agencylist();
	//新增机构
	public boolean insertAgency(TQklBankinfo bankinfo);
	//删除机构
	public void deleteAgency(int id);
	//验证机构id的唯一性
	public int unique_bank_id(int bank_id);
}
