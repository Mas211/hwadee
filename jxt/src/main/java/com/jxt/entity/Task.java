package com.jxt.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

//作业
public class Task {
	private Integer taskId;
	private String taskTitle;
	private String taskContent;
	@DateTimeFormat(pattern="MM/dd/yyyy")
	private Date taskBeginTime;
	@DateTimeFormat(pattern="MM/dd/yyyy")
	private Date taskDeadline;
	private Integer taskTeacherId;
	private String taskIsFinish;
	private Account account;
	
	public Integer getTaskId() {
		return taskId;
	}
	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}
	public String getTaskTitle() {
		return taskTitle;
	}
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	public String getTaskContent() {
		return taskContent;
	}
	public void setTaskContent(String taskContent) {
		this.taskContent = taskContent;
	}
	public Date getTaskBeginTime() {
		return taskBeginTime;
	}
	public void setTaskBeginTime(Date taskBeginTime) {
		this.taskBeginTime = taskBeginTime;
	}
	public Date getTaskDeadline() {
		return taskDeadline;
	}
	public void setTaskDeadline(Date taskDeadline) {
		this.taskDeadline = taskDeadline;
	}
	public Integer getTaskTeacherId() {
		return taskTeacherId;
	}
	public void setTaskTeacherId(Integer taskTeacherId) {
		this.taskTeacherId = taskTeacherId;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	
	public String getTaskIsFinish() {
		return taskIsFinish;
	}
	public void setTaskIsFinish(String taskIsFinish) {
		this.taskIsFinish = taskIsFinish;
	}
	
	@Override
	public String toString() {
		return "Task [taskId=" + taskId + ", taskTitle=" + taskTitle + ", taskContent=" + taskContent
				+ ", taskBeginTime=" + taskBeginTime + ", taskDeadline=" + taskDeadline + ", taskTeacherId="
				+ taskTeacherId + ", taskIsFinish=" + taskIsFinish + ", account=" + account + "]";
	}
}
