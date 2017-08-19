package com.sdbc.pojo;

public class TQklSysResource {
    private String name;

    private String mid;

    private String pid;

    private String url;

    private String note;

    private Integer menuLevel;
    
    private Integer typeid;

    private String resourceId;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Integer getMenuLevel() {
        return menuLevel;
    }

    public void setMenuLevel(Integer menuLevel) {
        this.menuLevel = menuLevel;
    }

	public Integer getTypeid() {
		return typeid;
	}

	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}

	public String getResourceId() {
		return resourceId;
	}

	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}

	@Override
	public String toString() {
		return "TQklSysResource [name=" + name + ", mid=" + mid + ", pid=" + pid + ", url=" + url + ", note=" + note
				+ ", menuLevel=" + menuLevel + ", typeid=" + typeid + ", resourceId=" + resourceId + "]";
	}
    
}