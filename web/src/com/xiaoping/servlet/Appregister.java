package com.xiaoping.servlet;
import com.xiaoping.beans.Connect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Appregister",urlPatterns = "/appregister")
public class Appregister extends HttpServlet {
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
            register(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    private void register(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
        resp.setContentType("text/html;charset=utf-8");
        int id=0;
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        String name = req.getParameter("user");
        String password = req.getParameter("paw");
        ResultSet b=register.executQuery("select name from user where name="+name);
        if(b!=null){
            PrintWriter out=resp.getWriter();
            out.write("error");
            out.flush();
            out.close();
        }else {
        ResultSet a=register.executQuery("select * from user order by id DESC limit 1");  //查询最后一条数据库
        if(a.next()){
            //最后一天数据ID,取值时必须使用next方法
            id=a.getInt("ID");
        }
            a.close();
          Object[] object={name,password,id+1};
        int rs = register.executUpdate("insert into user values(?,?,?)",object);
        if (rs>0) {
            try {
                PrintWriter out=resp.getWriter();
                out.write("successful");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        register.closeAll();
    }}
}

