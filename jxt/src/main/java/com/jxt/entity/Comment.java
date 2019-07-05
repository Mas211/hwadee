package com.jxt.entity;

public class Comment {

	private String commentId;
	private String teacherName;
	private String studentName;
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	private String comment;
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	@Override
	public String toString() {
		return "Comment [teacherName=" + teacherName + ", studentName=" + studentName
				+ ", comment=" + comment + "]";
	}

	
	
	
}
