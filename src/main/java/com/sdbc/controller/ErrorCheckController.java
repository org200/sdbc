package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//差错处理
@Controller
@RequestMapping(value = "/rb/")
public class ErrorCheckController {
	@RequestMapping(value="error_check")
	public String ErrorCheck_View(){
		
		return "/freamwork/registerbill/errorcheck_view";
	}
}
