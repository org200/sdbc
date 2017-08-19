package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cm/")
public class ChainViewController {

	//区块链预览
	@RequestMapping(value = "chain_view")
	public String chain_view(Model m){
		
		return "/freamwork/chainmanage/chain_view";
	}
}
