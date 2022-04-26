<%--
  Created by IntelliJ IDEA.
  User: shihkailiao
  Date: 2022/4/26
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>學生登入</title>
</head>
<body>
        <form action="/stu/loginStudentServlet" method="get" autocomplete="off">
            姓名：<input type="text" name="username"><br>
            密碼：<input type="password" name="password"><br>
            <button type="submit">登入</button>
        </form>
</body>
</html>
