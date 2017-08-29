package com.sdbc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdbc.dao.PaymentQueryDao;
import com.sdbc.pojo.TQklCutinfo;
import com.sdbc.pojo.TQklLoaninfo;
import com.sdbc.service.PaymentQueryServcie;
import com.sdbc.util.Page;

@Service
public class PaymentQueryServiceImpl implements PaymentQueryServcie{
	@Autowired
	public PaymentQueryDao pqd;
	@Override
	public Page cutlist_search(String args1, String args2, String starttime, String endtime, int currentPage, int size) {
		// TODO Auto-generated method stub
		System.out.println("**************");
		Page page = new Page();
		// 总记录数
		int allRow = pqd.get_CutCount(args1, args2, starttime, endtime);
		// 当前页开始记录
		System.out.println(allRow);
		int offset = page.countOffset(currentPage, size);
		// 分页查询结果集
		List<TQklCutinfo> list = pqd.cutlist_search(args1, args2, starttime, endtime, offset);
		page.setList(list);

		page.setPageNo(currentPage);
		page.setPageSize(size);
		page.setTotalRecords(allRow);

		return page;
	}
	@Override
	public List<TQklCutinfo> get_previewlist() {
		// TODO Auto-generated method stub
		return pqd.previewcutlist();
	}

}
