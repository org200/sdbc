package com.sdbc.service;

import java.util.List;

import com.sdbc.pojo.TQklCutinfo;
import com.sdbc.util.Page;

public interface PaymentQueryServcie {
	
	public Page cutlist_search(String args1, String args2, String starttime, String endtime,  int offset, int size);
	public List<TQklCutinfo> get_previewlist();
}
