package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//还款登记簿查询
@Controller
@RequestMapping(value = "/rb/")
public class PaymentQueryController {
	@RequestMapping(value="payment_query")
	public String PaymentQuery_View(){
		
		return "/freamwork/registerbill/paymentquery_view";
	}
}
