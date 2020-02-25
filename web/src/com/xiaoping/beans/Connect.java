package com.xiaoping.beans;



import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;

/**
 * �������ݿ⹤����
 */
public class Connect {
     Connection conn = null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    /**
     * ��������
     */
    /*public static Connection */
    public Connect(String url, String username, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
      //  return conn;
    }

    /**
     * �ر����Ӷ���
     */
    public  void closeAll() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * ��ɾ�Ĳ���
     */
    public int executUpdate(String sql, Object[] param) {
        int result = 0;
        //PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            if (param != null) {
                for (int i = 0; i < param.length; i++) {
                    if (param[i] instanceof FileInputStream) {
                        pstmt.setBinaryStream(i + 1, (FileInputStream) param[i]);
                    } else {
                        pstmt.setObject(i + 1, param[i]);
                    }
                }
            }}
            catch (SQLException e1) {
            e1.printStackTrace();
        }
        try {
            result = pstmt.executeUpdate();
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
       finally {
            closeAll();
        }
        return result;
    }
    /**
     * ��ѯ
     */
    public  ResultSet executQuery(String sql) {
        PreparedStatement pstmt = null;
        ResultSet result = null;
        try {
            pstmt = conn.prepareStatement(sql);
           /* if (param != null) {
                for (int i = 0; i < param.length; i++) {
                    pstmt.setString(i + 1, param[i]);
                }
            }*/
            result = pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public void addsql(String  sql){
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll();
        }

    }
}