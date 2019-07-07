package com.jxt.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jxt.entity.Announce;
import com.jxt.entity.Message;
import com.jxt.service.AnnounceService;
import com.jxt.service.MessageService;

@Controller
public class AnnounceController {

	@Autowired
	private AnnounceService announceService;
	
	@Autowired
	private MessageService ms;
	
	@GetMapping("/u/createAnnounce")
	public String get() {
		
		return "announce/announceEditor";
		
	}
	
	@PostMapping("/u/createAnnounce")
	public String insertNews(Announce announce) {
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		announce.setAnnounceTime(time);
		announce.setAnnounceModified(time);
				
		announceService.add(announce);
		
		Message m = new Message();
		m.setMessageType(1);
		m.setMessageContent(announce.getAnnounceTitle());
		m.setMessagePath("/announce/" + announce.getAnnounceId());
		Date date = announce.getAnnounceTime();
		m.setTime(date);
		ms.add(m);
		
		return "redirect:/u/announceManage";
	}
	
	@GetMapping("/announce/{id}")
	public String showNews(@PathVariable("id") int id, Model model) {
		Announce announce = announceService.getAnnounceById(id);
		model.addAttribute("announce", announce);

		return "announce/announceDetail";
	}
	
	@GetMapping("/u/announceManage")
	public String newsList(Model model) {
		List<Announce> announce = announceService.findAll();
		model.addAttribute("announce", announce);
		
		return "announce/announceManage";
	}
	
	@GetMapping("/u/updateAnnounce/{id}")
	public String updateNews(@PathVariable("id") int id, Model model) {
		Announce announce = announceService.getAnnounceById(id);
		model.addAttribute("announce", announce);

		return "announce/updateAnnounce";
	}
	
	@PostMapping("/u/updateAnnounce/{id}")
	public String checkUpdate(Announce announce, HttpServletRequest request) {
		//更新修改时间
		announce.setAnnounceModified(new Timestamp(System.currentTimeMillis()));
		
		announceService.update(announce);
		
		return "redirect:/u/announceManage";
	}
	
	@GetMapping("/u/deleteAnnounce/{id}")
	public String deleteNews(@PathVariable("id") int id, HttpServletRequest request) {
		
		announceService.delete(id);
		
		return "redirect:/u/announceManage";
	}
	
	@GetMapping("/announceList/{pageId}")
	public String newsList(@PathVariable("pageId") int pageId, Model model) {
		
		int rows = announceService.getRows();
		float p = (float)rows / 10;
		int pId = (int)Math.ceil(p);
		
		if (pageId > pId) {
			return "redirect:/announceList/" + pId;
		}
		
		int start = (pageId - 1) * 10;
		if(start >= rows) {
			start = rows - 10;
		}
		List<Announce> announce = announceService.getPageAnnounce(start);
		
		List<Announce> topAnnounce = announceService.getTop();
		
		model.addAttribute("announce", announce);
		model.addAttribute("announcePageId", pageId);
		model.addAttribute("announcePId", pId);
		model.addAttribute("topAnnounce", topAnnounce);
		
		return "announce/announceList";
	}
	
	@GetMapping("/u/setAnnounceTop/{id}")
	public String setTop(@PathVariable("id") int id) {
		
		announceService.setTop(id);
		return "redirect:/u/announceManage";
	}
	
	@GetMapping("/u/cancelAnnounceTop/{id}")
	public String cancelTop(@PathVariable("id") int id) {
		
		announceService.cancelTop(id);
		return "redirect:/u/announceManage";
	}
}
