package com.sdbc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.service.LendQueryService;
import com.sdbc.util.Page;

//借款登记簿查询
@Controller
@RequestMapping(value = "/rb/")
public class LendQueryController {
	@Autowired
	public LendQueryService lendqueryService;

	@RequestMapping(value = "lendquery")
	public String lendquery_view(HttpServletRequest request, HttpSession session, Model model) {
		String args1, args2, starttime, endtime;
		args1 = "";
		args2 = "";
		starttime = "";
		endtime = "";
		session.setAttribute("args1", args1);
		session.setAttribute("args2", args2);
		session.setAttribute("starttime", starttime);
		session.setAttribute("endtime", endtime);

		model.addAttribute(args1, args1);
		model.addAttribute("args2", args2);
		model.addAttribute("starttime", "");
		model.addAttribute("endtime", "");
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = lendqueryService.loanlist_search(args1, args2, starttime, endtime, Integer.valueOf(pageNo), 15);
			request.setAttribute("page", page);
			List loanlist = page.getList();
			request.setAttribute("loanlist", loanlist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/freamwork/registerbill/lendquery_view";
	}

	@RequestMapping(value = "search")
	public String search(String args1, String args2, String starttime, String endtime, HttpServletRequest request,
			HttpSession session, Model model) {
		session.setAttribute("args1", args1);
		session.setAttribute("args2", args2);
		session.setAttribute("starttime", starttime);
		session.setAttribute("endtime", endtime);

		model.addAttribute(args1, args1);
		model.addAttribute("args2", args2);
		model.addAttribute("starttime", "");
		model.addAttribute("endtime", "");
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = lendqueryService.loanlist_search(args1, args2, starttime, endtime, Integer.valueOf(pageNo), 15);
			request.setAttribute("page", page);
			List loanlist = page.getList();
			request.setAttribute("loanlist", loanlist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/freamwork/registerbill/lendquery_view";
	}

	@RequestMapping(value = "next")
	public String next(HttpSession session, HttpServletRequest request, Model model) {
		String result = "";
		String args1 = (String) session.getAttribute("args1");
		String args2 = (String) session.getAttribute("args2");
		String starttime = (String) session.getAttribute("starttime");
		String endtime = (String) session.getAttribute("endtime");

		model.addAttribute("args1", args1);
		model.addAttribute("args2", args2);
		model.addAttribute("starttime", starttime);
		model.addAttribute("endtime", endtime);
		try {
			String pageNo = request.getParameter("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
			Page page = lendqueryService.loanlist_search(args1, args2, starttime, endtime, Integer.valueOf(pageNo), 15);
			request.setAttribute("page", page);
			List loanlist = page.getList();
			request.setAttribute("loanlist", loanlist);
			result = "/freamwork/registerbill/lendquery_view";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
