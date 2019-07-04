package com.jxt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Attendance;
import com.jxt.entity.Task;
import com.jxt.service.AttendanceService;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceService attendanceService;
	
	@GetMapping("/findAttend/{attendStuId}")
	public String get(@PathVariable("attendStuId") int attendStuId, Model model) {
		Attendance attendance = attendanceService.getAttendanceById(attendStuId);
		model.addAttribute("post", attendance);
		return "attend";
	}
	
	@RequestMapping(value = "/attend", method = RequestMethod.GET)
	public String  list(Model model  ) {
		List<Attendance> attendances = attendanceService.attendances();
		model.addAttribute("attendances", attendances);
		return "attend";
	}


	


	
}
