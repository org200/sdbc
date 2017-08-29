package com.sdbc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.service.LendQueryService;
import com.sdbc.service.PaymentQueryServcie;
import com.sdbc.service.RegisterBillViewService;

//登记簿总览
@Controller
@RequestMapping(value = "/rb/")
public class RegisterBillViewController {
	@Autowired
	public LendQueryService lqs;
	@Autowired
	public PaymentQueryServcie pqs;
	@RequestMapping(value="register_bill_view")
	public String RegisterBillView(Model model){
		List loan_previewlist = lqs.get_previewlist();
		List cut_previewlist = pqs.get_previewlist();
		
		model.addAttribute("loanlist", loan_previewlist);
		model.addAttribute("cutlist", cut_previewlist);
		return "/freamwork/registerbill/register_bill_view";
	}
}
