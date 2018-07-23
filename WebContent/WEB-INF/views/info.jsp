<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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




</style>
<title>招聘信息页面</title>
</head>
<body>
<div id="bg">
当前用户:${sessionScope.name}
    <table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
    <td>ID</td>
    <td>招聘职位</td>
    <td>岗位职责</td>
    <td>部门</td>
    <td>职位</td>
    <td>是否投递</td>
    </tr>
    <c:forEach items="${sessionScope.list}" var="recuit">
    <tr>
    <td>${recuit.id}</td>
    <td>${recuit.title }</td>
    <td>${recuit.content}</td>
    <td>${recuit.dept.name}</td>
    <td>${recuit.position.name}</td>
    <td><a href="${pageContext.request.contextPath }/user/deliver?name=${sessionScope.name}">投递简历</a></td>
    </tr>
    </c:forEach>
    </table>
</div>
</body>
</html>