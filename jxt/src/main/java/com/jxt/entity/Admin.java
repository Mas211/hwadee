package com.jxt.entity;

public class Admin {
	private Integer adminId;
	private String adminName;
	private String adminPassword;
	private Integer adminAuthLevel;

	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Integer getAdminAuthLevel() {
		return adminAuthLevel;
	}
	public void setAdminAuthLevel(Integer adminAuthLevel) {
		this.adminAuthLevel = adminAuthLevel;
	}
	
}
