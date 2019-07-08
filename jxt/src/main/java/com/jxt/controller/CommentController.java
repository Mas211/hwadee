package com.jxt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Account;
import com.jxt.entity.Comment;
import com.jxt.service.CommentService;
import com.jxt.service.RegisterService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	@Autowired
	private RegisterService registerService;
	
	String target = "";
	@RequestMapping(value="/u/s/commentadding",method=RequestMethod.GET)
	public String get(){
		return "commentadding";
	}
	@RequestMapping(value="/u/s/commentviewing",method=RequestMethod.GET)
	public String getview(){
		return "commentviewing";
	}
	
	
	//学生查看评语
	@RequestMapping(value="/u/s/commentstudentviewing",method=RequestMethod.POST)
	public String register(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		List<Comment> list=commentService.search(account.getAccountName());
		request.setAttribute("list", list);
		return "commentviewing";
	}
	
	//家长查看评语
	@RequestMapping(value="/u/s/commentparentviewing",method=RequestMethod.POST)
	public String getcomment(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		Account account_student =registerService.search(account.getAccountId());
		List<Comment> list=commentService.search(account_student.getAccountName());
		request.setAttribute("list", list);
		return "commentviewing";
	}
	
	
	
	
	//老师添加学生评语
	@RequestMapping(value="/u/s/commentadding",method=RequestMethod.POST)
	public String register(Comment comment,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		String studentId = request.getParameter("studentId");
		int studentId_int = Integer.parseInt(studentId);
		Account account_student = registerService.check1(studentId_int);
		comment.setCommentId(account.getAccountName()+account_student.getAccountName());
		if(commentService.getCommentByCommentId(comment.getCommentId())!=null){
			//已写过评语
			request.setAttribute("msg", "评语已存在");
			target = "commentadding";
		}
		else if(account.getAccountClassId()!=account_student.getAccountClassId() || account_student.getRoleId()!=5) {
			request.setAttribute("msg", "非您班学生或学生账号错误");
			target = "commentadding";
		}
		else{
			//注册成功
			Comment comment_temp = new Comment();
			comment_temp.setCommentId(comment.getCommentId());
			comment_temp.setStudentName(account_student.getAccountName());
			comment_temp.setTeacherName(account.getAccountName());
			comment_temp.setComment(comment.getComment());
			commentService.add(comment_temp);
			target = "redirect:/u/s/menu";
		}		
		return target;
	}
	//老师修改学生评语
	
}
