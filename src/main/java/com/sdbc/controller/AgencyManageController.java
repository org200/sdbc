package com.sdbc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdbc.pojo.TQklBankinfo;
import com.sdbc.pojo.TQklSysPerson;
import com.sdbc.service.AgencyManageService;

@Controller
@RequestMapping("/sm/")
public class AgencyManageController {
	@Autowired
	private AgencyManageService ams;
	@RequestMapping(value = "agency_manage")
	public String userManager(Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		
		List <TQklBankinfo> agencylist=ams.agencylist();
		m.addAttribute("agencylist", agencylist);
		return "/freamwork/sysmanage/agencymanager";
	}
	
	//跳转至新增机构页面
	@RequestMapping(value = "agencyadd")
	public String addagency(Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){		
		return "/freamwork/sysmanage/agencyadd";
	}
	
	//插入机构
	@RequestMapping(value = "insertAgency")
	public String insertAgency(TQklBankinfo bankinfo,Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		ams.insertAgency(bankinfo);
		List <TQklBankinfo> agencylist=ams.agencylist();
		m.addAttribute("agencylist", agencylist);
		return "/freamwork/sysmanage/agencymanager";
	}
	//删除机构
	@RequestMapping(value = "deleteAgency")
	public String deleteAgency(int id,Model m,HttpServletRequest request, HttpServletResponse response,HttpSession session){
		ams.deleteAgency(id);
		List <TQklBankinfo> agencylist=ams.agencylist();
		m.addAttribute("agencylist", agencylist);
		return "/freamwork/sysmanage/agencymanager";	
	}
	
	//判断银行机构是否唯一
	@ResponseBody
	@RequestMapping(value="unique_bank_id")
	public String unique_bank_id(int bank_id,Model model){
		int temp = ams.unique_bank_id(bank_id);
		if (temp>0) {
			return "notunique";
		} else {
			return "unique";
		}
	}
}
