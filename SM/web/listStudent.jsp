<%@ page import="java.util.ArrayList" %>
<%@ page import="com.bean.Student" %><%--
  Created by IntelliJ IDEA.
  User: shihkailiao
  Date: 2022/4/26
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查詢學生</title>
</head>
<body>
    <table width="600px" border="1px">
        <tr>
            <th>學生姓名</th>
            <th>學生年齡</th>
            <th>學生成績</th>
        </tr>
        <% ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");
            for(Student stu : students) {
        %>
        <tr align="center">
            <td><%=stu.getUsername()%></td>
            <td><%=stu.getAge()%></td>
            <td><%=stu.getScore()%></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
