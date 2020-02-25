package com.xiaoping.servlet;
import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.xiaoping.beans.*;
import net.sf.json.JSONArray;
import org.apache.commons.codec.binary.Base64;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import java.util.*;
import java.util.Date;
/**
 * Servlet:当页面有对应的请求路径发起了请求，就会进入对应的Servlet
 * 当浏览器的路径为http：//localhost:8081/user
 */
@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    UserBean userBean=new UserBean();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        // String a=req.getParameter("name");
        //  System.out.print(a);
        // resp.sendRedirect("/index.jsp");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String op = req.getParameter("op");
        //登录
        if (op.equals("login")) {
            // resp.setContentType("text/html;charset=utf-8");
            this.login(req, resp);
        }
        //ajax：发布留言
        if (op.equals("liuYan")) {
            //resp.setContentType("application/json;charset=utf-8");
            Liuyan(req, resp);
        }
        //获取留言
        if (op.equals("getLiuYan")) {
            List<LiuyanBean> liuyanBeans = null;
            try {
                liuyanBeans = this.selectLiuYan();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println(liuyanBeans.get(0).getM_dsc());
            String str = JSON.toJSONString(liuyanBeans);
            PrintWriter out = resp.getWriter();
            out.write(str);
            out.flush();
            out.close();
        }
        if(op.equals("query")){
           resp.setContentType("text/html;charset=utf-8");     //防止发送数据乱码
           // resp.reset();
            String manufacturer=req.getParameter("manufacturer");
            String minprice=req.getParameter("minprice");
            String maxprice=req.getParameter("maxprice");
            String trans=req.getParameter("trans");
            String mileage=req.getParameter("mileage");
            String bodytype=req.getParameter("bodytype");
            Object[] object={manufacturer,minprice,maxprice,trans,mileage,bodytype};
          //  req.getSession().setAttribute("query",object);
            //PrintWriter out = resp.getWriter();
           // String s="<html><script>alert('123')</script></html>";
           // out.write(s);
           // out.flush();
           // out.close();

          PrintWriter out = resp.getWriter();
            String json = new Gson().toJson(object);
            out.write(json);
           out.flush();
            out.close();
          // req.setAttribute("list", object);
               // req.getRequestDispatcher("/query.jsp").forward(req, resp);
           // resp.sendRedirect("query.jsp");
        }
        if (op.equals("queryshangping")) {
            String 区域 = req.getParameter("manufacturer");   //0为宜宾校区 1位营盘校区  2位汇东
            String 最低价 = req.getParameter("minprice");   //最低价
            String 最高价 = req.getParameter("maxprice");   //最高价
            String 包 = req.getParameter("trans");       //0位包送 1为不包送
            String 种类 = req.getParameter("mileage");
            String 其他 = req.getParameter("bodytype");    // 0位二手书籍 1为运动器材 2为音乐器材 3为数码产品 4为杂货
            String miao=req.getParameter("miao");
            String ids=req.getParameter("ids");
            String show=req.getParameter("show");
            List<Queryshangping> queryshangpings = null;
            //  DbUtil 商品=new DbUtil("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8","root","Xiaoping123!");
            //   ResultSet 查询结果=商品.executQuery("select * from produced where producedname='"+商品名+"'");
            try {
                String a="";
                //queryshangpings = this.selectshangpings();
                if(包!=null) {
                     if(包.equals("0")){
                         a = "包";}else {
                        a = "不包";}

                }

                if(miao!=null){
                    Selectshangpings selectshangpings = new Selectshangpings(miao);
                    queryshangpings = selectshangpings.getQueryshangpings();
                }else {if(ids!=null){
                    Selectshangpings selectshangpings = new Selectshangpings(ids);
                    queryshangpings = selectshangpings.getQueryshangpings();
                }else {
                    if(show.equals("shangping")){
                        Selectshangpings selectshangpings = new Selectshangpings(show);
                        queryshangpings = selectshangpings.getQueryshangpings();
                    }else{
                        Selectshangpings selectshangpings=new Selectshangpings(区域,最低价,最高价,a,种类,其他);
                        queryshangpings= selectshangpings.getQueryshangpings();
                } }}

            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println(queryshangpings.get(0).getDescribe());
          //  File file = new File("e:/1.jpg");
            //String base64str=new String();//log.getRequest_imgdata()
            //BASE64Decoder decoder=new BASE64Decoder();
            //byte[] imgbyte=decoder.decodeBuffer(base64str);//解码Base64图片数据
            //resp.setContentType("image/jpeg");
            //ServletOutputStream outputStream = resp.getOutputStream();
            //outputStream.write(imgbyte);
            //outputStream.flush();
           // FileInputStream fis = new FileInputStream(String.valueOf(queryshangpings.get(0).getInputStream1().));
           // byte[] buffer = new byte[queryshangpings.get(0).getInputStream1().available()];
           // queryshangpings.get(0).getInputStream1().read(buffer);
            //OutputStream output = resp.getOutputStream();
           // fis.read(buffer);
           // OutputStream output =resp.getOutputStream();
            //PrintWriter out = resp.getWriter();
            //out.write(buffer);
            //out.flush();
            //out.close();
           // byte[] buffer = new byte[queryshangpings.get(0).getInputStream1().available()];
           // queryshangpings.get(0).getInputStream1().read(buffer);
           // data = Base64.encodeBase64(data);
           // String base = Base64.encode(buffer);
           // List<String> list = new ArrayList<>();
           // base = base.replaceAll("\n", "").replaceAll("\r", "");//删除 \r\n
          //  list.add(base);
           //OutputStream output = resp.getOutputStream();
          //  String json = new Gson().toJson(list);
           // PrintWriter out = resp.getWriter();
           // output.write(Integer.parseInt(json));
           // output.flush();
            //output.close();
            //writeImg(resp.getOutputStream()); //图片流
            req.setCharacterEncoding("utf-8");
            InputStream fis = null;
            List<QueryBase64String> queryBase64Strings=new ArrayList<QueryBase64String>();;
            try {
                fis = queryshangpings.get(0).getInputStream1().getBinaryStream();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
             //   int a=queryshangpings.get(0).getInputStream3().getBinaryStream().available();
                for(int i=0;i<queryshangpings.size();i++){
                    QueryBase64String queryBase64String=new QueryBase64String();
                    byte[] buffer1=null;
                    byte[] buffer2=null;
                    byte[] buffer3=null;
                    byte[] buffer4=null;
                    byte[] buffer5=null;
                if(queryshangpings.get(i).getInputStream1()!=null){
                buffer1 = new byte[queryshangpings.get(i).getInputStream1().getBinaryStream().available()];
                queryshangpings.get(i).getInputStream1().getBinaryStream().read(buffer1);
                queryBase64String.setBase641(Base64.encodeBase64String(buffer1));
                queryshangpings.get(i).getInputStream1().getBinaryStream().close();
                }
                if(queryshangpings.get(i).getInputStream2()!=null){
                buffer2 = new byte[queryshangpings.get(i).getInputStream2().getBinaryStream().available()];
                queryshangpings.get(i).getInputStream2().getBinaryStream().read(buffer2);
                queryBase64String.setBase642(Base64.encodeBase64String(buffer2));
                queryshangpings.get(i).getInputStream2().getBinaryStream().close();
                }
                if(queryshangpings.get(i).getInputStream3()!=null){
                 buffer3 = new byte[queryshangpings.get(i).getInputStream3().getBinaryStream().available()];
                queryshangpings.get(i).getInputStream3().getBinaryStream().read(buffer3);
                queryBase64String.setBase643(Base64.encodeBase64String(buffer3));
                queryshangpings.get(i).getInputStream3().getBinaryStream().close();
                }
                if(queryshangpings.get(i).getInputStream4()!=null){
                 buffer4 = new byte[queryshangpings.get(i).getInputStream4().getBinaryStream().available()];
                queryshangpings.get(i).getInputStream4().getBinaryStream().read(buffer4);
                queryBase64String.setBase644(Base64.encodeBase64String(buffer4));
                queryshangpings.get(i).getInputStream4().getBinaryStream().close();
                }
                if(queryshangpings.get(i).getInputStream5()!=null){
                 buffer5 = new byte[queryshangpings.get(i).getInputStream5().getBinaryStream().available()];
                queryshangpings.get(i).getInputStream5().getBinaryStream().read(buffer5);
                queryBase64String.setBase645(Base64.encodeBase64String(buffer5));
                queryshangpings.get(i).getInputStream5().getBinaryStream().close();
                }
                    queryBase64String.setName(queryshangpings.get(i).getName());
                    queryBase64String.setProducedname(queryshangpings.get(i).getProducedname());
                    queryBase64String.setAddress(queryshangpings.get(i).getAddress());
                    queryBase64String.setDate(queryshangpings.get(i).getDate());  //从数据库中读出来为sql.Date使用getTime()方法赋值给util.Date对象
                    queryBase64String.setDescribe(queryshangpings.get(i).getDescribe());
                    queryBase64String.setPrice(queryshangpings.get(i).getPrice());
                    queryBase64String.setids(queryshangpings.get(i).getIds());
                    queryBase64String.setLei(queryshangpings.get(i).getZhonglei());
                queryBase64Strings.add(queryBase64String);

                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            //OutputStream output = resp.getOutputStream();
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            String base = Base64.encodeBase64String(buffer);
           // List<String> list = new ArrayList<>();
            //list.add(base);
            //String json = JSON.toJSONString(queryBase64Strings);
            JSONArray json = JSONArray.fromObject(queryBase64Strings);
            PrintWriter output = resp.getWriter();
            // output.write(json);//write(json);
            output.println(json);
            output.flush();
            output.close();
            Connect a = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            a.closeAll();
        }
        if (op.equals("image")) {
            Uploadimage uploadimage=new Uploadimage(req,userBean);
            //uploadimage.upmysql();
            String path=uploadimage.getPath();
            String b=req.getParameter("a");
            System.out.print(b);
              /**  String path = req.getRealPath("."); //取得目录在服务器端的实际位置
                //out.println(path+"");
                File result =new File("result.txt");
                FileWriter fw = new FileWriter(path + result); //建立FileWrite对象,并设定由fw对象变量引用
                String a= readReqStr(req);
                //将字串写入文件
               fw.write(a);
                fw.write("==================");
                // fw.write("希望大家能够深入了解jsp技术！");
                fw.close(); //关闭文件
                FileReader fr = new FileReader(path + result); //建立FileReader对象,并设定由fr对象变量引用
                BufferedReader br = new BufferedReader(fr); //建立BufferedReader对象,并设定由br对象变量引
                String Line = br.readLine(); //读取一行数据
                PrintWriter out=null;
                out.println(Line + ""); //输出读取得的数据
                br.close(); //关闭BufferedReader对象
                fr.close(); //关闭文件    //查看req数据
               */   //
        }
        if(op.equals("publish")){ //上传form
            resp.setContentType("text/html;charset=utf-8");     //防止发送数据乱码
            Uploadimage uploadimage=new Uploadimage(req,userBean);   //直接解析并上传到mysql
            PrintWriter out = resp.getWriter();
            out.write("<script type='text/javascript'>alert('发布商品成功！'); window.location.href='index.jsp'</script>");   //上传后跳转页面
            out.flush();
            out.close();
            }
            if(op.equals("register")){
                register(req,resp);
            }
            if(op.equals("admin")){
                try {
                    List<UserBean> userServlets= admin(req,resp);
                    PrintWriter out=resp.getWriter();
                    JSONArray json = JSONArray.fromObject(userServlets);
                    out.println(json);
                    out.flush();
                    out.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
            if(op.equals("drop")){
            drop(req,resp);
            }
            if(op.equals("dropshangping")){
            dropshangping(req,resp);


            }
        }









        private List<Queryshangping> selectshangpings()throws SQLException {
            List<Queryshangping> Queryshangpings = new ArrayList<Queryshangping>();
            Connect 商品 = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            ResultSet 查询结果 = 商品.executQuery("select * from produced where name like '1234'");
            while (查询结果.next()) {
                Queryshangping queryshangpings = new Queryshangping();
                try {
                    queryshangpings.setName(查询结果.getString(2));
                    queryshangpings.setProducedname(查询结果.getString(3));
                    queryshangpings.setAddress(查询结果.getInt(4));
                    queryshangpings.setDate(new java.util.Date(查询结果.getDate(5).getTime()));
                    queryshangpings.setPrice(查询结果.getInt(6));
                    queryshangpings.setDescribe(查询结果.getString(6));
                    queryshangpings.setInputStream1(查询结果.getBlob(8));
                    queryshangpings.setInputStream2(查询结果.getBlob(9));
                    queryshangpings.setInputStream3(查询结果.getBlob(10));
                    queryshangpings.setInputStream4(查询结果.getBlob(11));
                    queryshangpings.setInputStream5(查询结果.getBlob(12));
                    Queryshangpings.add(queryshangpings);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                //商品.closeAll();

            }
            return Queryshangpings;
        }
        private void Liuyan(HttpServletRequest req, HttpServletResponse resp){
            resp.setContentType("text/html;charset=utf-8");
            PrintWriter out = null;
            try {
                out = resp.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
            }
            String lianxi = req.getParameter("lianxi");
            String neirong = req.getParameter("neirong");
            String uri = "jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8";
            String username = "root";
            String psw = "Xiaoping123!";
            Connection con = null;
            try {
                con = DriverManager.getConnection(uri, username, psw);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            Statement sql = null;
            try {
                PreparedStatement preparedStatement = con.prepareStatement("insert into dsc values(?,?,?,?)");
                preparedStatement.setObject(1, lianxi);
                preparedStatement.setObject(2, new Date());
                preparedStatement.setObject(3, neirong);
                preparedStatement.setObject(4, "456");
                int count = preparedStatement.executeUpdate();
                //  startsql("insert into dsc values("+lianxi+","+new Date()+","+neirong+","+"456"+")","Update");
                if (count > 0) {
                    System.out.println("添加成功");
                } else {
                    System.out.println("添加失败");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            out.print("发送成功！");
            out.flush();
            out.close();

        }
        private List<LiuyanBean> selectLiuYan() throws SQLException{
            List<LiuyanBean> liuyanBeans = new ArrayList<LiuyanBean>();
      /*  try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String uri="jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8";
        String username="root";
        String psw="Xiaoping123!";
        Connection con= null;
        ResultSet rs=null;
        PreparedStatement pst=null;
        try {
            con = DriverManager.getConnection(uri,username,psw);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql= "select * from dsc";
        try {
            pst = con.prepareStatement(sql);
            rs= pst.executeQuery();*/
            // ResultSet a= startsql("select * from dsc","Query");
            Connect query = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            ResultSet rs = query.executQuery("select * from dsc");
            while (rs.next()) {
                LiuyanBean liuyanBean = new LiuyanBean();
                try {
                    liuyanBean.setName(rs.getString(1));
                    liuyanBean.setM_date(rs.getDate(2));
                    liuyanBean.setM_contact(rs.getString(3));
                    liuyanBean.setM_dsc(rs.getString(4));
                    liuyanBeans.add(liuyanBean);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
            /*
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                pst.close();
                rs.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }*/


            return liuyanBeans;
        }
        private void login(HttpServletRequest req, HttpServletResponse resp)throws IOException {
            resp.setContentType("text/html;charset=utf-8");
            Connect login = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            String name = req.getParameter("username");
            String password = req.getParameter("password");
            try {
                ResultSet rs = login.executQuery("select * from user where name='" + name + "' and password='" + password + "'");
                if (rs.next()) {
                    System.out.print("登录成功！");
                    //UserBean userBean=new UserBean();
                    userBean.setName(rs.getString("name"));
                    userBean.setPassword(rs.getString("password"));
                    req.getSession().setAttribute("user" ,userBean);
                    //外部跳转，页面发起一次重定向，request中的值将会丢失，页面只保留session,application中的值
                    //resp.sendRedirect("/index.jsp");
                    PrintWriter out = resp.getWriter();
                    String names=userBean.getName();
                    out.write(names);
                    out.flush();
                    out.close();
                } else {
                    System.out.print("登录失败！");
                    resp.sendRedirect("/index.jsp");
                }  login.closeAll();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        private String readReqStr(HttpServletRequest request){
        BufferedReader reader = null;
        StringBuilder sb = new StringBuilder();
        try{
            reader = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
            String line = null;
            while ((line = reader.readLine()) != null){
                sb.append(line);
            }
        } catch (IOException e){
            e.printStackTrace();
        } finally {
            try{
                if (null != reader){ reader.close();}
            } catch (IOException e){
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
        public static void writeImg(OutputStream os) {
        try {
            //List<FileItem> list =null;
           // List<InputStream>=
            //List<FileItem>
            //String targetPath = "D:/image/1.png";
            Connect 商品 = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
            ResultSet 查询结果 = 商品.executQuery("select * from produced where name like '1234'");
            byte[] b = new byte[1024];
            if (查询结果.next()) {
                //InputStream in = 查询结果.getBinaryStream("photo");
                Blob   blob = 查询结果.getBlob(8);
              //  Blob blob1 = 查询结果.getBlob(9);
                InputStream  is = blob.getBinaryStream();
                //list.add(is);
                //InputStream is2 = blob1.getBinaryStream();
                //readBin2Image(is, targetPath);
                int i = 0;
                while ((i = is.read(b)) != -1) {
                    os.write(b, 0, i);
                }
                is.close();
               // is2.close();
            }
            os.close();

       商品.closeAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // 读取表中图片获取输出流
    public static void readBin2Image(InputStream in, String targetPath) {
        File file = new File(targetPath);
        String path = targetPath.substring(0, targetPath.lastIndexOf("/"));
        if (!file.exists()) {
            new File(path).mkdir();
        }
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            int len = 0;
            byte[] buf = new byte[1024];
            while ((len = in.read(buf)) != -1) {
                fos.write(buf, 0, len);
            }
            fos.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (null != fos) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    private void register(HttpServletRequest req, HttpServletResponse resp){
        resp.setContentType("text/html;charset=utf-8");
        int id=0;
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        String name = req.getParameter("username1");
        String password = req.getParameter("password2");
        ResultSet a=register.executQuery("select * from user order by id DESC limit 1");  //查询最后一条数据库
        try {
            if(a.next()){
                id=a.getInt(3); } //最后一天数据ID,取值时必须使用next方法
            a.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Object[] object={name,password,id+1};
        int rs = register.executUpdate("insert into user values(?,?,?)",object);
        if (rs>0) {
            System.out.print("注册成功！");
            try {
                PrintWriter out=resp.getWriter();
                String aa="123";
                out.write(aa);
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.print("注册失败！");
            try {
                PrintWriter out=resp.getWriter();
                out.write("<script>alert('注册失败!有相同的用户名存在!')</script>");
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        register.closeAll();
    }
    private List<UserBean> admin(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        resp.setContentType("text/html;charset=utf-8");
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        ResultSet rs = register.executQuery("select * from user ");
        List<UserBean> userServlets=new ArrayList<UserBean>();
        while (rs.next()){
            UserBean userBean1=new UserBean();
            userBean1.setName(rs.getString(1));
            userBean1.setPassword(rs.getString(2));
            userBean1.setIds(rs.getInt(3));
            userServlets.add(userBean1);
        }
        return userServlets;
    }
    private void drop(HttpServletRequest req, HttpServletResponse resp){
        resp.setContentType("text/html;charset=utf-8");
        String ids=req.getParameter("ids");
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        Object[] objects={};
        int rs = register.executUpdate("DELETE FROM user WHERE ID='"+ids+"' ",objects);
        register.closeAll();
    }
    private void dropshangping(HttpServletRequest req, HttpServletResponse resp){
        resp.setContentType("text/html;charset=utf-8");
        String ids=req.getParameter("ids");
        Connect register = new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        Object[] objects={};
        int rs = register.executUpdate("DELETE FROM produced WHERE ID='"+ids+"' ",objects);
        register.closeAll();
    }
}

