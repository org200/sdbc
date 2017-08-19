package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cm/")
public class LedgerViewController {
	//区块链预览
		@RequestMapping(value = "ledger_view")
		public String ledger_view(Model m){
			
			return "/freamwork/chainmanage/ledger_view";
		}
}
