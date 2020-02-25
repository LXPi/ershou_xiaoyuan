package com.xiaoping.servlet;

import com.alibaba.fastjson.JSON;
import com.xiaoping.beans.LiuyanBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class HomeServlet {

    public static void main(String[] args) {
        List<LiuyanBean> liuyanBeans=new ArrayList<LiuyanBean>();
        LiuyanBean liuyanBean=new LiuyanBean();
        liuyanBean.setM_dsc("123");
        liuyanBean.setName("123");
        liuyanBean.setM_date(new Date());
        liuyanBeans.add(liuyanBean);
        String str= JSON.toJSONString(liuyanBeans);
    }
}
