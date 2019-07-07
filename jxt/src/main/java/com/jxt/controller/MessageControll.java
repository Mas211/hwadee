package com.jxt.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Message;

import com.jxt.entity.Value;
import com.jxt.service.MessageService;

@Controller
@RequestMapping(value = "/MyMessages")
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	
	@GetMapping("/classification")
	public @ResponseBody Value news(int typeId, HttpSession httpSession) {

		System.out.println(typeId);
		int targetId = (int) httpSession.getAttribute("id");
		Value value = new Value();
		value.setFlag(typeId);
		if(typeId==1) {
			value.setNews(messageService.listNewsMessages());
		}
		else if(typeId==2) {
			value.setHomeworks(messageService.listHomeWorksMessages(targetId));
		}
		else if(typeId==3) {
//			value.setRecMessages(messageService.listRecMessages(targetId));
			value.setLeavMessagesAccountList(messageService.listLeavAccounts(targetId));
		}
		return value;
	}
	
	@GetMapping("/delete")
	public @ResponseBody void delete(int sourceId,HttpSession session) {
		Integer targetId = (Integer) session.getAttribute("id");
		System.out.println(sourceId+"和"+targetId+"已被删除");
		messageService.deleteChat(sourceId, targetId);
		/* messageService.delete(messageId); */
	}
	
	//检查是否有未读
	@GetMapping("/checkAccountNotRead")
	public @ResponseBody boolean haveNotRead(HttpSession session, int sourceId) {
		Integer targetId = (Integer) session.getAttribute("id");
		System.out.println(messageService.haveNotRead(sourceId, targetId));
		return messageService.haveNotRead(sourceId, targetId);
	}
	

	
	
	//做了两次查询，待优化
	@GetMapping("/findMessages")
	public @ResponseBody List<Message> findAll(HttpSession session, int sourceId) {
		int targetId = (int) session.getAttribute("id");
		List<Message> chatList = messageService.listAllChatRecord(targetId, sourceId);
		return chatList;
	}
	
	
	//test
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(HttpSession session) throws ParseException {
		int accountId = 1;
		session.setAttribute("id", accountId);
		//给session添加一个留言是否全部已读的bool值
		Integer targetId = (Integer) session.getAttribute("id");
		session.setAttribute("messageAllRead",messageService.haveNotReadA(targetId));
		//给session添加一个用户上次登录时间
		Date lastLogTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2019-07-07 08:00:00");
		boolean newsAllRead=messageService.listNotReadNews(lastLogTime).isEmpty();
		System.out.println("newsAllRead:"+newsAllRead);
		boolean homeworksAllRead = messageService.listNotReadHomeworks(lastLogTime, targetId).isEmpty();
		System.out.println("homeworksAllRead:"+homeworksAllRead);
		session.setAttribute("newsAllRead", newsAllRead);
		session.setAttribute("homeworksAllRead", homeworksAllRead);
		
		
		return "MessageCenter/news";
	}
	
	//提交留言，插入数据库
	//返回是否提交成功(判断是否存在留言目标用户)
	//warning:我要留言的留言replyId指向一个初始留言(暂且假定为1号留言)
	//留言类型和title还没用上
	@GetMapping("/messageCommit")
	public @ResponseBody Message messageCommit(int targetId,String messageContent,HttpSession session) {
		
		Integer sourceId = (Integer) session.getAttribute("id");
		
		//后面这里再加判断用户是否存在*************************
		Message message = new Message();
		message.setTargetId(targetId);
		message.setSourceId(sourceId);
		message.setMessageType(3);
		message.setReplyId(1);//初始id，表示这条留言没有回复留言
		message.setIsRead(0);
		message.setMessageContent(messageContent);
		message.setTime(new Date());
		messageService.add(message);  

		return message;
	}
	
	//更新留言的replyId
	@GetMapping("/setReply")
	public @ResponseBody void haveReply(int replyId,int beReplyId) {
		System.out.println("更新中"+replyId+beReplyId);
		messageService.updateReply(beReplyId, replyId);
		
	}
	
	

	@GetMapping("/test")
	public @ResponseBody void test(int sourceId){
		System.out.println(sourceId);
		System.out.println("我被按了");
	}
	
}
