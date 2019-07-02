<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<style type="text/css">
		body{
			margin:0px;
			background-image: url(/assets/images/1.jpg);
			font-family: Microsoft YaHei;
			font-size: 13px;
    		line-height: 12px;
    		color: #666;
		}

		div{
			display: block;
		}

		p, span {
    		margin: 0;
    		padding: 0;
		}

		a, img {
    		color: inherit;
    		border: 0;
    		outline: 0;
    		text-decoration: none;
		}

		a, button, input, select, textarea {
    		-webkit-tap-highlight-color: rgba(0,0,0,.1);
    		outline: 0;
    		padding: 0;
    		margin: 0;
   	 		border: 0;
    		background-color: transparent;
    	}

		.container{
			height: 100vh;
    		margin: 0 auto;
    		max-width: 1143px;
    		width:980px;
		}

		.container *{
			box-sizing: border-box;
		}
		
		.container>div{
			display:inline-block;
		}

		.container .space-left{
			float: left;
			height: 100%;
			width: 140px;
			background-color:rgba(255,255,255,0.6);
			
		}

		.container .space-right{
			float: right;
			height: 100%;
			width: 840px;
			background-color:rgba(255,255,255,0.4);
		}

		.space-left .side-bar{
			font-size: 15px;
    		font-weight: 700;
			height:363px;
			width: 100%;
		}

		.side-bar .title{
			font-size: 18px;
			height:62px;
			width:100px;
			margin:0 auto;
		}

		.side-bar .title div{
			margin: 30px 0;
			float: left;
		}

		.side-bar .title .icon{
			width: 14px;
    		height: 16px;
    		margin-right: 10px;
    		background-color: red;
		}

		.list li{
			height: 40px;
    		position: relative;
		}

		.list li a{
			padding-left: 10px;
    		line-height: 40px;
   			flex: 1;
    		text-decoration: none
		}

		.list>li a:hover{
			color: #2faee3;
			font-size: 18px;
		}

		.space-right .space-right-top{
			height: 52px;
			padding: 10px 10px 0;
		}

		.space-right .space-right-bottom{
			height: calc(100% - 52px);
			padding:10px;
			overflow-y:auto;
		}

		.space-right-top .title{
			height: 42px;
    		box-shadow: 0 2px 4px 0 rgba(121,146,185,.54);
    		flex-shrink: 0;
    		display: flex;
    		align-items: center;
    		justify-content: space-between;
    		padding: 0 16px;
    		font-size: 15px;
   	 		border-radius: 4px;
   	 		background-color: white;
		}

		.card {
    		padding: 24px 16px;
    		background: rgba(255,255,255,0.9);
    		margin-bottom: 10px;
    		border-radius: 4px;
    		box-shadow: 0 2px 4px 0 rgba(121,146,185,.54);
		}

		.new-item {
    		line-height: 24px;
    		position: relative;
		}

		.title{
			color: #333;
    		font-weight: 700;
		}

		.card .top .time{
			color: #999;
    		font-size: 12px;
    		line-height: 22px;
    		margin: 0 10px;
		}
		
		.card .bottom{
    		padding-left: 8px;
		}

		.im-dynamic-link {
    		color: #0097d0;
    		padding: 0 5px;
    		text-decoration: none;
		}

		.action-menu{
			position: absolute;
			z-index: 2;
		}

		
		.action-menu .menu-list{
    		position: absolute;
    		top: 35px;
    		background: #fff;
    		border: 1px solid #e9eaec;
    		border-radius: 4px;
    		padding: 10px;
    		text-align: center;
    		z-index: 2;
    		transform-origin: 50% 0;
    		left: calc(-54px + 50%);
    		width: 106px;
		}

		.action-menu .menu-list:before {
		    position: absolute;
		    top: -6px;
		    left: calc(50% - 5px);
		    content: "";
		    width: 10px;
		    height: 10px;
		    background-color: #fff;
		    border: 1px solid #e9eaec;
		    border-bottom-color: transparent;
		    border-left-color: transparent;
		    border-radius: 4px;
		    transform: rotate(-45deg);
		}

		.action-menu .menu-list a {
    		display: block;
    		margin-bottom: 6px;
    		line-height: 20px;
   		 	font-size: 14px;
    		color: #333;
    		word-break: keep-all;
		}		

		.action-menu .menu-list a:last-child {
    		margin-bottom: 0;
		}

		.action-menu a.bp-icon-font{
    		display: inline-block;
    		width: 30px;
    		height: 30px;
    		line-height: 30px;
    		text-align: center;
    		color: #999;
    		cursor: pointer;
		}

		.bp-icon-font {
    		font-family: "bp-icon-font" !important;
    		font-size: 14px;
    		font-style: normal;
    		-webkit-font-smoothing: antialiased;
    		-webkit-text-stroke-width: 0.2px;
    		-moz-osx-font-smoothing: grayscale;
    		display: inline-block;
		}

		.bp-icon-font.icon-more-1:before {
    		content: "\E00F";
		}
		
		a:-webkit-any-link {
		    cursor: pointer;
		}

		.hide{
			display: none;
		}

		.clearfix{ display: inline-block; }   
		      /*  Hides from IE-mac  \*/         
		*html .clearfix{ height:1%; }   
		.clearfix{ display:block; }
		.shoppingcar:hover>.car{
			display: block;
		}
		
		/*div 滚动条*/
		.space-right-bottom::-webkit-scrollbar {
           	width: 8px;
        	height: 8px;
        }
                  
		.space-right-bottom::-webkit-scrollbar-thumb {
           	background-color: rgba(0, 0, 0, .05);
            border-radius: 10px;
           	-webkit-box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1);
       	}
                  
        .space-right-bottom::-webkit-scrollbar-thumb {
        	background-color: rgba(0, 0, 0, .2);
          	border-radius: 10px;
       		-webkit-box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1);
      	}
                  
      	.space-right-bottom::-webkit-scrollbar-thumb:hover {
         	background-color: rgba(0, 0, 0, .4);
          	-webkit-box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1);
        }
                  
 		.space-right-bottom::-webkit-scrollbar-track {
          	border-radius: 10px;
        	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0);
          	background-color: white;
       	}
                  
      	.space-right-bottom::-webkit-scrollbar-track:hover {
            	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .4);
            	background-color: rgba(0, 0, 0, .01);
        }
	</style>
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
					<li><a id="1" href="news">新闻通知</a></li>
					<li><a id="2" href="homeworks">作业通知</a></li>
					<li><a id="3" href="leavMessages">我的回复</a></li>
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
			
			$(".list a").click(function( e ){
				e.preventDefault();
				var aChoose = $( this );
				var bottom = $("div.space-right-bottom").empty();
				var title = $("div.space-right-top .title").empty();
				//$.get("/MyMessages/title",{id : aChoose.attr("id")},function(title){
					//var divTitle = $("<div />").html(title);
					//divTitle.appendTo(title);
				//}, "json");
				
				
				$.get("/MyMessages/classification",{typeId : aChoose.attr("id"), t : new Date().getTime()},function(value){
					if(value.flag == 1){
						var divTitle = $("<div>新闻通知</div>");
						divTitle.appendTo(title);
						$.each(value.news, function(i,m){
							var card = $("<div/>").attr("class","new-item card");
						
							//删除菜单
							var actionMenu = $("<div/>").attr("class","action-menu").attr("style","top:10px;right:5px");
							var icon = $("<a/>").attr("class","bp-icon-font icon-more-1");
							var menuList = $("<div/>").attr("class","menu-list hide").attr("style","width:58px;left:-16px;");
							var menuListA = $("<a>删除</a>").attr("href","javascript:;");
							
							var cardTop = $("<div/>").attr("class","top");
							var cardBottom = $("<div/>").attr("class","bottom");
							var cardTopTitle = $("<span>你有一条新新闻</span>").attr("class","title");
							var cardTopTime = $("<span/>").attr("class","time").html(m.time);
							var cardBottomContent = $("<span/>").html(m.messageContent);
							var cardA = $("<a>链接</a>").attr("href", m.messagePath).attr("class", "im-dynamic-link");
							cardTop.append(cardTopTitle).append(cardTopTime).appendTo(card);
							cardBottom.append(cardBottomContent).append(cardA).appendTo(card);
							menuListA.appendTo(menuList);
							actionMenu.append(icon).append(menuList).appendTo(card); 
							card.appendTo(bottom);
							
							//判断删除键是否被按下
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
					        });
							
						});
					}
					else if(value.flag == 2){
						var divTitle = $("<div>作业通知</div>");
						divTitle.appendTo(title);
					}
					else if(value.flag == 3){
						var divTitle = $("<div>我的留言</div>");
						divTitle.appendTo(title);
					}
					
					
				}, "json");
				
			});
		});
	
	</script>

</body>
</html>