<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		top:15%;
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
	#register{
		height: 40px;
		width:200px;
		background: #ffffff80;
		border: 2px solid #5fd6c6;
		border-radius: 8px;
		padding: 5px;
		color:#56e2cf;
	}
	#register:hover{
		background: #5fd6c6;
		border: 2px solid #5fd6c6;
		color:white;
	}	
</style>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	var flag1=false;
	var flag2=false;
	var flag3=false;
	$(":text").blur(function(){
		var name=$(":text").val();
		url="${pageContext.request.contextPath}/user/name";
		args={"name":name};
		$.post(url,args,function(data){
			if(data=="111"){
				$("#s1").text("该用户名已存在");
			}else{
				$("#s1").text("");
				flag1=true;
			}
		})
	})
	$(":password[name='password']").blur(function(){
		var password=$(this).val();
		var reg=/^(\w){6,20}$/;
		if(reg.test(password)){
			$("#s2").text("");
			flag2=true;
		}else{
			$("#s2").text("密码必须为6-20个字母，数字，下划线组成");
		}
	})
	$(":password[name='password2']").blur(function(){
		var password=$(":password[name='password']").val();
		var password2=$(this).val();
		if(!(password==password2)){
			$("#s3").text("两次密码不一致");
		}else{
			$("#s3").text("");
			flag3=true;
		}
	})
// 	$(":submit").click(function(){
		
// 		if(flag1&&flag2&&flag3){
// 			var name1=$(":text").val();
// 			alert(name1);
// 			var password1=$(":password[name='password']").val();
// 			alert(password1);
// 			window.location.href="${pageContext.request.contextPath}/user/register?name=name1&password=password1"
 			
// 		}
// 	})
})
</script>
<title>人力资源-注册页面</title>
</head>
<body>
<div id="bg">
<form action="${pageContext.request.contextPath}/user/register" method="post">
<table>

<tr><td colspan="2" style="font-size:30px" align="center">注册</td></tr>
<tr>
<td><input type="text" placeholder="请输入用户名" name="name" required="required"></td>
<td><span id="s1"></span></td>
</tr>
<tr>
<td><input type="password" placeholder="请输入密码" name="password" required="required"></td>
<td><span id="s2"></span></td>
</tr>
<tr>
<td><input type="password" placeholder="确认密码" name="password2" required="required"></td>
<td><span id="s3"></span></td>
</tr>
<tr><td colspan="2" align="center"><input type="submit" id="register" value="注册"></td>
</tr>

</table>
</form>
</div>
</body>
</html>