package com.jxt.entity;

public class Account {
	private Integer accountId;
	private Integer roleId;
	private String accountPassword;
	private String accountName;
	private String accountSex;
	private String accountPhone;
	private String accountAddress;
	private Integer parId;
	private Integer accountClassId;
	private String tSubject;
	
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getAccountPassword() {
		return accountPassword;
	}
	public void setAccountPassword(String accountPassword) {
		this.accountPassword = accountPassword;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getAccountSex() {
		return accountSex;
	}
	public void setAccountSex(String accountSex) {
		this.accountSex = accountSex;
	}
	public String getAccountPhone() {
		return accountPhone;
	}
	public void setAccountPhone(String accountPhone) {
		this.accountPhone = accountPhone;
	}
	public String getAccountAddress() {
		return accountAddress;
	}
	public void setAccountAddress(String accountAddress) {
		this.accountAddress = accountAddress;
	}
	public Integer getParId() {
		return parId;
	}
	public void setParId(Integer parId) {
		this.parId = parId;
	}
	public Integer getAccountClassId() {
		return accountClassId;
	}
	public void setAccountClassId(Integer accountClassId) {
		this.accountClassId = accountClassId;
	}
	public String gettSubject() {
		return tSubject;
	}
	public void settSubject(String tSubject) {
		this.tSubject = tSubject;
	}
}
