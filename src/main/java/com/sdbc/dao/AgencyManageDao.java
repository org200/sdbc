package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklBankinfo;

public interface AgencyManageDao {
	public List<TQklBankinfo> agencylist();
	public boolean insertAgency(TQklBankinfo bankinfo);
	public void deleteAgency(int id);
	public int unique_bank_id(int bank_id);
}
