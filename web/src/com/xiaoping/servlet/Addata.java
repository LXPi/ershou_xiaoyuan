package com.xiaoping.servlet;

import com.alibaba.fastjson.JSONObject;
import com.xiaoping.beans.Connect;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Addata",urlPatterns = "/addata")
public class Addata extends HttpServlet {
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
        addata(req,resp);
    }
    public void addata(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String param = null;
            BufferedReader streamReader = new BufferedReader(new InputStreamReader(req.getInputStream(), "UTF-8"));
            StringBuilder responseStrBuilder = new StringBuilder();
            String inputStr;
            while ((inputStr = streamReader.readLine()) != null) {
                responseStrBuilder.append(inputStr);
            }

            JSONObject jsonObject = JSONObject.parseObject(responseStrBuilder.toString());
         //   param = jsonObject.toJSONString();
            if (jsonObject == null) {
                PrintWriter out = resp.getWriter();
                out.write("error");    //登录失败
                out.flush();
                out.close();
            } else  {
            //System.out.println(param);
            String name = req.getParameter("user");
            String password = req.getParameter("paw");
            Connect addata = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            Appidata appidata = new Appidata();
            ResultSet a = addata.executQuery("select ID from user where name=" + name + " and password= " + password);
            int ids = 0;

                try {
                    if (a.next()) {
                        ids = a.getInt("ID");
                        Object[] object = {ids, jsonObject.getString("date"), jsonObject.getString("dname"), jsonObject.getString("dvxname"), jsonObject.getFloat("price"), jsonObject.getFloat("yprice"), jsonObject.getString("lei"), jsonObject.getInteger("wan")};
                        //appidata.setIds(ids);
                        // appidata.setDate(jsonObject.getString("date"));
                        // appidata.setDname(jsonObject.getString("dname"));
                        // appidata.setDvxname(jsonObject.getString("dvxname"));
                        //  appidata.setPrice(jsonObject.getFloat("price"));
                        //  appidata.setYprice(jsonObject.getFloat("yprice"));
                        //  appidata.setLei(jsonObject.getString("lei"));
                        //   appidata.setWan(jsonObject.getInteger("wan"));
                        int rs = addata.executUpdate("insert into appidata values(?,?,?,?,?,?,?,?)", object);
                        if (rs > 0) {
                            PrintWriter out = resp.getWriter();
                            out.write("successful");    //登录失败
                            out.flush();
                            out.close();
                        }
                    } else {
                        PrintWriter out = resp.getWriter();
                        out.write("error");    //登录失败
                        out.flush();
                        out.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                addata.closeAll();
            }



    }}


