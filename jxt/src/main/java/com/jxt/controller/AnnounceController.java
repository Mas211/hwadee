package com.jxt.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jxt.entity.Announce;
import com.jxt.entity.News;
import com.jxt.service.AnnounceService;

@Controller
public class AnnounceController {

	@Autowired
	private AnnounceService announceService;
	
	@GetMapping("/createAnnounce")
	public String get() {
		
		return "announce/announceEditor";
		
	}
	
	@PostMapping("/createAnnounce")
	public String insertNews(Announce announce) {
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		announce.setAnnounceTime(time);
		announce.setAnnounceModified(time);
				
		int rows = announceService.add(announce);
		
		return "redirect:/homework";
	}
	
	@GetMapping("/announce/{id}")
	public String showNews(@PathVariable("id") int id, Model model) {
		Announce announce = announceService.getAnnounceById(id);
		model.addAttribute("announce", announce);

		return "announce/announceDetail";
	}
	
	@GetMapping("/announceManage")
	public String newsList(Model model) {
		List<Announce> announce = announceService.findAll();
		model.addAttribute("announce", announce);
		
		return "announce/announceManage";
	}
	
	@GetMapping("/updateAnnounce/{id}")
	public String updateNews(@PathVariable("id") int id, Model model) {
		Announce announce = announceService.getAnnounceById(id);
		model.addAttribute("announce", announce);

		return "announce/updateAnnounce";
	}
	
	@PostMapping("/updateAnnounce/{id}")
	public String checkUpdate(Announce announce, HttpServletRequest request) {
		//更新修改时间
		announce.setAnnounceModified(new Timestamp(System.currentTimeMillis()));
		
		int rows = announceService.update(announce);
		
		return "redirect:/announceManage";
	}
	
	@GetMapping("/deleteAnnounce/{id}")
	public String deleteNews(@PathVariable("id") int id, HttpServletRequest request) {
		
		int rows = announceService.delete(id);
		
		
		return "redirect:/announceManage";
	}
	
}
