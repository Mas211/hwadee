<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/register" method="post">
		Email:<input name="email"/><span></span><br/>
		Password:<input type="password" name="password"/><br/>
		Nickname:<input type="text" name="nickName"/><br/>
		<input type="submit" value="註冊"/>
	</form>
	<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		
		$(function(){
			
			$("form > input[name=email]").blur(function( e ){
				var input = $( this );
				input.next("span").html("该邮箱已存在").css("color", "red");
				$.get("/check",{email: input.val(), t : new Date().getTime()}, function( data ){
					
					if( data == 1 ){
						input.next("span").html("该邮箱已存在").css("color", "red");
					} else {
						input.next("span").html("该邮箱可以注册").css("color", "green");
					}
					
				}, "json");
				
			});
			
		});
	</script>
</body>
</html>