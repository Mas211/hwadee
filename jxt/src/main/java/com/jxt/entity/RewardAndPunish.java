package com.jxt.entity;

import java.sql.Timestamp;

//奖罚
public class RewardAndPunish {
	private Integer rewardAndPunishId;
	private Integer rewardOrPunish;			//奖 还是 罚
	private Integer rpStuId;
	private Integer rpTId;
	private String rpContent;
	private Timestamp rpTime;
	
	private Account account;
	
	
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public Integer getRewardAndPunishId() {
		return rewardAndPunishId;
	}
	public void setRewardAndPunishId(Integer rewardAndPunishId) {
		this.rewardAndPunishId = rewardAndPunishId;
	}
	public Integer getRewardOrPunish() {
		return rewardOrPunish;
	}
	public void setRewardOrPunish(Integer rewardOrPunish) {
		this.rewardOrPunish = rewardOrPunish;
	}
	public Integer getRpStuId() {
		return rpStuId;
	}
	public void setRpStuId(Integer rpStuId) {
		this.rpStuId = rpStuId;
	}
	public Integer getRpTId() {
		return rpTId;
	}
	public void setRpTId(Integer rpTId) {
		this.rpTId = rpTId;
	}
	public String getRpContent() {
		return rpContent;
	}
	public void setRpContent(String rpContent) {
		this.rpContent = rpContent;
	}
	public Timestamp getRpTime() {
		return rpTime;
	}
	public void setRpTime(Timestamp rpTime) {
		this.rpTime = rpTime;
	}
	
	
}
