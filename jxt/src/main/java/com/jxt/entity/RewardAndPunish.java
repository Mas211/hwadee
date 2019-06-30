package com.jxt.entity;

import java.sql.Timestamp;

//奖罚
public class RewardAndPunish {
	private Integer rewardAndPunisId;
	private Integer rewardOrPunis;			//奖 还是 罚
	private Integer rpStuId;
	private String rpContent;
	private Timestamp rpTime;
	
	public Integer getRewardAndPunisId() {
		return rewardAndPunisId;
	}
	public void setRewardAndPunisId(Integer rewardAndPunisId) {
		this.rewardAndPunisId = rewardAndPunisId;
	}
	public Integer getRewardOrPunis() {
		return rewardOrPunis;
	}
	public void setRewardOrPunis(Integer rewardOrPunis) {
		this.rewardOrPunis = rewardOrPunis;
	}
	public Integer getRpStuId() {
		return rpStuId;
	}
	public void setRpStuId(Integer rpStuId) {
		this.rpStuId = rpStuId;
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
