<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>作业</title>
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
<style type="text/css">
.homework_page_agile {
	text-align: center;
	background: url(/assets/images/homework.jpg) no-repeat center;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	-ms-background-size: cover;
	min-height: 500px;
}
</style>
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
					<a href="/logout"> <span class="fa fa-sign-out"
						aria-hidden="true"></span>注销
					</a> <br /> <a href="/u/s/menu"> <span class="fa fa-tasks"
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
	<div class="homework_page_agile">

	</div>
	<!--//banner -->
	<!-- short-->
	<div class="services-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<c:choose>
					<c:when test="${sessionScope.account.roleId eq 4 }">
						<li>
							<a href="/u/s/menu">个人中心</a>
							<span>| |</span>
						</li>
					</c:when>
					<c:when test="${sessionScope.account.roleId eq 5 }">
						<li>
							<a href="/u/s/menu">个人中心</a>
							<span>| |</span>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/u/s/menu">个人中心</a>
							<span>| |</span>
						</li>
						<li>
							<a href="/u/t/homework/publishhomework">布置作业</a>
							<span>| |</span>
						</li>
					</c:otherwise>
				</c:choose>
				<li>查看作业</li>
			</ul>
		</div>
	</div>
	<!-- //short-->
	<!-- blog -->
	<div class="blog-cource">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>作 &nbsp;</span>业
				</h3>
				<div class="tittle-style">
				</div>
			</div>
			<div class="bs-docs-example">
			<c:choose>
				<c:when test="${sessionScope.account.roleId eq 3 }">
					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>发布老师</th>
								<th>班级</th>
								<th>作业标题</th>
								<th>发布时间</th>
								<th>截止时间</th>
								<th>内容</th>
								<th>完成情况</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.tasks }" var="t">
								<tr>
									<td>${t.taskId }</td>
									<td>${t.account.accountName }</td>
									<td>${t.account.accountClassId }</td>
									<td>${t.taskTitle }</td>
									<td>${t.taskBeginTime }</td>
									<td>${t.taskDeadline }</td>
									<td>${t.taskContent }</td>
									<td>${t.taskIsFinish }</td>
									<td><a class="updateTask"
										href="/u/t/homework/updatehomework/${t.taskId }">修改</a> | <a
										class="deleteTask" href="/u/t/homework/listhomework/${t.taskId }">删除</a>
										| <a class="report" href="/u/t/homework/report/${t.taskId }">完成</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:when>
				<c:when test="${sessionScope.account.roleId eq 4 }">
					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>发布老师</th>
								<th>班级</th>
								<th>作业标题</th>
								<th>发布时间</th>
								<th>截止时间</th>
								<th>内容</th>
								<th>完成情况</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.tasks }" var="t">
								<tr>
									<td>${t.taskId }</td>
									<td>${t.account.accountName }</td>
									<td>${t.account.accountClassId }</td>
									<td>${t.taskTitle }</td>
									<td>${t.taskBeginTime }</td>
									<td>${t.taskDeadline }</td>
									<td>${t.taskContent }</td>
									<td>${t.taskIsFinish }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:when>
				<c:when test="${sessionScope.account.roleId eq 5 }">
					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>发布老师</th>
								<th>班级</th>
								<th>作业标题</th>
								<th>发布时间</th>
								<th>截止时间</th>
								<th>内容</th>
								<th>完成情况</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.tasks }" var="t">
								<tr>
									<td>${t.taskId }</td>
									<td>${t.account.accountName }</td>
									<td>${t.account.accountClassId }</td>
									<td>${t.taskTitle }</td>
									<td>${t.taskBeginTime }</td>
									<td>${t.taskDeadline }</td>
									<td>${t.taskContent }</td>
									<td>${t.taskIsFinish }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- //blog -->

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
	<!-- stats numscroller-js-file -->
	<script src="/assets/js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->
	<!-- smooth scrolling -->
	<script src="/assets/js/SmoothScroll.min.js"></script>
	<script src="/assets/js/move-top.js"></script>
	<script src="/assets/js/easing.js"></script>
	<script src="https://cdn.bootcss.com/limonte-sweetalert2/7.20.5/sweetalert2.all.min.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<script src="https://cdn.bootcss.com/limonte-sweetalert2/7.20.5/sweetalert2.all.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$( "table.table > tbody" ).on("click","a.deleteTask", function( e ){
				e.preventDefault();
				swal({
					  title:'确定删除？',
					  type:"warning",
					  confirmButtonColor: "#DD6B55",
					  confirmButtonText:'<a style="color:white;" href="' + $(this).attr('href') + '">删除</a>',
					  showCancelButton: true,
					  cancelButtonText:'取消'
				}).then(function(){
					swal({
						title:"删除!",
						text:"您选中的作业已删除！",
						type:"success"
					});
				},function(dismiss){
					if(dismiss == 'cancel'){
						swal({
							title:"已取消！",
							type:"info"
						});
					}
				})
			});

			$( "table.table > tbody" ).on("click","a.updateTask", function( e ){
				e.preventDefault();
				swal({
				  title:'确定修改？',
				  type:'question',
				  confirmButtonColor: "#DD6B55",	
				  confirmButtonText:'<a style="color:white;" href="' + $(this).attr('href') + '">确定</a>',
				});
			}); 
			$( "table.table > tbody" ).on("click","a.report", function( e ){
				e.preventDefault();
				swal({
				  title:'确定已完成？',
				  type:'info',
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText:'<a style="color:white;" href="' + $(this).attr('href') + '">确定</a>',
				});
			}); 
		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>

</html>