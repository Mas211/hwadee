package com.jxt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.entity.Attendance;
import com.jxt.entity.RewardAndPunish;
import com.jxt.entity.Task;
import com.jxt.service.AttendanceService;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceService attendanceService;


	
	@GetMapping("/attend")
	public String attend(HttpServletRequest request, Model model) {
		
		List<Attendance> as;
		
		Account user = (Account) (request.getSession().getAttribute("account"));
		int id = user.getParId();
		int id2 = user.getAccountId();
		if (user.getRoleId() == 4) {
			as = attendanceService.findByPar(id);
		}
		else {
			as = attendanceService.findByStu(id2);
		}
		
		model.addAttribute("as", as);
		return "attend";
	}
	
	
	
	@RequestMapping(value="/vedio",method=RequestMethod.GET)
	public String get(){
		return "vedio";
	}


	


	
}
