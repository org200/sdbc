package com.sdbc.service;

import java.util.List;

import com.sdbc.pojo.TQklLoaninfo;
import com.sdbc.util.Page;

public interface LendQueryService {
	public List<TQklLoaninfo> get_previewlist();
	public Page loanlist_search(String args1,String args2,String starttime,String endtime,int offset,int size);
}
