package com.jxt.service;

import java.util.List;

import com.jxt.entity.Attendance;
import com.jxt.entity.RewardAndPunish;

public interface AttendanceService {
	// 增
	int add(Attendance attendance);

	// 删
	int delete(int attendanceId);

	// 查
	Attendance getAttendanceById(int attendStuId);

	// 改
	int update(Attendance attendance);
	
	
    List<Attendance> findByPar(int parId);
	
	List<Attendance> findByStu(int stuId);
	
	List<Attendance> findByClass(int classId);

	List<Attendance> findAll();
}
