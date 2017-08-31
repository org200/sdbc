package com.sdbc.pojo;

public class LendRegisterBean {
	private String billNo;
	private String otherBillNo;
	private String myFuseBillNo;
	private String channel;
	private String collectionAccount;
	private String collectionName;
	private String loanAmount;
	private String otherLoanAmount;
	private String myLoanAmount;
	private String dealSequence;
	private String loanTimeDate;
	private String loanResult;
	private String resultFlag;
	private String loanStatus;

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

	public String getCollectionAccount() {
		return collectionAccount;
	}

	public void setCollectionAccount(String collectionAccount) {
		this.collectionAccount = collectionAccount;
	}

	public String getCollectionName() {
		return collectionName;
	}

	public void setCollectionName(String collectionName) {
		this.collectionName = collectionName;
	}

	public String getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(String loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getOtherLoanAmount() {
		return otherLoanAmount;
	}

	public void setOtherLoanAmount(String otherLoanAmount) {
		this.otherLoanAmount = otherLoanAmount;
	}

	public String getMyLoanAmount() {
		return myLoanAmount;
	}

	public void setMyLoanAmount(String myLoanAmount) {
		this.myLoanAmount = myLoanAmount;
	}

	public String getDealSequence() {
		return dealSequence;
	}

	public void setDealSequence(String dealSequence) {
		this.dealSequence = dealSequence;
	}

	public String getLoanTimeDate() {
		return loanTimeDate;
	}

	public void setLoanTimeDate(String loanTimeDate) {
		this.loanTimeDate = loanTimeDate;
	}

	public String getLoanResult() {
		return loanResult;
	}

	public void setLoanResult(String loanResult) {
		this.loanResult = loanResult;
	}

	public String getResultFlag() {
		return resultFlag;
	}

	public void setResultFlag(String resultFlag) {
		this.resultFlag = resultFlag;
	}

	public String getLoanStatus() {
		return loanStatus;
	}

	public void setLoanStatus(String loanStatus) {
		this.loanStatus = loanStatus;
	}

	@Override
	public String toString() {
		return "LengRegisterBean [billNo=" + billNo + ", otherBillNo=" + otherBillNo + ", myFuseBillNo=" + myFuseBillNo
				+ ", channel=" + channel + ", collectionAccount=" + collectionAccount + ", collectionName="
				+ collectionName + ", loanAmount=" + loanAmount + ", otherLoanAmount=" + otherLoanAmount
				+ ", myLoanAmount=" + myLoanAmount + ", dealSequence=" + dealSequence + ", loanTimeDate=" + loanTimeDate
				+ ", loanResult=" + loanResult + ", resultFlag=" + resultFlag + ", loanStatus=" + loanStatus + "]";
	}
}
