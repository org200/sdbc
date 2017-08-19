package com.sdbc.pojo;

import java.util.Date;

public class TQklLoanstat {
    private Integer id;

    private String channel;

    private Integer type;

    private Date saveDate;

    private Date saveTime;

    private Integer interval;

    private Integer loanNum;

    private Double loanSum;

    private Double jsLoanSum;

    private Double coLoanSum;

    private Integer registerNum;

    private Integer errorNum;

    private Double errorSum;

    private String note;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChannel() {
        return channel;
    }

    public void setChannel(String channel) {
        this.channel = channel;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getSaveDate() {
        return saveDate;
    }

    public void setSaveDate(Date saveDate) {
        this.saveDate = saveDate;
    }

    public Date getSaveTime() {
        return saveTime;
    }

    public void setSaveTime(Date saveTime) {
        this.saveTime = saveTime;
    }

    public Integer getInterval() {
        return interval;
    }

    public void setInterval(Integer interval) {
        this.interval = interval;
    }

    public Integer getLoanNum() {
        return loanNum;
    }

    public void setLoanNum(Integer loanNum) {
        this.loanNum = loanNum;
    }

    public Double getLoanSum() {
        return loanSum;
    }

    public void setLoanSum(Double loanSum) {
        this.loanSum = loanSum;
    }

    public Double getJsLoanSum() {
        return jsLoanSum;
    }

    public void setJsLoanSum(Double jsLoanSum) {
        this.jsLoanSum = jsLoanSum;
    }

    public Double getCoLoanSum() {
        return coLoanSum;
    }

    public void setCoLoanSum(Double coLoanSum) {
        this.coLoanSum = coLoanSum;
    }

    public Integer getRegisterNum() {
        return registerNum;
    }

    public void setRegisterNum(Integer registerNum) {
        this.registerNum = registerNum;
    }

    public Integer getErrorNum() {
        return errorNum;
    }

    public void setErrorNum(Integer errorNum) {
        this.errorNum = errorNum;
    }

    public Double getErrorSum() {
        return errorSum;
    }

    public void setErrorSum(Double errorSum) {
        this.errorSum = errorSum;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}