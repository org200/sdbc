package com.sdbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdbc.pojo.LendRegisterBean;
import com.sdbc.pojo.PaymentRegisterBean;
import com.sdbc.socket.SimpleClient;

//还款登记簿查询
@Controller
@RequestMapping(value = "/lr/")
public class PayMentRegisterController {
	@RequestMapping(value="payment_register")
	public String paymentRegister_View(){
		
		return "/freamwork/loanregister/paymentregister_view";
	}
	@RequestMapping(value = "paymentregister_parm")
	public String paymentregister_parm(Model m, PaymentRegisterBean prb) throws Exception {

		String billNo = prb.getBillNo().toString();

		String otherBillNo = prb.getOtherBillNo();

		String myFuseBillNo = prb.getMyFuseBillNo();
		String channel = prb.getChannel();
		String repaymentName = prb.getRepaymentName();
		String repaymentAccount = prb.getRepaymentAccount();
		String  repaymentAmount= prb.getRepaymentAmount();
		String otherAmount = prb.getOtherAmount();
		String myRepaymentAmount = prb.getMyRepaymentAmount();
		String repaymentSequence = prb.getRepaymentSequence();
		String repaymentTimeDate = prb.getRepaymentTimeDate();
		String repaymentResult = prb.getRepaymentResult();
		String repaymentStatus = prb.getRepaymentStatus();

		 String value_paymentregister="<?xml version=\"1.0\"encoding=\"UTF-8\"?>"
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
		 + "<repaymentAccount>"+repaymentAccount+"</repaymentAccount>"
		 + "<repaymentName>"+repaymentName+"</repaymentName>"
		 + "<repaymentAmount>"+repaymentAmount+"</repaymentAmount>"
		 + "<otherAmount>"+otherAmount+"</otherAmount>"
		 + "<myRepaymentAmount>"+myRepaymentAmount+"</myRepaymentAmount>"
		 + "<repaymentSequence>"+repaymentSequence+"</repaymentSequence>"
		 + "<repaymentTimeDate>"+repaymentTimeDate+"</repaymentTimeDate>"
		 + "<repaymentResult>"+repaymentResult+"</repaymentResult>"
		 + "<repaymentStatus>"+repaymentStatus+"</repaymentStatus>"
		 + "</BODY></Transaction>";


		SimpleClient client = new SimpleClient();
		client.connect(value_paymentregister, "172.16.10.249", 18008);
		return "/freamwork/loanregister/lendregister_view";
	}
	
	
	
	
	
}
