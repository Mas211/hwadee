package com.jxt.controller;


import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.omg.PortableServer.ID_ASSIGNMENT_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.entity.Message;

import com.jxt.entity.Value;
import com.jxt.service.MessageService;

@Controller
@RequestMapping(value = "/MyMessages")
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	@GetMapping("/setRead")
	public @ResponseBody void setRead(int messageType, HttpSession httpSession) {
		if (messageType == 1) {
			System.out.println("新闻已读");
			httpSession.setAttribute("newsAllRead", true);
		} 
		else if (messageType ==2) {
			System.out.println("作业已读");
			httpSession.setAttribute("homeworksAllRead", true);
		}
		else if (messageType == 3) {
			System.out.println("留言已读");
			httpSession.setAttribute("messageAllRead", true);
		}
	}
	
	
	@GetMapping("/classification")
	public @ResponseBody Value news(int typeId, HttpSession httpSession) {

		System.out.println(typeId);
		Account account = (Account) httpSession.getAttribute("account");
		int targetId = account.getAccountId();
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
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		messageService.deleteChat(sourceId, targetId);
		/* messageService.delete(messageId); */
	}
	
	//检查是否有未读
	@GetMapping("/checkAccountNotRead")
	public @ResponseBody boolean haveNotRead(HttpSession session, int sourceId) {
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		System.out.println(messageService.haveNotRead(sourceId, targetId));
		return messageService.haveNotRead(sourceId, targetId);
	}
	

	
	
	//做了两次查询，待优化
	@GetMapping("/findMessages")
	public @ResponseBody List<Message> findAll(HttpSession session, int sourceId) {
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		List<Message> chatList = messageService.listAllChatRecord(targetId, sourceId);
		return chatList;
	}
	
	
	//test
	@RequestMapping(value = "/MessageCenter",method = RequestMethod.GET)
	public String login(HttpSession session) throws ParseException {
	
		return "MessageCenter/news";
	}
	
	//提交留言，插入数据库
	//返回是否提交成功(判断是否存在留言目标用户)
	//warning:我要留言的留言replyId指向一个初始留言(暂且假定为1号留言)
	//留言类型和title还没用上
	@GetMapping("/messageCommit")
	public @ResponseBody Message messageCommit(int targetId,String messageContent,HttpSession session) {
		
		Account account = (Account) session.getAttribute("account");
		int sourceId = account.getAccountId();
		
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
