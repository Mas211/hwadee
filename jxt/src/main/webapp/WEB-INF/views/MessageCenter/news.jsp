<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<title>消息中心</title>
	<link rel="stylesheet" type="text/css" href="/MessageCenter.css" />
	<link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
	<link href="/assets/css/style.css" rel="stylesheet" type="text/css"
		media="all" />
	<link href="/assets/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
		rel="stylesheet">
	
</head>
<body>
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					<span class="fa fa-map-marker" aria-hidden="true"></span>成都，中国
				</p>
			</div>
			<div class="bottom_header_right" style="width: 40%;">
				<c:choose>
				<c:when test="${!empty sessionScope.account}">
					<div class="header-top-righ">
					<a href="/logout"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>注销
					</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/u/s/menu"> <span class="fa fa-tasks"
						aria-hidden="true"></span>个人中心
					</a>
				</div>
				</c:when>
				<c:otherwise>
				<div class="header-top-righ">
					<a href="/login"> <span class="fa fa-sign-in"
						aria-hidden="true"></span>登录
					</a>
				</div>
				</c:otherwise>
				</c:choose>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index">
							<h1>
								<span><img src="/assets/images/graduate.png" height="60" width="60"></span>家校通 
								<label>Education& Courses</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li><a href="" class="effect-3"></a></li>
								<li><a href="" class="effect-3"></a></li>
								<li><a href="/index" class="">首页</a></li>
								<li><a href="contact.html" class="">学校概况</a>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">新闻资讯 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="/announceList/1">公告</a></li>
										<li><a href="/newsList/1">新闻</a></li>
									</ul></li>
								<li><a href="courses.html" class="effect-3">校园风采</a></li>
								<li><a href="gallery.html" class="effect-3">师资队伍</a></li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<br/>
	<!-- banner -->
	<div class="inner_page_agile">

	</div>
	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li><a href="/u/s/menu">个人中心</a> <span>| |</span></li>
				<li>消息中心</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<div class = "messages-center">
		<div class="container ">
			<div class="space-left clearfix">
				<div class="side-bar">
					<div class="title">
						<div class="icon clearfix"></div>
						<div class="clearfix">消息中心</div>
					</div>
					<ul class="list">
						<li>
							<c:if test="${sessionScope.newsAllRead == false}">
								<div id="1" class="point" style="float:left"></div>
							</c:if>
							<a id="1" href="新闻通知">新闻通知</a>
						</li>
						<c:if test="${sessionScope.account.roleId ne 1 }">
						<li>
							<c:if test="${sessionScope.homeworksAllRead == false}">
								<div id="2" class="point" style="float:left"></div>
							</c:if>
							<a id="2" href="作业通知">作业通知</a>
						</li></c:if>
						<li>
							<c:if test="${sessionScope.messageAllRead == false}">
								<div id="3" class="point" style="float:left"></div>
							</c:if>
							<a id="3" href="我的回复">我的回复</a>
						</li>
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
		</div>	
	</div>
	<!-- footer -->
	<div class="mkl_footer">
		<div class="sub-footer">
			<div class="container">
				<div class="mkls_footer_grid">
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>地址:</h4>
						<p>重庆市沙坪坝沙正街174号</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>联系我们:</h4>
						<p>
							<span>电话 : </span>800 820 8820</p>
						<p>
							<span>邮箱 : </span>
							email@jxt.com
						</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>上课时间</h4>
						<p>周一到周五</p>
						<p>8:20 - 16:30</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="botttom-nav-allah">
					<ul>
						<li>
							<a href="/about">关于我们</a>
						</li>
						<li>
							<a href="https://github.com/Mas211/hwadee">联系我们</a>
						</li>
						<li>
							<a href="https://github.com/Mas211/hwadee">反馈建议</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copy-right">
			<div class="container">
				<div class="allah-copy">
					<p>Copyright &copy; 重庆市沙坪坝沙正街174号重庆大学龙爱家项目组  <a href="https://github.com/Mas211/hwadee" target="_blank" title="点击访问…">项目详情</a> </p>
				</div>
				
				<div class="clearfix"></div>
			</div>
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
						
		   				$("div#1.point").hide();
		   				/* $.session.set('newsAllRead', 'true'); */
		   				$.get("/MyMessages/setRead",{messageType:"1",t:new Date().getTime()},function(){});
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
							$("div#2.point").hide();
							$.get("/MyMessages/setRead",{messageType:"2",t:new Date().getTime()},function(){});
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
						var listTitle = $("<div>近期留言</div>").attr("class", "list-title");
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
							var point = $("<div />").attr("class","point").attr("style","display:none");
							point.appendTo(avatar);
							var nameBox = $("<div />").attr("class", "name-bax");
							var name = $("<div />").attr("class", "name").html(m.account.accountName);
					
							var lastWord = $("<div>没有新的留言</div>").attr("class", "last-word");
							var close = $("<div />").attr("class","close").attr("style","display:none");
							var closeIcon = $("<div />").attr("class","close-icon").attr("style","background-color:black");
							$.get("/u/s/MyMessages/checkAccountNotRead",{sourceId : m.account.accountId, t : new Date().getTime()},function(havaNotRead){
								if(havaNotRead == false){
									point.show();
									lastWord.html("你有新的留言");
								}
							},"json"); 
							close.append(closeIcon).appendTo(listItem);
							nameBox.append(name).append(lastWord);
							listItem.append(avatar).append(nameBox).appendTo(listContentDiv);
							
							listItem.find("div").hover(function( e ){
								close.show();
							});
							
							listItem.find("div").mouseout(function( e ){
								close.hide();
							});
							
						 	listItem.on({
						            "click": function(){
						            	$("a.list-item.grey").removeClass("grey");
						            	listItem.addClass("grey");
						            }
						        }); 
						        
							closeIcon.click(function( e ){
								e.stopPropagation();
								listItem.remove();
								messageList.empty();
								dialogTitle.empty();
								
								$.get("/u/s/MyMessages/delete",{sourceId :m.account.accountId, session:$.session, t:new Date().getTime()},function(){
				            		
				            	},"json");
							}); 
			
							
							listItem.on({
					            "click": function(e){
					   				if($(".avatar div.point").is(":hidden")){
					   					$("div#3.point").hide();
					   					$.get("/MyMessages/setRead",{messageType:"3",t:new Date().getTime()},function(){});
					   				}
					   				
					            	e.preventDefault();
					            	point.hide();
					            	lastWord.html("没有新的留言");
					            	dialogTitle.empty();
					            	/*var dialogTitle = $("<div />").attr("class","title");*/
					            	var dialogTitleSpan = $("<span />").html($(this).attr("name"));
					            	dialogTitle.append(dialogTitleSpan);
					            	messageList.empty();
					            	$.get("/u/s/MyMessages/findMessages",{sourceId : m.sourceId, t : new Date().getTime()},function(chatList){
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
								            	
						            			$.get("/u/s/MyMessages/messageCommit",{targetId:targetId, messageContent:recContent, t:new Date()},function(message){
						            				var replyId = message.messageId;
						            				
									            	recCard.hide();
									            	var recDetails = messageDetails.find("div#leav.details-content");
									            	recDetails.html("我的回复:"+recContent);
						            				$.get("/u/s/MyMessages/setReply",{replyId:replyId, beReplyId:messageId,t:new Date()},function(){
						            					
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
						var indicator = $("<div />").attr("class","indicator").attr("style","margin-right:30px");
						var span1 = $("<span>0</span>");
						var span2 = $("<span>/500</span>");
						indicator.append(span1).append(span2);
						leavCardMessage3.append(textarea).appendTo(cardLeav);
						
						var rowRight = $("<div />").attr("class", "row right"); 
						var button = $("<button>发送</button>").attr("class","btn-box send-btn")/* .attr("title","enter发送") */;
						rowRight.append(indicator).append(button).appendTo(cardLeav);
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
				            	
				            	$.get("/u/s/MyMessages/messageCommit",{targetId:targetId, messageContent:messageContent, session:$.session, t:new Date().getTime()},function(isLeav){
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
		
    	
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}

	
	</script>

</body>
</html>