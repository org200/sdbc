package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//登记簿总览
@Controller
@RequestMapping(value = "/rb/")
public class RegisterBillViewController {
	@RequestMapping(value="register_bill_view")
	public String RegisterBillView(Model model){
		
		return "/freamwork/registerbill/register_bill_view";
	}
}
