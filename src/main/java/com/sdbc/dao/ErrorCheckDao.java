package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklErrorinfo;

public interface ErrorCheckDao {

	int get_ErrorCount(String args1, String args2, String starttime, String endtime);

	List<TQklErrorinfo> errorlist_search(String args1, String args2, String starttime, String endtime, int offset,int size);

}
