package com.sdbc.pojo;

public class PaymentRegisterBean {
	private String billNo;
	private String otherBillNo;
	private String myFuseBillNo;
	private String channel;
	private String repaymentAccount;
	private String repaymentName;
	private String repaymentAmount;
	private String otherAmount;
	private String myRepaymentAmount;
	private String repaymentSequence;
	private String repaymentTimeDate;
	private String repaymentResult;
	// private String resultFlag;
	private String repaymentStatus;

	public String getBillNo() {
		return billNo;
	}

	public void setBillNo(String billNo) {
		this.billNo = billNo;
	}

	public String getOtherBillNo() {
		return otherBillNo;
	}

	public void setOtherBillNo(String otherBillNo) {
		this.otherBillNo = otherBillNo;
	}

	public String getMyFuseBillNo() {
		return myFuseBillNo;
	}

	public void setMyFuseBillNo(String myFuseBillNo) {
		this.myFuseBillNo = myFuseBillNo;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public String getRepaymentAccount() {
		return repaymentAccount;
	}

	public void setRepaymentAccount(String repaymentAccount) {
		this.repaymentAccount = repaymentAccount;
	}

	public String getRepaymentName() {
		return repaymentName;
	}

	public void setRepaymentName(String repaymentName) {
		this.repaymentName = repaymentName;
	}

	public String getRepaymentAmount() {
		return repaymentAmount;
	}

	public void setRepaymentAmount(String repaymentAmount) {
		this.repaymentAmount = repaymentAmount;
	}

	public String getOtherAmount() {
		return otherAmount;
	}

	public void setOtherAmount(String otherAmount) {
		this.otherAmount = otherAmount;
	}

	public String getMyRepaymentAmount() {
		return myRepaymentAmount;
	}

	public void setMyRepaymentAmount(String myRepaymentAmount) {
		this.myRepaymentAmount = myRepaymentAmount;
	}

	public String getRepaymentSequence() {
		return repaymentSequence;
	}

	public void setRepaymentSequence(String repaymentSequence) {
		this.repaymentSequence = repaymentSequence;
	}

	public String getRepaymentTimeDate() {
		return repaymentTimeDate;
	}

	public void setRepaymentTimeDate(String repaymentTimeDate) {
		this.repaymentTimeDate = repaymentTimeDate;
	}

	public String getRepaymentResult() {
		return repaymentResult;
	}

	public void setRepaymentResult(String repaymentResult) {
		this.repaymentResult = repaymentResult;
	}

	public String getRepaymentStatus() {
		return repaymentStatus;
	}

	public void setRepaymentStatus(String repaymentStatus) {
		this.repaymentStatus = repaymentStatus;
	}

	@Override
	public String toString() {
		return "PaymentRegisterBean [billNo=" + billNo + ", otherBillNo=" + otherBillNo + ", myFuseBillNo="
				+ myFuseBillNo + ", channel=" + channel + ", repaymentAccount=" + repaymentAccount + ", repaymentName="
				+ repaymentName + ", repaymentAmount=" + repaymentAmount + ", otherAmount=" + otherAmount
				+ ", myRepaymentAmount=" + myRepaymentAmount + ", repaymentSequence=" + repaymentSequence
				+ ", repaymentTimeDate=" + repaymentTimeDate + ", repaymentResult=" + repaymentResult
				+ ", repaymentStatus=" + repaymentStatus + "]";
	}

}
