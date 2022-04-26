<%--
  Created by IntelliJ IDEA.
  User: shihkailiao
  Date: 2022/4/26
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增學生</title>
</head>
<body>
    <form action="/stu/addStudentServlet" method="get" autocomplete="off">
        學生姓名:<input type="text" name="username"><br>
        學生年齡:<input type="text" name="age"><br>
        學生成績:<input type="text" name="score"><br>
        <button type="submit">保存</button>
    </form>
</body>
</html>
