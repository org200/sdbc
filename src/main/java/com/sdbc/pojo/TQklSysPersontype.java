package com.sdbc.pojo;

public class TQklSysPersontype {
    private Integer id;

    private Integer typeid;

    private String typename;

    private Integer status;

    private String note;

    private String bankId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getBankId() {
        return bankId;
    }

    public void setBankId(String bankId) {
        this.bankId = bankId;
    }

	@Override
	public String toString() {
		return "TQklSysPersontype [id=" + id + ", typeid=" + typeid + ", typename=" + typename + ", status=" + status
				+ ", note=" + note + ", bankId=" + bankId + "]";
	}
    
    
}