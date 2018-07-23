<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>游客页面</title>
<style type="text/css">
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#bg {
	background: url("${pageContext.request.contextPath}/img/bg.jpg")
		no-repeat;
	background-size: cover;
	height: 100%;
}



#d1 {
	position: absolute;
	top: 25%;
	left: 50%;
	transform: translateX(-50%);
	color: #5fd6c6;
	text-align: center;
}

a {
	text-decoration: none;
	font-size: 20px;
	color: #56e2cf;
}

a:hover {
	text-decoration: underline;
	color: white;
}
</style>
</head>
<body>
<div id="bg">
当前用户:${sessionScope.user.name}
<div id="d1">
<a href="">消息</a><br>
<a href="${pageContext.request.contextPath }/user/recuit?name=${sessionScope.user.name}">招聘信息</a><br>
<a href="">修改密码</a><br>
<a href="">查看简历</a><br>
</div>
</div>
<div></div>
</body>
</html>