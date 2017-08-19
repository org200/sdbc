package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//借款登记簿查询
@Controller
@RequestMapping(value = "/rb/")
public class LendQueryController {
	@RequestMapping(value="lendquery")
	public String lendquery_view(){
		return "/freamwork/registerbill/lendquery_view";
	}
}
