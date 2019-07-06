package com.jxt.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Announce;
import com.jxt.service.AnnounceService;
	
import com.jxt.mapper.AnnounceMapper;

@Service
public class AnnounceServiceImpl implements AnnounceService {
	@Autowired
	private AnnounceMapper announceMapper;

	@Override
	public int add(Announce announce) {
		// TODO Auto-generated method stub
		int rows = announceMapper.insert(announce);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return announce.getAnnounceId();
	}

	@Override
	public int delete(int announceId) {
		// TODO Auto-generated method stub
		return announceMapper.delete(announceId);
	}

	@Override
	public Announce getAnnounceById(int announceId) {
		// TODO Auto-generated method stub
		return announceMapper.findById(announceId);
	}

	@Override
	public int update(Announce announce) {
		// TODO Auto-generated method stub
		return announceMapper.update(announce);
	}

	@Override
	public List<Announce> findAll() {
		// TODO Auto-generated method stub
		return announceMapper.findAll();
	}

	@Override
	public int getRows() {
		// TODO Auto-generated method stub
		return announceMapper.getRows();
	}

	@Override
	public List<Announce> getPageAnnounce(int start) {
		// TODO Auto-generated method stub
		return announceMapper.getPageAnnounce(start);
	}

	@Override
	public int setTop(int announceId) {
		// TODO Auto-generated method stub
		return announceMapper.setTop(announceId);
	}

	@Override
	public int cancelTop(int announceId) {
		// TODO Auto-generated method stub
		return announceMapper.cancelTop(announceId);
	}

	@Override
	public List<Announce> getTop() {
		// TODO Auto-generated method stub
		return announceMapper.getTop();
	}

}
