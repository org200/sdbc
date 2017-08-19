package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/rb/")
public class ReportController {
	@RequestMapping(value="report")
	public String Report_View(){
		
		return "/freamwork/registerbill/report_view";
	}
}
