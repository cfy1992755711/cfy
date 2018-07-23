<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

#bg {
	text-align: center;
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
    <div id="d1">
    <a href="userLogin.jsp">游客登录</a><br>
    <a href="employeeLogin.jsp">员工登录</a><br>
    <a href="adminLogin.jsp">管理员登录</a><br>
    </div>
    </div>
</body>
</html>