<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <from>
   <table>
   <tr>
   <td>用户名</td>
   <td><input type="hidden" name="username" value=${sessionScope.name}></td>
   </tr>
   <tr>
   <td>真实姓名</td>
   <td><input type="text" name="name" ></td>
   </tr>
   <tr>
   <td>手机号</td>
   <td><input type="text" name="phone" ></td>
   </tr>
   <tr>
   <td>学历</td>
   <td><input type="text" name="education" ></td>
   </tr>
   <tr>
   <td>专业</td>
   <td><input type="text" name="major" ></td>
   </tr>
   <tr>
   <td>毕业院校</td>
   <td><input type="text" name="graduate_institution" ></td>
   </tr>
   <tr>
   <td>外语</td>
   <td><input type="text" name="languageSkill" ></td>
   </tr>
   <tr>
   <td>现居地</td>
   <td><input type="text" name="location" ></td>
   </tr>
   <tr>
   <td>身份证号码</td>
   <td><input type="text" name="IDNumber" ></td>
   </tr>
   <tr>
   <td>性别</td>
   <td><input type="text" name="gender" ></td>
   </tr>
   <tr>
   <td>出生年月</td>
   <td><input type="date" name="birth" ></td>
   </tr>
   <tr>
   <td>籍贯</td>
   <td><input type="text" name="native_place" ></td>
   </tr>
   <tr>
   <td>自我介绍</td>
   <td><input type="text" name="name" ></td>
   </tr>
   </table>
   </from>
</body>
</html>