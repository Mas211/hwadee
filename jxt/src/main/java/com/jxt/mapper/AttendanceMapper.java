package com.jxt.mapper;

import com.jxt.entity.Attendance;

public interface AttendanceMapper {
	//增
	int insert(Attendance attendance);
		
	//删
	int delete(int attendanceId);

	//查
	Attendance findById(int attendanceId);
		
	//改
	int update(Attendance attendance);
}
