<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>发布活动</title>
<!-- meta-tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>

<!-- UEditor配置文件 -->
<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/ueditor/ueditor.all.js"></script>

<!-- 图片上传 -->
<script type="text/javascript">
	function uploadPic() {
		// 上传设置  
		var form = new FormData(document.getElementById("form"));
		$.ajax({
			// 规定把请求发送到那个URL  
			url : "/uploadNewsCover",
			// 请求方式  
			type : "post",
			data : form,
			// 服务器响应的数据类型  
			dataType : "json",
			cache : false,
			processData : false,
			contentType : false,
			// 请求成功时执行的回调函数  
			success : function(data, status, xhr) {
				// 图片显示地址  
				$("#allUrl").attr("src", data.path);
				$("#path").val(data.path);
			},
			error : function(e) {
				alert("网络错误，请重试！！");
			}
		});
	}
</script>


<!-- //meta-tags -->
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
			<div class="bottom_header_right">
					<div class="header-top-righ">
					<a href="logout"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>注销
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
						<a class="navbar-brand" href="index.html">
							<h1>
								<span><img src="..\assets\images\graduate.png"
									height="60" width="60"></span>家校通
								<!--这里插入logo的路径-->
								<label>Education & Courses</label>
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
										<li><a href="codes.html">公告</a></li>
										<li><a href="create_news">新闻</a></li>
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
	<!-- banner -->
	<div style="text-align: center">
		<image src="/assets/images/login.jpg" width=1000>
	</div>
	<!--//banner -->
	<!-- //short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li><a href="/index">主页</a> <span>| |</span></li>
				<li><a href="/activity/list">查看活动</a> <span>| |</span></li>
				<li>活动发布</li>

			</ul>
		</div>
	</div>
	<div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">发布活动</h3>
				<div class="tittle-style"></div>
			</div>
			<div class="register-form" style="width: 70%">
				<form action="" method="post" enctype="multipart/form-data" id="form">
					<label class="header">上传图片</label><br/>
					<img width="200" height="200" id="allUrl"/>  
					<!-- 在选择图片的时候添加事件，触发Ajax异步上传 -->  
					<input name="pic" type="file" onchange="uploadPic()"/>
				</form>
				<form action="#" method="post">
					<div class="fields-grid">
						<div class="styled-input">
							<label class="header">标题</label> <input type="text"
								name="actTitle" value="活动标题"> 
							<label class="header">发布人</label>
							<input type="text"  value="${sessionScope.account.accountName}">
							<input type="hidden" name="actPubberId" value="${sessionScope.account.accountId }">
						</div>

						<div class="styled-input">
							<input type="hidden" name="imagePath" id="path"> <label
								class="header">正文</label>
							<!-- 加载编辑器的容器 -->
							<script id="container" name="actContent" type="text/plain"
								style="height: 400px">请在此处输入活动</script>
							<!-- 配置文件 -->
							<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
							<!-- 编辑器源码文件 -->
							<script type="text/javascript" src="/ueditor/ueditor.all.min.js"></script>
							<!-- 实例化编辑器 -->
							<script type="text/javascript">
								var ue = UE.getEditor('container');
							</script>


						</div>
						<div class="clearfix"></div>
					</div>
					<input type="submit" value="发布">
				</form>
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
							<span>电话 : </span>800 820 8820
						</p>
						<p>
							<span>邮箱 : </span> email@jxt.com
						</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>上课时间</h4>
						<p>周一到周五</p>
						<p>8:20 - 16:30</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="botttom-nav-allah">
					<ul>
						<li><a href="about.html">关于我们</a></li>
						<li><a href="courses.html">联系我们</a></li>
						<li><a href="join.html">反馈建议</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copy-right">
			<div class="container">
				<div class="allah-copy">
					<p>
						Copyright &copy; 重庆市沙坪坝沙正街174号重庆大学龙爱家项目组 <a
							href="https://github.com/Mas211/hwadee" target="_blank"
							title="点击访问…">项目详情</a>
					</p>
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
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->
	<script src="/assets/js/canvas-nest.min.js"></script>
</body>

</html>