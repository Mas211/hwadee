package com.jxt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.jxt.entity.Account;
import com.jxt.entity.Attendance;
import com.jxt.service.AttendanceService;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceService attendanceService;


	
	@GetMapping("/attend")
	public String attend(HttpServletRequest request, Model model) {
		
		List<Attendance> as;
		
		Account user = (Account) (request.getSession().getAttribute("account"));
		int id =user.getAccountClassId();
		int id2 = user.getAccountId();
		if (user.getRoleId() == 4) {
			as = attendanceService.findByPar(id2);
		}
		else if(user.getRoleId() == 5){
			as = attendanceService.findByStu(id2);
		}
		else if(user.getRoleId() == 3){
			as = attendanceService.findByClass(id);
		}
		else as = attendanceService.findAll();
		
		model.addAttribute("as", as);
		return "attend";
	}
	
	
	
	@RequestMapping(value="/vedio",method=RequestMethod.GET)
	public String get(){
		return "vedio";
	}


	


	
}
