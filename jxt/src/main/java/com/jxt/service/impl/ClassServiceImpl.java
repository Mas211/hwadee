package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Class;
import com.jxt.mapper.ClassMapper;
import com.jxt.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService {
	@Autowired
	private ClassMapper classMapper;

	@Override
	public int add(Class class1) {
		// TODO Auto-generated method stub
		int rows = classMapper.insert(class1);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return class1.getClassId();
	}

	@Override
	public int delete(int classId) {
		// TODO Auto-generated method stub
		return classMapper.delete(classId);
	}

	@Override
	public Class getClassById(int classId) {
		// TODO Auto-generated method stub
		return classMapper.findById(classId);
	}

	@Override
	public int update(Class class1) {
		// TODO Auto-generated method stub
		return classMapper.update(class1);
	}

}
