package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Grade;
import com.jxt.mapper.GradeMapper;
import com.jxt.service.GradeService;

@Service
public class GradeServiceImpl implements GradeService {
	@Autowired
	private GradeMapper gradeMapper;

	@Override
	public int add(Grade grade) {
		// TODO Auto-generated method stub
		int rows = gradeMapper.insert(grade);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return grade.getGradeId();
	}

	@Override
	public int delete(int gradeId) {
		// TODO Auto-generated method stub
		return gradeMapper.delete(gradeId);
	}

	@Override
	public List<Grade> getGradeById(int stuId) {
		// TODO Auto-generated method stub
		return gradeMapper.findById(stuId);
	}

	@Override
	public int update(Grade grade) {
		// TODO Auto-generated method stub
		return gradeMapper.update(grade);
	}

	@Override
	public List<Grade> grades() {
		// TODO Auto-generated method stub
		return gradeMapper.findAll();
	}

	@Override
	public int getStuIdByParId(int parId) {
		// TODO Auto-generated method stub
		return gradeMapper.findByParId(parId);
	}

}
