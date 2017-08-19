package com.sdbc.pojo;

public class TQklSysPerson {
    private Integer userid;

    private String username;

    private Integer typeid;

    private Integer status;

    private String userpasswd;
    
    private String bank_id;
    
    private String typename;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }


	public String getUserpasswd() {
		return userpasswd;
	}

	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}

	public String getBank_id() {
		return bank_id;
	}

	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	@Override
	public String toString() {
		return "TQklSysPerson [userid=" + userid + ", username=" + username + ", typeid=" + typeid + ", status="
				+ status + ", userpasswd=" + userpasswd + ", bank_id=" + bank_id + ", typename=" + typename + "]";
	}

	
}