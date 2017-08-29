package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklLoaninfo;

public interface LendQueryDao {

	public List<TQklLoaninfo> loanlist_search(String args1, String args2, String starttime, String endtime, int offset,int size);

	public int get_LoanCount(String args1, String args2, String starttime, String endtime);

	public List<TQklLoaninfo> previewloanlist();

}
