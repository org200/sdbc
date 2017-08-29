package com.sdbc.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.LendQueryDao;
import com.sdbc.pojo.TQklLoaninfo;
import com.sdbc.service.LendQueryService;
import com.sdbc.util.Page;

@Service
public class LendQueryServiceImpl implements LendQueryService {
	@Autowired
	private LendQueryDao lqd;

	@Override
	public Page loanlist_search(String args1, String args2, String starttime, String endtime, int currentPage,
			int size) {
		// TODO Auto-generated method stub
		Page page = new Page();
		// 总记录数
		int allRow = lqd.get_LoanCount(args1, args2, starttime, endtime);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, size);
		// 分页查询结果集
		List<TQklLoaninfo> list = lqd.loanlist_search(args1, args2, starttime, endtime, offset,size);
		page.setList(list);

		page.setPageNo(currentPage);
		page.setPageSize(size);
		page.setTotalRecords(allRow);

		return page;
	}

	@Override
	public List<TQklLoaninfo> get_previewlist() {
		// TODO Auto-generated method stub
		return lqd.previewloanlist();
	}

}
