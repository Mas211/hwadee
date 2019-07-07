package com.jxt.service.impl;

import java.util.List;

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
	public int update(Attendance attendance) {
		// TODO Auto-generated method stub
		return attendanceMapper.update(attendance);
	}
	


	@Override
	public List<Attendance> findByPar(int parId) {
		// TODO Auto-generated method stub
		return attendanceMapper.findByPar(parId);
	}
	
	@Override
	public List<Attendance> findByStu(int stuId) {
		// TODO Auto-generated method stub
		return attendanceMapper.findByStu(stuId);
	}
	
	@Override
	public List<Attendance> findByClass(int classId) {
		// TODO Auto-generated method stub
		return attendanceMapper.findByClass(classId);
	}

	@Override
	public List<Attendance> findAll() {
		// TODO Auto-generated method stub
		return attendanceMapper.findAll();
	}

	@Override
	public Attendance getAttendanceById(int attendStuId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
