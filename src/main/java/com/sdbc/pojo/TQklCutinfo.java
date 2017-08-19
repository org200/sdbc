package com.sdbc.pojo;

import java.util.Date;

public class TQklCutinfo {
    private Integer id;

    private String billno;

    private String otherbillno;

    private String channel;

    private String myfusebillno;

    private String repaymentaccount;

    private String repaymentname;

    private Double repaymentamount;

    private Double otheramount;

    private Double myrepaymentamount;

    private String repaymentsequence;

    private Date repaymenttimedate;

    private Integer repaymentresult;

    private Integer repaymentstatus;

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

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public String getMyfusebillno() {
        return myfusebillno;
    }

    public void setMyfusebillno(String myfusebillno) {
        this.myfusebillno = myfusebillno;
    }

    public String getRepaymentaccount() {
        return repaymentaccount;
    }

    public void setRepaymentaccount(String repaymentaccount) {
        this.repaymentaccount = repaymentaccount;
    }

    public String getRepaymentname() {
        return repaymentname;
    }

    public void setRepaymentname(String repaymentname) {
        this.repaymentname = repaymentname;
    }

    public Double getRepaymentamount() {
        return repaymentamount;
    }

    public void setRepaymentamount(Double repaymentamount) {
        this.repaymentamount = repaymentamount;
    }

    public Double getOtheramount() {
        return otheramount;
    }

    public void setOtheramount(Double otheramount) {
        this.otheramount = otheramount;
    }

    public Double getMyrepaymentamount() {
        return myrepaymentamount;
    }

    public void setMyrepaymentamount(Double myrepaymentamount) {
        this.myrepaymentamount = myrepaymentamount;
    }

    public String getRepaymentsequence() {
        return repaymentsequence;
    }

    public void setRepaymentsequence(String repaymentsequence) {
        this.repaymentsequence = repaymentsequence;
    }

    public Date getRepaymenttimedate() {
        return repaymenttimedate;
    }

    public void setRepaymenttimedate(Date repaymenttimedate) {
        this.repaymenttimedate = repaymenttimedate;
    }

    public Integer getRepaymentresult() {
        return repaymentresult;
    }

    public void setRepaymentresult(Integer repaymentresult) {
        this.repaymentresult = repaymentresult;
    }

    public Integer getRepaymentstatus() {
        return repaymentstatus;
    }

    public void setRepaymentstatus(Integer repaymentstatus) {
        this.repaymentstatus = repaymentstatus;
    }
}