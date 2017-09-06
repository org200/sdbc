package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.pojo.LendRegisterBean;
import com.sdbc.socket.SimpleClient;
import com.sdbc.socket.SimpleServer;

//借款登记簿查询
@Controller
@RequestMapping(value = "/lr/")
public class LendRegisterController {
	@RequestMapping(value = "lend_register")
	public String lendRegister_view() {
		return "/freamwork/loanregister/lendregister_view";
	}

	@RequestMapping(value = "lendregister_parm")
	public String lendregister_parm(Model m, LendRegisterBean lrb) throws Exception {

		String billNo = lrb.getBillNo().toString();

		String otherBillNo = lrb.getOtherBillNo();

		String myFuseBillNo = lrb.getMyFuseBillNo();
		String channel = lrb.getChannel();
		String collectionAccount = lrb.getCollectionAccount();
		String collectionName = lrb.getCollectionName();
		String loanAmount = lrb.getLoanAmount();
		String otherLoanAmount = lrb.getOtherLoanAmount();
		String myLoanAmount = lrb.getMyLoanAmount();
		String dealSequence = lrb.getDealSequence();
		String loanTimeDate = lrb.getLoanTimeDate();
		String loanResult = lrb.getLoanResult();
		String resultFlag = lrb.getResultFlag();
		String loanStatus = lrb.getLoanStatus();

		 String value_lendregister="<?xml version=\"1.0\"encoding=\"UTF-8\"?>"
		 + "<Transaction>"
		 + "<HEAD><SEQ_NO>1495781249650842</SEQ_NO>"
		 + "<SERVICE_ID>WDGL0012</SERVICE_ID>"
		 + "<CHANNEL_ID>8118</CHANNEL_ID>"
		 + "<BANK_CODE>9901</BANK_CODE>"
		 + "<USER_ID/>"
		 + "<AUTH_ID/>"
		 + "<TRAN_DATE>20170526</TRAN_DATE>"
		 + "<TRAN_TIME>144729</TRAN_TIME>"
		 + "<TRAN_TERM/>"
		 + "<EXT_HEAD>"
		 + "<MAC_INDEX/>"
		 + "<MAC_VALUE/>"
		 + "</EXT_HEAD></HEAD>"
		 + "<BODY>"
		 + "<billNo>"+billNo+"</billNo>"
		 + "<otherBillNo>"+otherBillNo+"</otherBillNo>"
		 + "<myFuseBillNo>"+myFuseBillNo+"</myFuseBillNo>"
		 + "<channel>"+channel+"</channel>"
		 + "<collectionAccount>"+collectionAccount+"</collectionAccount>"
		 + "<collectionName>"+collectionName+"</collectionName>"
		 + "<loanAmount>"+loanAmount+"</loanAmount>"
		 + "<otherLoanAmount>"+otherLoanAmount+"</otherLoanAmount>"
		 + "<myLoanAmount>"+myLoanAmount+"</myLoanAmount>"
		 + "<dealSequence>"+dealSequence+"</dealSequence>"
		 + "<loanTimeDate>"+loanTimeDate+"</loanTimeDate>"
		 + "<loanResult>"+loanResult+"</loanResult>"
		 + "<resultFlag>"+resultFlag+"</resultFlag>"
		 + "<loanStatus>"+loanStatus+"</loanStatus>"
		 + "</BODY></Transaction>";


		SimpleClient client = new SimpleClient();
		client.connect(value_lendregister, "172.16.10.249", 18008);
		return "/freamwork/loanregister/lendregister_view";
	}
	

}