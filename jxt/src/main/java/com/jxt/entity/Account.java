package com.jxt.entity;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;


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
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date lastLogTime;
	
	public Date getLastLogTime() {
		return lastLogTime;
	}
	public void setLastLogTime(Date lastLogTime) {
		this.lastLogTime = lastLogTime;
	}
	
	
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
	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", roleId=" + roleId + ", accountPassword=" + accountPassword
				+ ", accountName=" + accountName + ", accountSex=" + accountSex + ", accountPhone=" + accountPhone
				+ ", accountAddress=" + accountAddress + ", parId=" + parId + ", accountClassId=" + accountClassId
				+ ", tSubject=" + tSubject + ", lastLogTime=" + lastLogTime + "]";
	}
	
	
}
