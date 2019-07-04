<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    width:200px;
    height:350px;
    position:fixed;
    bottom:0;
    left:0;
    z-index: 999;
    
}
</style>
<!--这个style固定二维码位置-->
</head>

<body>


	<div id="div1"><img src="..\assets\images\erweima.png"></div><!--这个是二维码地址-->
	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					<span class="fa fa-map-marker" aria-hidden="true"></span>成都，中国
				</p>
			</div>
			<div class="bottom_header_right">
				
				<div class="top-menu">
            <ul class="pull-right top-menu">
                <br>

            </ul>
        		</div>
				<div class="header-top-righ">
					<a href="login.html">
						<span class="fa fa-sign-out" aria-hidden="true"></span>登录</a>
				</div>
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
								<li><a href="" class="effect-3"></a></li>
								<li><a href="" class="effect-3"></a></li>
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
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
					<h4>关于
						<span>家校通</span>
					</h4>
					<p>注意里文本不要写太长，写点就换行。不然会被挡= =</p>
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
				<div class="col-md-6 stats-info-agile">
					<div class="col-xs-6 stats-grid stat-border">
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='768' data-delay='.5' data-increment="1">768</div>
						<p>注册学校</p>
					</div>
					<div class="col-xs-6 stats-grid">
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='678' data-delay='.5' data-increment="1">678</div>
						<p>使用课程</p>
					</div>
					<div class="clearfix"></div>
					<div class="child-stat">
						<div class="col-xs-6 stats-grid stat-border border-st2">
							<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='800' data-delay='.5' data-increment="1">800</div>
							<p>注册教师</p>
						</div>
						<div class="col-xs-6 stats-grid">
							<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='4850' data-delay='.5' data-increment="10">4850</div>
							<!--data-increment是数据的增速，数据大的可以改大些-->
							<p>受益学生</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
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
					<span>我们</span> 学校
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="agileinfo-gallery-row">
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g7.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g7.jpg" alt="" title="Our Library" />
						<div class="agile-figcaption">
							<h4>Library</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g9.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g9.jpg" alt="" title="Volleyball Sports" />
						<div class="agile-figcaption">
							<h4>Volleyball</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g3.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g3.jpg" alt="" title="Our Computer Lab" />
						<div class="agile-figcaption">
							<h4>Computer Lab</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g4.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g4.jpg" alt="" title="Meditation" />
						<div class="agile-figcaption">
							<h4>Meditation</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g1.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g1.jpg" alt="" title="Science" />
						<div class="agile-figcaption">
							<h4>Science</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g6.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g6.jpg" alt="" title="Group Discussion" />
						<div class="agile-figcaption">
							<h4>Group Discussion</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g2.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g2.jpg" alt="" title="Chemical Lab" />
						<div class="agile-figcaption">
							<h4>Chemical Lab</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g5.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g5.jpg" alt="" title="Our Sports" />
						<div class="agile-figcaption">
							<h4>Sports</h4>
						</div>
					</a>
				</div>
				<div class="col-xs-4 w3gallery-grids">
					<a href="../assets/images/g8.jpg" class="imghvr-hinge-right figure">
						<img src="../assets/images/g8.jpg" alt="" title="Our Excellent Seminar" />
						<div class="agile-figcaption">
							<h4>Seminar</h4>
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
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
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
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
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
								<a href="#" data-toggle="modal" data-target="#myModal">Integer viverra eleifend neque</a>
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
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque
							ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis
							porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper. Cras tempor massa
							luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- //news -->
	<!-- middle section -->

	<!-- //middle section -->
	<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>学生</span>说
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<ul id="flexiselDemo1">
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/te1.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Michael Paul</h5>
								<p>Client 1</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/te2.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Faul John</h5>
								<p>Client 2</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="../assets/images/te3.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Richa Roy</h5>
								<p>Client 3</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
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