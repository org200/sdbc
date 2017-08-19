package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cm/")
public class PeerMonitorController {

	//区块链预览
		@RequestMapping(value = "peer_view")
		public String peer_view(Model m){
			
			return "/freamwork/chainmanage/peer_view";
		}
}
