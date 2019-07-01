package com.jxt.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Notice;
import com.jxt.service.NoticeService;
	
import com.jxt.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public int add(Notice notice) {
		// TODO Auto-generated method stub
		int rows = noticeMapper.insert(notice);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return notice.getNoticeId();
	}

	@Override
	public int delete(int noticeId) {
		// TODO Auto-generated method stub
		return noticeMapper.delete(noticeId);
	}

	@Override
	public Notice getNoticeById(int noticeId) {
		// TODO Auto-generated method stub
		return noticeMapper.findById(noticeId);
	}

	@Override
	public int update(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.update(notice);
	}

}
