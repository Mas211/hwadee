package com.jxt.entity;

//成绩
public class Grade {
	private Integer gradeId;
	private Integer gradeTId;
	private Integer gradeStuId;
	private Integer grade;
	private String gradeSubject;
	private String gradeStuName;
	private String gradeTName;
	private Account account;
	
	public Integer getGradeId() {
		return gradeId;
	}
	public void setGradeId(Integer gradeId) {
		this.gradeId = gradeId;
	}
	public Integer getGradeTId() {
		return gradeTId;
	}
	public void setGradeTId(Integer gradeTId) {
		this.gradeTId = gradeTId;
	}
	public Integer getGradeStuId() {
		return gradeStuId;
	}
	public void setGradeStuId(Integer gradeStuId) {
		this.gradeStuId = gradeStuId;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getGradeSubject() {
		return gradeSubject;
	}
	public void setGradeSubject(String gradeSubject) {
		this.gradeSubject = gradeSubject;
	}
	public String getGradeStuName() {
		return gradeStuName;
	}
	public void setGradeStuName(String gradeStuName) {
		this.gradeStuName = gradeStuName;
	}
	public String getGradeTName() {
		return gradeTName;
	}
	public void setGradeTName(String gradeTName) {
		this.gradeTName = gradeTName;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
}
