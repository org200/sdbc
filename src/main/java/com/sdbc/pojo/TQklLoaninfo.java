package com.sdbc.pojo;

import java.util.Date;

public class TQklLoaninfo {
    private Integer id;

    private String billno;

    private String otherbillno;

    private String myfusebillno;

    private String channel;

    private String collectionaccount;

    private String collectionname;

    private Double loanamount;

    private Double otherloanamount;

    private Double myloanamount;

    private String dealsequence;

    private Date loantimedate;

    private Integer loanresult;

    private String loanstatus;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno;
    }

    public String getOtherbillno() {
        return otherbillno;
    }

    public void setOtherbillno(String otherbillno) {
        this.otherbillno = otherbillno;
    }

    public String getMyfusebillno() {
        return myfusebillno;
    }

    public void setMyfusebillno(String myfusebillno) {
        this.myfusebillno = myfusebillno;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public String getCollectionaccount() {
        return collectionaccount;
    }

    public void setCollectionaccount(String collectionaccount) {
        this.collectionaccount = collectionaccount;
    }

    public String getCollectionname() {
        return collectionname;
    }

    public void setCollectionname(String collectionname) {
        this.collectionname = collectionname;
    }

    public Double getLoanamount() {
        return loanamount;
    }

    public void setLoanamount(Double loanamount) {
        this.loanamount = loanamount;
    }

    public Double getOtherloanamount() {
        return otherloanamount;
    }

    public void setOtherloanamount(Double otherloanamount) {
        this.otherloanamount = otherloanamount;
    }

    public Double getMyloanamount() {
        return myloanamount;
    }

    public void setMyloanamount(Double myloanamount) {
        this.myloanamount = myloanamount;
    }

    public String getDealsequence() {
        return dealsequence;
    }

    public void setDealsequence(String dealsequence) {
        this.dealsequence = dealsequence;
    }

    public Date getLoantimedate() {
        return loantimedate;
    }

    public void setLoantimedate(Date loantimedate) {
        this.loantimedate = loantimedate;
    }

    public Integer getLoanresult() {
        return loanresult;
    }

    public void setLoanresult(Integer loanresult) {
        this.loanresult = loanresult;
    }

    public String getLoanstatus() {
        return loanstatus;
    }

    public void setLoanstatus(String loanstatus) {
        this.loanstatus = loanstatus;
    }
}