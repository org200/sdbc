package com.sdbc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.service.ErrorCheckService;
import com.sdbc.util.Page;

//差错处理
@Controller
@RequestMapping(value = "/rb/")
public class ErrorCheckController {
	@Autowired
	public ErrorCheckService ecs;
	@RequestMapping(value="error_check")
	public String ErrorCheck_View(HttpServletRequest request, HttpSession session, Model model){
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
			Page page = ecs.errorlist_search(args1, args2, starttime, endtime, Integer.valueOf(pageNo), 15);
			request.setAttribute("page", page);
			List loanlist = page.getList();
			request.setAttribute("loanlist", loanlist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/freamwork/registerbill/errorcheck_view";
	}
}
