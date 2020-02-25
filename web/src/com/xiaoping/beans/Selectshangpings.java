package com.xiaoping.beans;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Selectshangpings {
    List<Queryshangping> Queryshangpings = new ArrayList<Queryshangping>();
    public Selectshangpings(String miao) throws SQLException {
        Connect shangping = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        ResultSet chaxun=null;
        if(isNumeric(miao)){
            chaxun=shangping.executQuery("select * from produced where ID='"+miao+"'");
        }else {
            if(miao.equals("shangping")){
                chaxun=shangping.executQuery("select * from produced ");
            }else {
                chaxun = shangping.executQuery("select * from produced where describes like '%" + miao + "%'"); //name like '1234',
            } }
        while (chaxun.next()) {
            Queryshangping queryshangpings = new Queryshangping();
            try {
                queryshangpings.setIds(chaxun.getInt(1));
                queryshangpings.setName(chaxun.getString(2));
                queryshangpings.setProducedname(chaxun.getString(3));
                queryshangpings.setAddress(chaxun.getInt(4));
                queryshangpings.setDate(new java.util.Date(chaxun.getDate(5).getTime()));
                queryshangpings.setPrice(chaxun.getInt(6));
                queryshangpings.setDescribe(chaxun.getString(7));
                queryshangpings.setZhonglei(chaxun.getInt(8));
                queryshangpings.setInputStream1(chaxun.getBlob(9));
                queryshangpings.setInputStream2(chaxun.getBlob(10));
                queryshangpings.setInputStream3(chaxun.getBlob(11));
                queryshangpings.setInputStream4(chaxun.getBlob(12));
                queryshangpings.setInputStream5(chaxun.getBlob(13));
                Queryshangpings.add(queryshangpings);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            //商品.closeAll();

        }

    }
    public Selectshangpings(String manufacturer,String minprice,String maxprice,String trans,String mileage, String bodytype) throws SQLException {
     /**
      *           manufacturer //0为宜宾校区 1位营盘校区  2位汇东
      *           minprice  //最低价
      *          maxprice //最高价
      *           trans   //0位包送 1为不包送
      *           mileage  //其他
      *            bodytype // 0位二手书籍 1为运动器材 2为音乐器材 3为数码产品 4为杂货
      * */

        Connect shangping = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        ResultSet chaxun = shangping.executQuery("select * from produced where address='"+manufacturer+"' or (price>="+minprice+" and price<="+maxprice+") and lei='"+bodytype+"' and describes like '%"+trans+"%'");//or describe like '%"+trans+"%'; //name like '1234',
        while (chaxun.next()) {
            Queryshangping queryshangpings = new Queryshangping();
            try {
                queryshangpings.setIds(chaxun.getInt(1));
                queryshangpings.setName(chaxun.getString(2));
                queryshangpings.setProducedname(chaxun.getString(3));
                queryshangpings.setAddress(chaxun.getInt(4));
                queryshangpings.setDate(new java.util.Date(chaxun.getDate(5).getTime()));
                queryshangpings.setPrice(chaxun.getInt(6));
                queryshangpings.setDescribe(chaxun.getString(7));
                queryshangpings.setZhonglei(chaxun.getInt(8));
                queryshangpings.setInputStream1(chaxun.getBlob(9));
                queryshangpings.setInputStream2(chaxun.getBlob(10));
                queryshangpings.setInputStream3(chaxun.getBlob(11));
                queryshangpings.setInputStream4(chaxun.getBlob(12));
                queryshangpings.setInputStream5(chaxun.getBlob(13));
                Queryshangpings.add(queryshangpings);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            //商品.closeAll();

        }

    }
    public List<Queryshangping> getQueryshangpings(){
        return   Queryshangpings;


    }
    public static boolean isNumeric(String str)
    {
   for (int i = 0; i < str.length(); i++) {
    System.out.println(str.charAt(i));
    if (!Character.isDigit(str.charAt(i)))
{
     return false;
    }
 }
    return true;
    }
}
