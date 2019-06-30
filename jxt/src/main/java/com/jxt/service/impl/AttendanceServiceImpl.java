package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Attendance;
import com.jxt.mapper.AttendanceMapper;
import com.jxt.service.AttendanceService;

@Service
public class AttendanceServiceImpl implements AttendanceService {
	@Autowired
	private AttendanceMapper attendanceMapper;

	@Override
	public int add(Attendance attendance) {
		// TODO Auto-generated method stub
		int rows = attendanceMapper.insert(attendance);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return attendance.getAttendId();
	}

	@Override
	public int delete(int attendanceId) {
		// TODO Auto-generated method stub
		return attendanceMapper.delete(attendanceId);
	}

	@Override
	public Attendance getAttendanceById(int attendanceId) {
		// TODO Auto-generated method stub
		return attendanceMapper.findById(attendanceId);
	}

	@Override
	public int update(Attendance attendance) {
		// TODO Auto-generated method stub
		return attendanceMapper.update(attendance);
	}

	
}
