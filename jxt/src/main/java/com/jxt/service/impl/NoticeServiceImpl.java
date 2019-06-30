package com.jxt.service.impl;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> d6c89d24e8179f25f55041632cc34efde146caac
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Notice;
<<<<<<< HEAD
import com.jxt.service.NoticeService;

 @Service
public class NoticeServiceImpl implements NoticeService {

	 @Autowired
	 private NoticeMapper noticeMapper;

	@Override
	public List<Notice> findAll() {
		// TODO Auto-generated method stub
		return noticeMapper.findAll();
	}


	@Override
	public int delete(int noticeId) {
		// TODO Auto-generated method stub
		return noticeMapper.delete();
	}
	 
	
	
=======
import com.jxt.mapper.NoticeMapper;
import com.jxt.service.NoticeService;

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

>>>>>>> d6c89d24e8179f25f55041632cc34efde146caac
}
