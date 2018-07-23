<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人力资源-登录页面</title>
<style type="text/css">
	html,body{
		height: 100%;
		margin: 0;
		padding: 0;
	}
	#bg{
		background:url("${pageContext.request.contextPath}/img/bg.jpg")no-repeat;
		background-size:cover;
		height: 100%;		
	}
	table{
		position: absolute;
		top:25%;
		left: 50%;
		transform:translateX(-50%);
		color:#5fd6c6;
		text-align: center;
		font-size: 25px;
		width:500px;
		height:400px;
	}
	th{
		font-size: 60px;
	}
	input{
		height: 30px;
		width:200px;
		background: #ffffff80;
		border: 2px solid #5fd6c6;
		border-radius: 8px;
		padding: 5px;
		font-size: 18px;
		
	}	
	#login{
		height: 40px;
		width:200px;
		background: #ffffff80;
		border: 2px solid #5fd6c6;
		border-radius: 8px;
		padding: 5px;
		color:#56e2cf;
	}
	#login:hover{
		background: #5fd6c6;
		border: 2px solid #5fd6c6;
		color:white;
	}
	a{
		text-decoration:none;
		font-size: 20px;
		color:#56e2cf;
	}
	a:hover {
		text-decoration: underline;
		color:white;
	}	
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	$(":text").blur(function(){
		var name=$(":text").val();
		url="${pageContext.request.contextPath}/user/checkName";
		args={"name":name};
		$.post(url,args,function(data){
			if(data=="000"){
				$("#s1").text("用户名不存在，请注册");
			}else{
				$("#s1").text("");
			}
		})
		
	})
	$(":password").blur(function(){
		var name=$(":text").val();
		var password=$(":password").val();
		url="${pageContext.request.contextPath}/user/check"
		args={"name":name,"password":password};
		$.post(url,args,function(data){
			if(data=="000"){
				$("#s2").text("密码错误")
			}else{
				$("#s2").text("");
			}
		})
	})
})
</script>
</head>
<body >
	<div id="bg">
		<form action="${pageContext.request.contextPath}/user/login"
			method="post">
			<table >
				<tr>
					<th>登录</th>
				</tr>
				<tr>
					<td><input type="text" placeholder="请输入用户名" name="name" required="required"></td>
					<td><span id="s1"></span></td>
				</tr>
				<tr>
					<td><input type="password" placeholder="请输入密码" name="password" required="required"></td>
					<td><span id="s2"></span></td>
				</tr>
				<tr>
					<td><input type="submit" value="登录" id="login"></td>
				</tr>

				<tr>
					<td>
					<a href="register.jsp">快来加入我们吧!注册</a></td>
				</tr>
				<tr>
				<td><span></span></td>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>