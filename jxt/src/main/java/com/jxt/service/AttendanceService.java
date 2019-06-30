package com.jxt.service;

import com.jxt.entity.Attendance;

public interface AttendanceService {
	// 增
	int add(Attendance attendance);

	// 删
	int delete(int attendanceId);

	// 查
	Attendance getAttendanceById(int attendanceId);

	// 改
	int update(Attendance attendance);
}
