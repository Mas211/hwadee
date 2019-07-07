package com.jxt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jxt.entity.Account;
import com.jxt.entity.Grade;
import com.jxt.service.GradeService;

@Controller
public class GradeController {
	@Autowired
	private GradeService gradeService;
	
	@GetMapping("/u/t/grade/enteringgrades")
	public String get() {
		return "/grade/enteringgrades";
	}
	
	@PostMapping("/u/t/grade/enteringgrades")
	public String addGrade(Grade grade) {
		int rows = gradeService.add(grade);
		if (rows != grade.getGradeId()) {
			throw new RuntimeException("添加失败！");
		}
		return "/grade/enteringgrades";
	}

	// 查看所有成绩
	@GetMapping("/u/t/grade/listall")
	public String list(Model model) {
		List<Grade> grades = gradeService.grades();
		model.addAttribute("grades", grades);
		return "/grade/listall";
	}
	
	//查看单科成绩
	@GetMapping("/u/t/grade/listsingle")
	public String listSingle(Model model) {
		List<Grade> grades = gradeService.grades();
		model.addAttribute("grades", grades);
		return "/grade/listsingle";
	}
	
	//查看某个学生成绩
	@GetMapping("/u/s/grade/liststudent")
	public String listStudent(Model model, HttpServletRequest request) {
		Account user = (Account) request.getSession().getAttribute("account");
		int roleId = user.getRoleId();
		int stuId = 0;
		if(roleId == 4) {
			//如果是家长，就找到学生学号
			stuId = gradeService.getStuIdByParId(user.getParId());
		}
		else {
			stuId = user.getAccountId();
		}
		List<Grade> grades= gradeService.getGradeById(stuId);
		model.addAttribute("grades", grades);
		return "/grade/liststudent";
	}
}
