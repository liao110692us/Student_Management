<%--
  Created by IntelliJ IDEA.
  User: shihkailiao
  Date: 2022/4/26
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>學生管理系統</title>
  </head>
  <body>
    <%  Object username = session.getAttribute("username");
            if (username == null) {
    %>
          <a href="/stu/login.jsp">請登入</a>
  <%  } else {  %>
          <a href="/stu/addStudent.jsp">新增學生</a>
          <a href="/stu/listStudentServlet">查詢學生</a>
  <% } %>
  </body>
</html>
