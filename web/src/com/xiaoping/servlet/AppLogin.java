package com.xiaoping.servlet;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.xiaoping.beans.Connect;
import com.xiaoping.beans.UserBean;
import net.sf.json.JSONArray;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AppLogin",urlPatterns = "/applogin")
public class AppLogin extends HttpServlet {
    UserBean userBean=new UserBean();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");     //防止发送数据乱码
        this.doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");     //防止发送数据乱码
        System.out.println("connected....");
        try {
            login(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
       Connect login = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
       String name = req.getParameter("user");
       String password = req.getParameter("paw");
        ResultSet rs = login.executQuery("select * from user where name='" + name + "' and password='" + password + "'");
        if (rs.next()) {
            userBean.setName(rs.getString("name"));
            userBean.setPassword(rs.getString("password"));
            userBean.setIds(rs.getInt("ID"));
            PrintWriter out = resp.getWriter();
            AppData appData=new AppData();
            List<Appidata> appidata=appData.queryAppidata(userBean.getIds());
            JSONArray json = JSONArray.fromObject(appidata);
            out.println(json);
            out.flush();
            out.close();
        } else {
            PrintWriter out = resp.getWriter();
            out.write("error");    //登录失败
            out.flush();
            out.close();
        }
        login.closeAll();
    }
    }

