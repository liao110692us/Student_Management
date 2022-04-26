package com.servlet;

import com.bean.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet("/addStudentServlet")
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String age = req.getParameter("age");
        String score = req.getParameter("score");

        Student stu = new Student();
        stu.setUsername(username);
        stu.setAge(Integer.parseInt(age));
        stu.setScore(Integer.parseInt(score));

        BufferedWriter bw = new BufferedWriter(new FileWriter("/Users/shihkailiao/desktop/程式/後端/SM/stu.txt",true));
        bw.write(stu.getUsername() + "," + stu.getAge() + "," + stu.getScore());
        bw.newLine();
        bw.close();

        //resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write("新增成功,三秒好自動跳轉到首頁....");
        resp.setHeader("Refresh","3;URL=/stu/index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
