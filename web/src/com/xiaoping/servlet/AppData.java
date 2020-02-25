package com.xiaoping.servlet;

import com.xiaoping.beans.Connect;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AppData {
    public AppData(){

    }
    public List<Appidata> queryAppidata(int ids){
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        ResultSet a=register.executQuery("select * from appidata where ids="+ids);
        List<Appidata> appData=new ArrayList<Appidata>();
        try {
            while(a.next()){
         Appidata appidata=new Appidata();
                appidata.setIds(a.getInt(1));
                appidata.setDate(a.getString(2));
                appidata.setDname(a.getString(3));
                appidata.setDvxname(a.getString(4));
                appidata.setPrice(a.getFloat(5));
                appidata.setYprice(a.getFloat(6));
                appidata.setLei(a.getString(7));
                appidata.setWan(a.getInt(8));
                appData.add(appidata);
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            a.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return appData;
    }
    public int addAppidata(Appidata appidata){
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
       Object[] object={appidata.getIds(),appidata.getDate(),appidata.getDname(),appidata.getDvxname(),appidata.getPrice(),appidata.getYprice(),appidata.getLei(),appidata.getWan()};
        int a=register.executUpdate("insert into user values(?,?,?)",object);
        register.closeAll();
        return a;
    }

}
