package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Attendance;

public interface AttendanceMapper {
	//增
	int insert(Attendance attendance);
		
	//删
	int delete(int attendanceId);

	//查
	Attendance findById(int attendStuId);
		
	//改
	int update(Attendance attendance);
	
    List<Attendance> findByPar(int parId);
	
	List<Attendance> findByStu(int stuId);
	
	List<Attendance> findAll();
}
