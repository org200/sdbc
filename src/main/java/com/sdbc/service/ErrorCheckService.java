package com.sdbc.service;

import com.sdbc.util.Page;

public interface ErrorCheckService {

	Page errorlist_search(String args1, String args2, String starttime, String endtime, int offset, int size);

}
