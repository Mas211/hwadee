package com.jxt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jxt.entity.Notice;

@Controller
@RequestMapping(value = "/MessageCenter")
public class NoticeController {

	@Autowired
	private NoticeController noticeController;
	
	@RequestMapping(value = "/NewsNotices")
	public String listNotices(Model model) {
		//List<Notice> newsNotes = noticeController.listNotices();
		//model.addAttribute("newsNotesList", newsNotes);
		return "MessageCenter/MyNotices";
	}
	
	public String deleteNotice() {
		
		return "MessageCenter/MyNotices";
	}
}
