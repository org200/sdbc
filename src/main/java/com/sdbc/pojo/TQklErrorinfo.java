package com.sdbc.pojo;

import java.util.Date;

public class TQklErrorinfo {
    private Integer id;

    private String dealSequence;

    private String channel;

    private Date dealTime;

    private Date discoveryTime;

    private String billno;

    private Integer type;

    private Integer isnotice;

    private Date noticeTime;

    private Integer errorDetail;

    private String note;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDealSequence() {
        return dealSequence;
    }

    public void setDealSequence(String dealSequence) {
        this.dealSequence = dealSequence;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public Date getDealTime() {
        return dealTime;
    }

    public void setDealTime(Date dealTime) {
        this.dealTime = dealTime;
    }

    public Date getDiscoveryTime() {
        return discoveryTime;
    }

    public void setDiscoveryTime(Date discoveryTime) {
        this.discoveryTime = discoveryTime;
    }

    public String getBillno() {
        return billno;
    }

    public void setBillno(String billno) {
        this.billno = billno;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getIsnotice() {
        return isnotice;
    }

    public void setIsnotice(Integer isnotice) {
        this.isnotice = isnotice;
    }

    public Date getNoticeTime() {
        return noticeTime;
    }

    public void setNoticeTime(Date noticeTime) {
        this.noticeTime = noticeTime;
    }

    public Integer getErrorDetail() {
        return errorDetail;
    }

    public void setErrorDetail(Integer errorDetail) {
        this.errorDetail = errorDetail;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}