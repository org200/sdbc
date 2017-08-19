package com.sdbc.dao;

public interface RightManageDao {
	public void removeresource(int typeid);
	public void giveresource(String resource_id,int typeid);
}
