package com.jxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.jxt.entity.Attendance;
import com.jxt.service.AttendanceService;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceService attendanceService;
	
	
	@GetMapping("/attend{id}")
	public String get(@PathVariable("id") int id, Model model) {
		Attendance attendance = attendanceService.getAttendanceById(id);
		model.addAttribute("attendance", attendance);
		return "attend/update";
	}

}
