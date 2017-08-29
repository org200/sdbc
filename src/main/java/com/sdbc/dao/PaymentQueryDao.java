package com.sdbc.dao;

import java.util.List;

import com.sdbc.pojo.TQklCutinfo;

public interface PaymentQueryDao {
	public List<TQklCutinfo> cutlist_search(String args1, String args2, String starttime, String endtime, int offset);

	public int get_CutCount(String args1, String args2, String starttime, String endtime);

	public List<TQklCutinfo> previewcutlist();
}
