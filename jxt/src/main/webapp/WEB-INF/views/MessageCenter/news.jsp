<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/MessageCenter.css" />
	
</head>
<body>
	<div class="container ">
		<div class="space-left clearfix">
			<div class="side-bar">
				<div class="title">
					<div class="icon clearfix"></div>
					<div class="clearfix">消息中心</div>
				</div>
				<ul class="list ">
					<li><a id="1" href="新闻通知">新闻通知</a></li>
					<li><a id="2" href="作业通知">作业通知</a></li>
					<li><a id="3" href="我的回复">我的回复</a></li>
					<li><a id="4" href="我要留言">我要留言</a></li>
				</ul>
			</div>
		</div>

		<div class="space-right clearfix">
			<div class="space-right-top">
				<div class="title">
				</div>	
			</div>
			<div class="space-right-bottom"> 
			
			</div>
		
	</div>
	<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		
		$(function(){
			
			$(".list a").click(function(e){
				e.preventDefault();
				var aChoose = $( this );
				var bottom = $("div.space-right-bottom").empty();
				
				
				//标题
				var title = $("div.space-right-top .title").empty();
				var chooseTitle = $("<div />").html(aChoose.attr("href")); 
				chooseTitle.appendTo(title);
				
				$.get("/MyMessages/classification",{typeId : aChoose.attr("id"), t : new Date().getTime()},function(value){
					if(value.flag == 1){
						/* var divTitle = $("<div>新闻通知</div>");
						divTitle.appendTo(title); */
						$.each(value.news, function(i,m){
							var card = $("<div/>").attr("class","new-item card");
						
							/* //删除菜单
							var actionMenu = $("<div/>").attr("class","action-menu").attr("style","top:10px;right:5px");
							var icon = $("<a/>").attr("class","bp-icon-font icon-more-1");
							var menuList = $("<div/>").attr("class","menu-list hide").attr("style","width:58px;left:-16px;");
							var menuListA = $("<a>删除</a>").attr("href","javascript:;"); */
							
							var cardTop = $("<div/>").attr("class","top");
							var cardBottom = $("<div/>").attr("class","bottom");
							var cardTopTitle = $("<span>你有一条新新闻</span>").attr("class","title");
							var cardTopTime = $("<span/>").attr("class","time").html(m.time);
							var cardBottomContent = $("<span/>").html(m.messageContent);
							var cardA = $("<a>链接</a>").attr("href", m.messagePath).attr("class", "im-dynamic-link");
							cardTop.append(cardTopTitle).append(cardTopTime).appendTo(card);
							cardBottom.append(cardBottomContent).append(cardA).appendTo(card);
							/* menuListA.appendTo(menuList);
							actionMenu.append(icon).append(menuList).appendTo(card);  */
							card.appendTo(bottom);
							
						/* 	//判断删除键是否被按下
							menuListA.on({
					            "click": function(){
					            	$.get("/MyMessages/delete",{messageId : m.messageId, t : new Date().getTime()},function(){
					            		card.remove();
					            	});
					            }
					        }); 
							
							//判断菜单是否被按
					        actionMenu.on({
					            "click": function(){
					            	if (menuList.is(":hidden")){
					            		menuList.show();
					            		return false;
					            	}
					            	else{
					            		menuList.hide();
					            	}
					            }
					        }); 
					        $(document).on({
					            "click": function(e){
					            	menuList.hide();
					            }
					        }); */
							
						});
					}
					else if(value.flag == 2){
						$.each(value.homeworks, function(i,m){
							var card = $("<div/>").attr("class","new-item card");
						
							var cardTop = $("<div/>").attr("class","top");
							var cardBottom = $("<div/>").attr("class","bottom");
							var cardTopTitle = $("<span>你有一条作业通知</span>").attr("class","title");
							var cardTopTime = $("<span/>").attr("class","time").html(m.time);
							var cardBottomContent = $("<span/>").html(m.messageContent);
							var cardA = $("<a>链接</a>").attr("href", m.messagePath).attr("class", "im-dynamic-link");
							cardTop.append(cardTopTitle).append(cardTopTime).appendTo(card);
							cardBottom.append(cardBottomContent).append(cardA).appendTo(card);
							card.appendTo(bottom);
	
						}); 
					}
					else if(value.flag == 3){
						var cardWhisper = $("<div />").attr("class", "card whisper");
						var leavingList = $("<div />").attr("class", "leaving-list");
						var dialog = $("<div />").attr("class" , "dialog");
						var listTitle = $("<div>近期通知</div>").attr("class", "list-title");
						var listContent = $("<div />").attr("class", "list-content ps");
						var listContentDiv = $("<div />");
						var dialogTitle = $("<div />").attr("class","title");
						var messageList = $("<div />").attr("class","message-list ps");
						listContentDiv.appendTo(listContent);
						leavingList.append(listTitle).append(listContent).appendTo(cardWhisper);
						dialog.append(dialogTitle).append(messageList).appendTo(cardWhisper);
						cardWhisper.appendTo(bottom);
						
						$.each(value.leavMessagesAccountList, function(i,m){
							var listItem = $("<a/>").attr("class", "list-item").attr("href","javascript:void(0);").attr("name",m.account.accountName);
							var avatar = $("<div />").attr("class", "avatar");
							var nameBox = $("<div />").attr("class", "name-bax");
							var name = $("<div />").attr("class", "name").html(m.account.accountName);
							/* $.get("/MyMessages/findLastMessage",{sourceId : m.sourceId, t : new Date().getTime()},function(lastMessageContent){
								var lastWord = $("<div />").html(lastMessageContent).attr("class", "last-word");
								nameBox.append(name).append(lastWord);
								listItem.append(avatar).append(nameBox).appendTo(listContentDiv);
							}); */
							var lastWord = $("<div>没有最新留言</div>").attr("class", "last-word");
							var close = $("<div />").attr("class","close").attr("style","display:none");
							var closeIcon = $("<div />").attr("class","close-icon").attr("style","background-color:black");
							close.append(closeIcon).appendTo(listItem);
								
							nameBox.append(name).append(lastWord);
							listItem.append(avatar).append(nameBox).appendTo(listContentDiv);
							
							listItem.children("div").hover(function( e ){
								close.show();
							});
							
							listItem.children("div").mouseout(function( e ){
								close.hide();
							});
							
							closeIcon.click(function( e ){
								e.stopPropagation();
								listItem.empty();
								var sourceId =  m.account.accountId;
								/*屏蔽listItem的点击事件*/
								/* $.get("/MyMessages/delete",{sourceId :sourceId,t : new Date().getTime()},function(){
				            		
				            	}); */
							}); 
			
							
							listItem.on({
					            "click": function(e){
					            	e.preventDefault();
					            	dialogTitle.empty();
					            	/*var dialogTitle = $("<div />").attr("class","title");*/
					            	var dialogTitleSpan = $("<span />").html($(this).attr("name"));
					            	dialogTitle.append(dialogTitleSpan);
					            	messageList.empty();
					            	$.get("/MyMessages/findMessages",{sourceId : m.sourceId, t : new Date().getTime()},function(chatList){
					            		$.each(chatList, function(i,n){
					            			var messageTime = $("<div />").attr("class","message-time");
					            			var mTime = $("<span />").html(n.time).attr("class","time");
					            			var messageCard = $("<div />").attr("class","card");
					            			var leavMessage = $("<div />").attr("class","message");
					            			var messageTitle = $("<div>你有一条新的留言</div>").attr("class","message-content");
					            			var messageDetails = $("<div />").attr("class","message");
					            			var details = $("<div />").attr("class","details").html(n.messageContent);
					            			messageDetails.append(details);
					            			var linkMessage = $("<div />").attr("class", "message");
					            			var recLink = $("<a>查看我的回复</a>").attr("class","rec-leav");
					            			var leavLink = $("<a>查看留言详情</a>").attr("class","rec-leav");
					            			
					            			var recCard = $("<div />").attr("class","card").attr("style","display:none;");
					            			var recArea = $("<textarea />").attr("placeholder","留言内容").attr("maxlength","200").attr("autofocus","autofocus").attr("class","recarea");
					            			var rowRight = $("<div />").attr("class","row right");
					            			var button = $("<button>发送</button>").attr("class","btn-box send-btn");
					            			rowRight.append(button);
					            			recCard.append(recArea).append(rowRight);
					            			
					            			linkMessage.append(recLink).append(leavLink);
					        				
					            			messageTime.append(mTime).appendTo(messageList);
						            		leavMessage.append(messageTitle).append(messageDetails).append(linkMessage).appendTo(messageCard);
					
						            		messageCard.appendTo(messageList);
						            		recCard.appendTo(messageList);
						            		
						            		
						            		leavLink.on({
									            "click": function(){
									            	details.removeClass("details");
									            	details.addClass("details-content");
									            	leavLink.empty();
									            }
									        });
						            		recLink.on({
									            "click": function(){
									            	var recDetails = $("<div />").attr("class","details-content").html("我的回复:"+n.replyMessage.messageContent).attr("id","leav");
									            	recDetails.appendTo(messageDetails);
									            	recLink.empty();
									            	
									            }
									        });
						            		messageDetails.on('click','a#leav.rec-leav',function(){	
						            			recCard.show();
						            		});
						            		button.on('click',function(){
						            			var recContent = recArea.val();
								            	var targetId = n.sourceId;
								            	var messageId = n.messageId;
								            	
						            			$.get("/MyMessages/messageCommit",{targetId:targetId, messageContent:recContent, session:$.session, t:new Date()},function(message){
						            				var replyId = message.messageId;
						            				
									            	recCard.hide();
									            	var recDetails = messageDetails.find("div#leav.details-content");
									            	recDetails.html("我的回复:"+recContent);
						            				$.get("/MyMessages/setReply",{replyId:replyId, beReplyId:messageId,t:new Date()},function(){
						            					
						            				},"json");
						            			},"json");
						            		});
						            		

					            		});
									},"json");
					            }
					        }); 
								
						});
						
					}
					else if(value.flag == 4){
						var cardLeav= $("<div />").attr("class","card leav-message");
						var leavCardMessage= $("<div />").attr("class","leav-message-card").attr("style","padding:0px;");
						var card1= $("<div />").attr("class","card").attr("style","width:70%");
						var input= $("<input />").attr("class","content").attr("placeholder","用户名").attr("maxlength","30").attr("autofocus","autofocus").attr("id","accountId");
						card1.append(input);
						var card2= $("<div />").attr("class","card").attr("style","margin-left:2px;width:29%");
						var selInput= $("<div />").attr("class","sel-input select");
						var text= $("<input />").attr("class","text").attr("readonly","readonly");
						var scroll= $("<div />").attr("class","sel-list scroll").attr("tabindex","99");
						var scrollCon= $("<ul />").attr("class","scroll-con").attr("style","display:none");
						var li1=$("<li>老师</li>").attr("id","老师");
						var li2=$("<li>学生</li>").attr("id","学生");
						var li3=$("<li>学校</li>").attr("id","学校");
						scrollCon.append(li1).append(li2).append(li3).appendTo(scroll);
						selInput.append(text).append(scroll).appendTo(card2);
						leavCardMessage.append(card1).append(card2).appendTo(cardLeav);
						
						var leavCardMessage2 = $("<div />").attr("class","leav-message-card card");
						var input2 = $("<input />").attr("placeholder", "标题").attr("maxlength","30").attr("autofocus","autofocus").attr("class","content");
						leavCardMessage2.append(input2).appendTo(cardLeav);
						
						var leavCardMessage3 = $("<div />").attr("class","leav-message-card card message-content");
						var textarea = $("<textarea />").attr("placeholder", "留言内容").attr("maxlength","500").attr("autofocus","autofocus").attr("class","textarea");
						var indicator = $("<div />").attr("class","indicator").attr("style","bottom: 110px; right: 280px;");
						var span1 = $("<span>0</span>");
						var span2 = $("<span>/500</span>");
						indicator.append(span1).append(span2);
						leavCardMessage3.append(textarea).append(indicator).appendTo(cardLeav);
						
						var rowRight = $("<div />").attr("class", "row right"); 
						var button = $("<button>发送</button>").attr("class","btn-box send-btn")/* .attr("title","enter发送") */;
						rowRight.append(button).appendTo(cardLeav);
						bottom.append(cardLeav);
						
						selInput.on({
				            "click": function(){
				            	if (scrollCon.is(":hidden")){
				            		scrollCon.show();
				            		return false;
				            	}
				            	else{
				            		scrollCon.hide();
				            	}
				            }
				        }); 
				        $(document).on({
				            "click": function(e){
				            	scrollCon.hide();
				            }
				        });
						
				        $(".scroll-con li").on({
				            "click": function(){
				            	var choose = $(this).attr("id");
				            	text.attr("value",choose);
				            }
				        }); 
				        
				        textarea.keyup(function(){    
				        	var ud = $(this).val();
				        	var len = ud.length;
				        	span1.html(len);
			        		
				        });
				        
				        button.on({
				            "click": function(e){
				            	var messageContent = textarea.val();
				            	var targetId = input.val();
				            	
				            	$.get("/MyMessages/messageCommit",{targetId:targetId, messageContent:messageContent, session:$.session, t:new Date().getTime()},function(isLeav){
				            			if(isLeav){
				            				textarea.val('');
											input.val('');
											input2.val('');
											text.val('');
				            			}
				            		
				            	},"json"); 
				            }
				        });
				        
					}
			
				}, "json");
				
			});
		});
		
    	
    	

	
	</script>

</body>
</html>