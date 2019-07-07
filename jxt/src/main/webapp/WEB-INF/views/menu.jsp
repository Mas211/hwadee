<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>个人中心</title>
<!-- meta-tags -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
<!-- //meta-tags -->
<link rel="stylesheet" type="text/css" href="/MessageCenter.css" />
<link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/assets/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome -->
<link href="/assets/css/font-awesome.css" rel="stylesheet">
<!-- fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">
</head>

<body>
	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					<span class="fa fa-map-marker" aria-hidden="true"></span>成都，中国
				</p>
			</div>
			<div class="bottom_header_right"  style="width: 40%;">
				<div class="header-top-righ">
					<a href="/logout"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>注销
					</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/u/s/menu"> <span class="fa fa-tasks"
						aria-hidden="true"></span>个人中心
					</a>
				</div>
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
						<a class="navbar-brand" href="/index">
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
								<li><a href="#" class="">学校概况</a>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">新闻资讯 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="/announceList/1">公告</a></li>
										<li><a href="/newsList/1">新闻</a></li>
									</ul></li>
								<li><a href="#" class="effect-3">校园风采</a></li>
								<li><a href="#" class="effect-3">师资队伍</a></li>
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
				<li><a href="/index">首页</a> <span>| |</span></li>
				<li>功能列表</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<div class="contact">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>个&nbsp;人&nbsp;</span>中&nbsp;心
				</h3>
				<div class="tittle-style">
				</div>
			</div>
			<div class="contact-row">
				<c:choose>
					<c:when test="${sessionScope.account.roleId eq 5 }">
						<div class="fontawesome-icon-list">
							<a class="agile-icon" href="/u/s/personalInformationViewing" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-user" aria-hidden="true"></i>查看个人信息
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
							<a class="agile-icon" href="/u/s/personalInformationUpdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-cog" aria-hidden="true"></i>修改个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/grade/liststudent" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								 <i class="fa fa-th-list" aria-hidden="true"></i>查看成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/commentadding" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-book" aria-hidden="true"></i>查看评语
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/attend" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-calendar" aria-hidden="true"></i>查看考勤
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/homework/listhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-edit" aria-hidden="true"></i>查看作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/MessageCenter" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>消息中心
								<c:if test="${sessionScope.newsAllRead eq false or sessionScope.homeworksAllRead eq false or sessionScope.messageAllRead eq false}">
									<div class="point" style="float:left"></div>
								</c:if>
							</div></a>
						</div>
					</c:when>
					<c:when test="${sessionScope.account.roleId eq 4 }">
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationViewing" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-user" aria-hidden="true"></i>查看个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationUpdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-cog" aria-hidden="true"></i>修改个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/grade/liststudent" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-th-list" aria-hidden="true"></i>查看子女成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/commentadding" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-book" aria-hidden="true"></i>查看子女评语
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/attend" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-calendar" aria-hidden="true"></i>查看子女考勤
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/homework/listhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-edit" aria-hidden="true"></i>查看作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/stuRp" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-trophy" aria-hidden="true"></i>查看子女奖罚信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/MessageCenter" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>消息中心
								<c:if test="${sessionScope.newsAllRead eq false or sessionScope.homeworksAllRead eq false or sessionScope.messageAllRead eq false}">
									<div class="point" style="float:left"></div>
								</c:if>

							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/vedio" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-caret-square-o-right" aria-hidden="true"></i>查看视频
								
							</div></a>
						</div>

					</c:when>
					<c:when test="${sessionScope.account.roleId eq 3 }">
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationViewing" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-user" aria-hidden="true"></i>查看个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationUpdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-cog" aria-hidden="true"></i>修改个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/grade/enterginggrade" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-keyboard-o" aria-hidden="true"></i>录入成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/grade/listall" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-th-list" aria-hidden="true"></i>查看所有成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/commentadding" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-book" aria-hidden="true"></i>添加评语
								
							</div></a>
						</div>
						
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/newRp" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-star-o" aria-hidden="true"></i>记录奖罚
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/rpManage" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-calendar" aria-hidden="true"></i>查看奖罚
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/homework/listhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-edit" aria-hidden="true"></i>查看作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/homework/publishhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>布置作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/createNews" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-plus" aria-hidden="true"></i>发布新闻
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
							<a class="agile-icon" href="/u/t/newsManage" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								 <i	class="fa fa-file-text-o" aria-hidden="true"></i>我发布的新闻
							</div>
							</a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/activity/activity" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>发布活动照片
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/MessageCenter" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>消息中心
								<c:if test="${sessionScope.newsAllRead eq false or sessionScope.homeworksAllRead eq false or sessionScope.messageAllRead eq false}">
									<div class="point" style="float:left"></div>
								</c:if>
							</div></a>
						</div>
					</c:when>

					<c:when test="${sessionScope.account.roleId eq 2 }">
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationViewing" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-user" aria-hidden="true"></i>查看个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationUpdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-cog" aria-hidden="true"></i>修改个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/grade/listall" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-th-list" aria-hidden="true"></i>查看所有成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/commentadding" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-book" aria-hidden="true"></i>添加评语
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/grade/enterginggrade" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-keyboard-o" aria-hidden="true"></i>录入成绩
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/homework/listhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-edit" aria-hidden="true"></i>查看作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/homework/publishhomework" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>布置作业
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/createNews" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-plus" aria-hidden="true"></i>发布新闻
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
							<a class="agile-icon" href="/u/t/newsManage" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								 <i	class="fa fa-file-text-o" aria-hidden="true"></i>我发布的新闻
							</div>
							</a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/MessageCenter" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>消息中心
								<c:if test="${sessionScope.newsAllRead eq false or sessionScope.homeworksAllRead eq false or sessionScope.messageAllRead eq false}">
									<div class="point" style="float:left"></div>
								</c:if>
							</div></a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationViewing" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-user" aria-hidden="true"></i>查看个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/personalInformationUpdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-cog" aria-hidden="true"></i>修改个人信息
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/createNews" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-plus" aria-hidden="true"></i>发布新闻
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
							<a class="agile-icon" href="/u/newsManage" target="view_window">
							<div class="icon-box col-md-3 col-sm-4">
								 <i	class="fa fa-file-text-o" aria-hidden="true"></i>管理新闻
							</div>
							</a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/createAnnounce" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bullhorn" aria-hidden="true"></i>发布公告
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/announceManage" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-file-text" aria-hidden="true"></i>管理公告
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/t/activity/activity" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>发布活动照片
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/accountadding" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-snapchat-ghost" aria-hidden="true"></i>创建新用户
								
							</div></a>
						</div>
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/adminupdating" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-info" aria-hidden="true"></i>修改用户信息
								
							</div></a>
						</div>
						
						<div class="fontawesome-icon-list">
						<a class="agile-icon" href="/u/s/MessageCenter" target="view_window"> 
							<div class="icon-box col-md-3 col-sm-4">
								<i class="fa fa-bell-o" aria-hidden="true"></i>消息中心
								<c:if test="${sessionScope.newsAllRead eq false or sessionScope.homeworksAllRead eq false or sessionScope.messageAllRead eq false}">
									<div class="point" style="float:left"></div>
								</c:if>
							</div></a>
						</div>
						
					</c:otherwise>
				</c:choose>
				<div class="clearfix"></div>
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
	<!--/footer -->

	<!-- js files -->
	<!-- js -->
	<script src="/assets/js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="/assets/js/bootstrap.js"></script>
	<!-- smooth scrolling -->
	<script src="/assets/js/SmoothScroll.min.js"></script>
	<script src="/assets/js/move-top.js"></script>
	<script src="/assets/js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->
	<script src="/assets/js/canvas-nest.min.js"></script>
</body>

</html>