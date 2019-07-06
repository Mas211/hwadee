<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>欢迎访问家校通</title>
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


	<style type="text/css">
	#div1{
    width:0px;
    height:300px;
    position:fixed;
    bottom:0;
    left:-35px;
    z-index: 999;
    
}   


</style>
<!--这个style固定二维码位置-->
</head>

<body>


	<div id="div1"><img src="..\assets\images\erweima2.gif" height="205" width="205" ></div><!--这个是二维码地址-->
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
					<br/>
					<a href="/studentCheck"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>验证
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
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html">
							<h1 >
								<span><img src="..\assets\images\graduate.png" height="60" width="60"></span>家校通
								<!--这里插入logo的路径-->
								<label>Education & Courses</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li><a href="index.html" class="">首页</a></li>
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel" >

		<!-- Indicators -->
		
		<ol class="carousel-indicators" >
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h6></h6>
						<h3>
							<span></span>
						</h3>
						<p></p>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h6></h6>
						<h3>
							<span></span>
						</h3>
						<p></p>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h6></h6>
						<h3>
							<span></span> </h3>
						<p></p>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
						<h6 ></h6>
						<h3>
							<span></span>
						</h3>
						<p></p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!--//banner -->
	<!-- about -->
	<div class="banner-bottom-w3l" id="about">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>欢迎访问</span>家校通
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="welcome-sub-wthree">
				<div class="col-md-6 banner_bottom_left">
					<h4>新
						<span>闻</span>
					</h4>
					<p>？？</p>
					<p>！</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
				</div>
				<div class="col-md-6 banner_bottom_left">
					<h4>公
						<span>告</span>
					</h4>
					<p>= =</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
					<p>介绍介绍……</p>
				</div>
				<!-- Stats-->
				
				<!-- //Stats -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网站建设</a></div>

	<!-- news -->




	<div class="gallery">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>趣味</span>活动
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="agileinfo-gallery-row">
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/ffz.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/ffz.jpg" alt="" title="跟小伙伴们放风筝真开心~~" />
						<div class="agile-figcaption">
							<h4>放风筝</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/气球.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/气球.jpg" alt="" title="阳光下的气球真美啊" />
						<div class="agile-figcaption">
							<h4>放气球</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/数字.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/数字.jpg" alt="" title="我们一起跳一跳" />
						<div class="agile-figcaption">
							<h4>兔子跳</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/踢足球.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/踢足球.jpg" alt="" title="注意了，我要射门了！" />
						<div class="agile-figcaption">
							<h4>足球比赛</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/纸飞机.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/纸飞机.jpg" alt="" title="带上纸飞机奔跑吧！" />
						<div class="agile-figcaption">
							<h4>纸飞机</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/讲课.jpg" class="imghvr-hinge-right figure" target="_blank">
						<img src="../assets/images/讲课.jpg" alt="" title="跟小伙伴们一起学习呀~" />
						<div class="agile-figcaption">
							<h4>师生讨论</h4>
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>





	<div class="news" id="news">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>相关</span>事件

				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="yaallahaa-news-grids-agile">
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img">
							<div class="news-left-text color-event1">
								<h5>学校介绍</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color1">
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 7:00 pm - 9:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 2589</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img1">
							<div class="news-left-text color-event2">
								<h5>学生活动</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color2">
								<a href="#" data-toggle="modal" data-target="#myModal1">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 6:00 am - 8:00 am</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 1452</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img2">
							<div class="news-left-text color-event3">
								<h5>教师介绍</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color3">
								<a href="#" data-toggle="modal" data-target="#myModal2">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 10:00 am - 1:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 7458</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img3">
							<div class="news-left-text color-event4">
								<h5>相关新闻</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color4">
								<a href="#" data-toggle="modal" data-target="#myModal3">Integer viverra eleifend neque</a>
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										<span class="fa fa-clock-o" aria-hidden="true"></span> 7:00 pm - 9:00 pm</a>
								</div>
								<div class="time">
									<p>
										<span class="fa fa-map-marker" aria-hidden="true"></span> Newyork City, 786.</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<p>Aliquam erat volutpat. Duis vulputate tempus laoreet.</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Best
						<span>Study</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="model-img-info">
						<img src="images/e1.jpg" alt="" />
						<p>你在看你🐎呢</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="modal about-modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Best
						<span>Study</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="model-img-info">
						<img src="images/e1.jpg" alt="" />
						<p>你在看你🐎111呢</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="modal about-modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Best
						<span>Study</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="model-img-info">
						<img src="images/e1.jpg" alt="" />
						<p>你在看你🐎222呢</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div class="modal about-modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Best
						<span>Study</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="model-img-info">
						<img src="images/e1.jpg" alt="" />
						<p>你在看你🐎333呢</p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- //modal -->
	<!-- //news -->

	<!-- //middle section -->
	<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>优秀</span>学生展
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<ul id="flexiselDemo1">
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/stu1.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>三好学生</h5>
								<p>赵欢</p>
							</div>
							<p>
								我今年十岁现读于堎底下镇四年级现任班长一职。
								我勤奋好学、品学兼优、乐观向上、爱好广泛、尊敬师长、团结同学、做事执着、有毅力、是一个德、智、体、美、劳全面发展的好学生。
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/stu2.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>文明儿童</h5>
								<p>王瑞华</p>
							</div>
							<p>
								我有一腔勇于负责的精神。
								在学校里我是老师的得力小助手同学们的好服务员。
								我有一颗善良真诚的心灵。我的语文、数学、英语学习成绩一直名列前茅。
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/stu3.png" alt=" " class="img-responsive" height="205" width="205"/>
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>优秀学生</h5>
								<p>过怡渲</p>
							</div>
							<p>
								我爱学习、爱思考、勤于实践，坚持努力学好各门功课并且积极参加形式多样的课外活动。
								了解社会有一定的实践能力。我善于观察勤学好问，根据自己的想象经常在家制作一些小东西，种植一些小植物，实践让我吸取了甘甜，拥有了丰润丰满了羽翼。
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>

			</ul>
		</div>
	</div>
	<!-- //testimonials -->
	<!-- footer -->
	<div class="mkl_footer">
		<div class="sub-footer">
			<div class="container">
				<div class="mkls_footer_grid">
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>地址:</h4>
						<p>四川省成都市郫都区红旗大道北段146号</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>联系 我们:</h4>
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
					<p>Copyright &copy; 重庆市沙坪坝沙正街174号重庆大学龙爱家项目组 <a href="https://github.com/Mas211/hwadee" target="_blank" title="点击访问…">项目详情</a> </p>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/footer -->

	<!-- js files -->
	<!-- js -->
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- stats numscroller-js-file -->
	<script src="assets/js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->

	<!-- Flexslider-js for-testimonials -->
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: false,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 1
					},
					tablet: {
						changePoint: 768,
						visibleItems: 1
					}
				}
			});

		});
	</script>
	<script src="assets/js/jquery.flexisel.js"></script>
	<!-- //Flexslider-js for-testimonials -->
	<!-- smooth scrolling -->
	<script src="assets/js/SmoothScroll.min.js"></script>
	<script src="assets/js/move-top.js"></script>
	<script src="assets/js/easing.js"></script>
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