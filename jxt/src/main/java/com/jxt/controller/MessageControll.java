package com.jxt.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.PortableServer.ID_ASSIGNMENT_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jxt.entity.Account;
import com.jxt.entity.Message;

import com.jxt.entity.Value;
import com.jxt.service.AccountService;
import com.jxt.service.MessageService;

@Controller
public class MessageControll {
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/MyMessages/setRead")
	public @ResponseBody void setRead(int messageType, HttpServletRequest request) {
		HttpSession httpSession = request.getSession(false);
		if (messageType == 1) {
			httpSession.setAttribute("newsAllRead", true);
			System.out.println("新闻已读bool"+httpSession.getAttribute("newsAllRead"));
		} 
		else if (messageType ==2) {
			httpSession.setAttribute("homeworksAllRead", true);
			System.out.println("作业已读bool"+httpSession.getAttribute("homeworksAllRead"));
		}
		else if (messageType == 3) {
			httpSession.setAttribute("messageAllRead", true);
			System.out.println("留言已读bool"+httpSession.getAttribute("homeworksAllRead"));
		}
	}
	
	
	@GetMapping("/MyMessages/classification")
	public @ResponseBody Value news(int typeId, HttpServletRequest request) {
		HttpSession httpSession = request.getSession(false);
		System.out.println(typeId);
		Account account = (Account) httpSession.getAttribute("account");
		int targetId = account.getAccountId();
		Value value = new Value();
		value.setFlag(typeId);
		if(typeId==1) {
			List<Message> newsList = messageService.listNewsMessages();
//			value.setNews(messageService.listNewsMessages());
			value.setNews(newsList);
			for(Message m:newsList) {
				System.out.println(m.toString());
			}
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
	
	@GetMapping("/u/s/MyMessages/delete")
	public @ResponseBody void delete(int sourceId,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		messageService.deleteChat(sourceId, targetId);
		/* messageService.delete(messageId); */
	}
	
	//检查是否有未读
	@GetMapping("/u/s/MyMessages/checkAccountNotRead")
	public @ResponseBody boolean haveNotRead(HttpServletRequest request, int sourceId) {
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		System.out.println(messageService.haveNotRead(sourceId, targetId));
		return messageService.haveNotRead(sourceId, targetId);
	}
	

	
	
	//做了两次查询，待优化
	@GetMapping("/u/s/MyMessages/findMessages")
	public @ResponseBody List<Message> findAll(HttpServletRequest request, int sourceId) {
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		int targetId = account.getAccountId();
		List<Message> chatList = messageService.listAllChatRecord(targetId, sourceId);
		return chatList;
	}
	
	
	//test
	@RequestMapping(value = "/u/s/MessageCenter",method = RequestMethod.GET)
	public String login(HttpServletRequest request){
	
		return "MessageCenter/news";
	}
	
	
	
	
	@RequestMapping(value = "/u/s/getRole",method = RequestMethod.GET)
	public@ResponseBody String getRole(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		System.out.println("用户的roleId为:"+account.getRoleId());
		String homeworkContent = null;
		if(account.getRoleId()==5) {
			homeworkContent = "你有一条作业通知";
		}
		else if(account.getRoleId()==4){
			homeworkContent = "你的孩子有一条新的作业通知，请及时督促他完成";
		}
		else if (account.getRoleId()==3) {
			homeworkContent = "你发布了一个作业";
		}
		else {
			homeworkContent = "作业通知";
		}
		return homeworkContent;
	}
	
	//提交留言，插入数据库
	//返回是否提交成功(判断是否存在留言目标用户)
	//warning:我要留言的留言replyId指向一个初始留言(暂且假定为1号留言)
	//留言类型和title还没用上
	@GetMapping("/u/s/MyMessages/messageCommit")
	public @ResponseBody boolean messageCommit(String targetId,String messageContent,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		Account account = (Account) session.getAttribute("account");
		int sourceId = account.getAccountId();
		int id = Integer.parseInt(targetId);
		if(accountService.getAccountById(id)!= null) {
			Message message = new Message();
			message.setTargetId(id);
			message.setSourceId(sourceId);
			message.setMessageType(3);
			message.setReplyId(1);//初始id，表示这条留言没有回复留言
			message.setIsRead(0);
			message.setMessageContent(messageContent);
			message.setTime(new Date());
			messageService.add(message); 
			System.out.println("留言成功");
			return true;
		}
		else {
			System.out.println("留言失败");
			return false;
		}
	}
	
	//更新留言的replyId
	@GetMapping("/u/s/MyMessages/setReply")
	public @ResponseBody void haveReply(int replyId,int beReplyId) {
		System.out.println("更新中"+replyId+beReplyId);
		messageService.updateReply(beReplyId, replyId);
		
	}
	
	

	@GetMapping("/u/s/MyMessages/test")
	public @ResponseBody void test(int sourceId){
		System.out.println(sourceId);
		System.out.println("我被按了");
	}
	
}
