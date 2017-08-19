package com.sdbc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sdbc.pojo.TQklSysLoginfo;
import com.sdbc.service.LogManageService;
@Controller
@RequestMapping("/sm/")
public class LogManageController {
	@Autowired
	private LogManageService ls;
	@RequestMapping(value = "log_manage")
	public String roleManager(Model m,HttpSession session){
		List<TQklSysLoginfo> loglist=ls.loglist();
		m.addAttribute("loglist", loglist);
		return "/freamwork/sysmanage/operalog";
	}
}
