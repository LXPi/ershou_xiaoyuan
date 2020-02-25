package com.xiaoping.beans;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Uploadimage {
    public String path = null;
    //List<Publish> publish = new ArrayList<Publish>();     //存放普通input元素
    public int control=0;
    List<Object> list1=null;         //存放image元素
    int id=0;
    public Uploadimage(HttpServletRequest req,UserBean userBean) throws IOException {

        //  MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        // List<MultipartFile> fileList = multipartRequest.getFiles("file");
        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);   // 核心类
       // servletFileUpload.setHeaderEncoding("UTF-8");
        List<FileItem> list = null;
        Connect connect=new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        ResultSet a=connect.executQuery("select * from produced order by id DESC limit 1");  //查询最后一条数据库
        try {
            if(a.next()){
            id=a.getInt(1); } //最后一天数据ID,取值时必须使用next方法
            a.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            list = servletFileUpload.parseRequest(req);   //3 解析request  ,List存放 FileItem （表单元素的封装对象，一个<input>对应一个对象）
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        Publish publish1 = new Publish();
        Image image=new Image();
        // boolean isMultipart = ServletFileUpload.isMultipartContent(req);
        for (FileItem fileItem : list) {  //4 遍历集合获得数据
            if (fileItem.isFormField()) {   // 5 是否为表单字段（普通表单元素）
                //5.1.表单字段名称
                String fieldName = fileItem.getFieldName();
                System.out.println(fieldName);
                //5.2.表单字段值
                String fieldValue = fileItem.getString("UTF-8");    //中文会出现乱码,加上编码，让字符转为UTF-8
                System.out.println(fieldValue);
                if (fieldName.equals("shangpingname")) {
                    publish1.setShangpingname(fieldValue);
                }
                if (fieldName.equals("price")) {
                    publish1.setPrice(fieldValue);
                }
                if (fieldName.equals("describe")) {
                    publish1.setDescribe(fieldValue);
                }
                if (fieldName.equals("rd")) {
                    publish1.setAddress(fieldValue);
                }
            } else {   //6 上传字段（上传表单元素）//6.1.表单字段名称  fileItem.getFieldName();
                control++;
                String fileName = fileItem.getName();                             //6.2.上传文件名
                // * 兼容浏览器， IE ： C:\Users\xxx\Desktop\abc.txt  ; 其他浏览器 ： abc.txt
                fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
                System.out.println(fileName);    //上传的文件名会中文乱码，
                //6.3.上传内容
                InputStream is = null;    //获得输入流，
                try {
                    is = fileItem.getInputStream();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                String parentDir = req.getServletContext().getRealPath("/WEB-INF/upload");
                path = parentDir;
                File file = new File(parentDir, fileName);
                if (!file.getParentFile().exists()) {  //父目录不存在
                    file.getParentFile().mkdirs();        //mkdirs():创建文件夹，如果上级目录没有的话，也一并创建出来。
                }
                FileOutputStream fileout = null;
                FileInputStream filein=null;
                try {
                    fileout = new FileOutputStream(file);
                     filein=new FileInputStream(file);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                }
                byte[] buf = new byte[1024];
                int len = -1;
                while ((len = is.read(buf)) != -1) {
                    try {
                        fileout.write(buf, 0, len);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                //int leng=filein.available();
                //关闭
                try {
                    if (fileout != null) {
                        fileout.close();
                    }
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                  /*  if(control==1)  {
                        Object[] object={id+1,"1","2","3",new Date(),"4","5",filein,filein,filein,filein,filein};
                        connect.executUpdate("insert into produced values(?,?,?,?,?,?,?,?,?,?,?,?)",object);
                    }*/
                 //filein.close();
                if(control==1)  {image.setInputStream1(filein); }
                if(control==2)  {image.setInputStream2(filein);}
                if(control==3)  {image.setInputStream3(filein);}
                if(control==4)  {image.setInputStream4(filein);}
                if(control==5)  {image.setInputStream5(filein);}
                }

               // publish.add(publish1);  //添加非图片input元素到publish
           //   this.len=len;
            }
       // Connect connect=new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
        int aa=0;
        if(publish1.getAddress().equals("汇东")){
            aa=2;
        }
        if(publish1.getAddress().equals("宜宾")){
            aa=0;
        }
        if(publish1.getAddress().equals("营盘")){
            aa=1;
        }
        Object[] object={id+1,userBean.getName(),publish1.getShangpingname(),aa,new Date(),publish1.getPrice(),publish1.getDescribe(),4,image.getInputStream1(),image.getInputStream2(),image.getInputStream3(),image.getInputStream4(),image.getInputStream5()};
        connect.executUpdate("insert into produced values(?,?,?,?,?,?,?,?,?,?,?,?,?)",object);
    }


     public void upmysql(){
      /*  for(int i=0;i<list1.size();i++){
           FileInputStream a= (FileInputStream) list1.get(i);

        }*/
         Connect connect=new Connect("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=utf-8", "root", "Xiaoping123!");
         Object[] object={id+1,"1","2","3",new Date(),"4","5",};
         connect.executUpdate("insert into produced values(?,?,?,?,?,?,?,?,?,?,?,?)",object); }




    public String getPath() {
        return path;
    }

    /*public List<Publish> getPublish() {
        return publish;
    }*/
   public List<Object> getimage(){
        return list1;
   }
   // public List<OutputStream> getImage(){return image; }
   // public int getLen(){ return len; }
}
