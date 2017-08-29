package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.ErrorCheckDao;
import com.sdbc.pojo.TQklErrorinfo;
import com.sdbc.service.ErrorCheckService;
import com.sdbc.util.Page;

@Service
public class ErrorCheckServiceImpl implements ErrorCheckService{
	@Autowired
	private ErrorCheckDao ecd;
	@Override
	public Page errorlist_search(String args1, String args2, String starttime, String endtime, int currentPage, int size) {
		// TODO Auto-generated method stub
		Page page = new Page();
		// 总记录数
		int allRow = ecd.get_ErrorCount(args1, args2, starttime, endtime);
		// 当前页开始记录
		int offset = page.countOffset(currentPage, size);
		// 分页查询结果集
		List<TQklErrorinfo> list = ecd.errorlist_search(args1, args2, starttime, endtime, offset,size);
		page.setList(list);

		page.setPageNo(currentPage);
		page.setPageSize(size);
		page.setTotalRecords(allRow);
		return page;
	}

}
