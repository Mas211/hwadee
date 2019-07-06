<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>更多公告</title>
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
	<link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="/assets/css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
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
			<div class="bottom_header_right">
				<c:choose>
				<c:when test="${!empty sessionScope.account}">
					<div class="header-top-righ">
					<a href="logout"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>注销
					</a>
					<br/>
					<a href="/menu"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>个人中心
					</a>
				</div>
				</c:when>
				<c:otherwise>
				<div class="header-top-righ">
					<a href="login"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>登录
					</a>
				</div>
				</c:otherwise>
				</c:choose>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
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
									<li><a href="index" class="">首页</a></li>
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
				<li>
					<a href="/index">首页</a>
					<span>| |</span>
				</li>
				<li>公告列表</li>
			</ul>
		</div>
	</div>
	<!-- //short-->

	
	<div style="width: 70%; margin: 0 auto;">
		<c:forEach items="${ requestScope.topAnnounce }" var="t">
			<hr />	
			<div class="clearfix">
				<h4 style="display: inline-block;">
				<a href="/announce/${t.announceId}" target="view_window">${t.announceTitle}</a></h4>
				<span style="color: #959595;">[置顶]</span>
				<span style="font-family: 'Open Sans', sans-serif;color: #999; float: right;">${t.announceTime}</span>
			</div>
						
		</c:forEach>
		<hr />	

		<c:forEach items="${ requestScope.announce }" var="a">
			<hr />
			<div class="clearfix">
				<h4 style="display: inline-block;">
					<a href="/announce/${a.announceId}" target="view_window">${a.announceTitle}</a></h4>
				<span style="font-family: 'Open Sans', sans-serif;color: #999; float: right;">${a.announceTime}</span>
			</div>
				
		</c:forEach>
		<hr />
		<!-- 
		跳转到指定页面
		<div style="margin: 0 auto;width: 200px; display: inline-block;">
	
				<input id="jumpId" type="test" value="${requestScope.pageId}" style="width: 50px;">
				<span style="font-size: 20px;">/${requestScope.pId}</span>
				<input type="button" value="跳转" onclick="jump()">
				<script type="text/javascript">
					function jump(){
						var page = document.getElementById("jumpId").value;
						window.location = "/newsList/" + page;
					}
				</script>

			</div> -->
		<!-- 页面跳转控件 -->
		<div class="col-md-6" style="margin: 0 200px; ">
			<nav  >
				<ul class="pagination">
					<c:if test="${requestScope.pageId gt 1}">
						<li>
							<a href="/newsList/${requestScope.pageId - 1}" aria-label="Previous">
								<span aria-hidden="true">«</span>
							</a>
						</li>
					</c:if>
					<c:if test="${(requestScope.pageId - 2) gt 0}">
						<li>
							<a href="/newsList/${requestScope.pageId - 2}">${requestScope.pageId - 2}</a>
						</li>
					</c:if>

					<c:if test="${(requestScope.pageId - 1) gt 0}">
						<li>
							<a href="/newsList/${requestScope.pageId - 1}">${requestScope.pageId - 1}</a>
						</li>
					</c:if>
					
					<li >
						<a style="background-color: #f5f5f5;">${requestScope.pageId}</a>
					</li>
					
					<c:if test="${requestScope.pageId lt requestScope.pId}">
						<li>
							<a href="/newsList/${requestScope.pageId + 1}">${requestScope.pageId + 1}</a>
						</li>						
					</c:if>
					
					<c:if test="${(requestScope.pageId + 1) lt requestScope.pId}">
						<li>
							<a href="/newsList/${requestScope.pageId + 2}">${requestScope.pageId + 2}</a>
						</li>
					</c:if>
					
					<c:if test="${requestScope.pageId lt requestScope.pId}">
						<li>
							<a href="/newsList/${requestScope.pageId + 1}" aria-label="Next">
								<span aria-hidden="true">»</span>
							</a>
						</li>
					</c:if>
					
				</ul>
			</nav>
		</div>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
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
							<a href="about.html">关于我们</a>
						</li>
						<li>
							<a href="courses.html">联系我们</a>
						</li>
						<li>
							<a href="join.html">反馈建议</a>
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
	<!-- Calendar -->
	<link rel="stylesheet" href="/assets/css/jquery-ui.css" />
	<script src="/assets/js/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!-- smooth scrolling -->
	<script src="/assets/js/SmoothScroll.min.js"></script>
	<script src="/assets/js/move-top.js"></script>
	<script src="/assets/js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>

</html>