package com.jxt.entity;

import java.sql.Timestamp;

//作业
public class Task {
	private Integer taskId;
	private String taskTitle;
	private String taskContent;
	private Timestamp taskBeginTime;
	private Timestamp taskDeadline;
	
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
	public Timestamp getTaskBeginTime() {
		return taskBeginTime;
	}
	public void setTaskBeginTime(Timestamp taskBeginTime) {
		this.taskBeginTime = taskBeginTime;
	}
	public Timestamp getTaskDeadline() {
		return taskDeadline;
	}
	public void setTaskDeadline(Timestamp taskDeadline) {
		this.taskDeadline = taskDeadline;
	}
}
