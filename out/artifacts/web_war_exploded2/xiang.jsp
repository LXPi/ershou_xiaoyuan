<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.lang.reflect.Field" %>
<%@ page import="java.util.List" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="net.sf.json.JSON" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/14
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>商品详情</title>
    <link rel="shortcut icon"type="image/x-icon" href="images/biao.ico"media="screen" />
    <link rel="stylesheet" href="css/stylenew.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/backstage.css">
    <link rel="stylesheet" type="text/css" href="css/bootstarp.min.css">
    <style>
        #box {
            width:450px;
            height:auto;
            border:1px solid #ccc;
            padding-top:300px;

            overflow:hidden;
            background:url(images/sliders/slide-1.jpg) no-repeat;
        }

        #box ul {
            overflow: hidden;
            border-top: 1px solid #ccc;
        }

        #box li {
            float: left;
        }
    </style>
</head>
<body>


<div class="wrap">

    <!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->

    <header class="wow fadeInRight">
        <img src="images/wanglogo.png" class="img-circle logo" alt="logo"  width="100%" height="100%" style="width: 125px; height: 125px; position: absolute; top: 0px"/>
        <div class="desc">校园二手交易系统</div>
    </header>

    <hr>

    <div class="top-panel clearfix">
        <div style="float: left; width: 500px; height: 500px;padding-left: 10px; " id="shown">
            <!--  <div style="padding-top: 25px" >
                <img id="pic" src="images/sliders/slide-1.jpg" alt=""
                    style="width: 450px; height: 350px" />
            </div> -->
            <div > <!--id="box"-->
                <ul>
                   <li><img id="li00"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base641")%>" alt=""
                                                     style="width: 400px; height: 400px" /></li>
                </ul>
                <ul>
                    <li style="display: inline-block; "><img id="li01"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base641")%>" alt=""
                             style="width: 75px; height: 75px" /></li>
                    <li style="display: inline-block; "><img id="li02"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base642")%>" alt=""
                             style="width: 75px; height: 75px" /></li>
                    <li style="display: inline-block; "><img id="li03"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base643")%>" alt=""
                             style="width: 75px; height: 75px" /></li>
                    <li style="display: inline-block; "><img id="li04"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base644")%>" alt=""
                             style="width: 75px; height: 75px" /></li>
                    <li style="display: inline-block; "><img id="li05"  height="100%" width="100%" src="data:image/jpeg;base64,<%=request.getParameter("base645")%>" alt=""
                             style="width: 75px; height: 75px" /></li>
                </ul>
            </div>
        </div>
        <div style="float:right">
            <table ><!--style="width: 440px"-->

                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><font size="4px">
                    </font></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                   <h3 class="title-list-item" > <%=URLDecoder.decode(request.getParameter("describe"),"utf-8")%></h3>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><div style="width: 440px; height: 30px; ">
                       <h5 class="title-list-item">价格：</h5> </div><span style="display: block;margin-bottom: 10px;font-size: 24px; color: #fe5214;">$<%=request.getParameter("price")%></span> </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><h5 class="title-list-item">数量：</h5><input id="loan_amount" type="text"  oninput = " value=value.replace(/[^\d]/g,'')" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><h5 class="title-list-item">备注： </h5><input type="text"></td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="showtishi"><span id="showtishi1"></span></td>
                </tr>
                <tr>
                    <td><input type="button" id="shop" style="width: 100px; height: 50px; color: #ff0000;" value="立即购买">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  id="gouwuche" type="button" style="width: 100px; height: 50px; background-color: #fe5214; color: #fff"
                   value="加入购物车"> &nbsp;&nbsp;&nbsp;
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>服务承诺 &nbsp;&nbsp;&nbsp; 正品保证 &nbsp;&nbsp;&nbsp;极速退款</td>
                </tr>
            </table>
        </div>

    </div>
    <div style="width: 1000px; margin: 0; ">
        分享&nbsp;&nbsp;&nbsp;收藏商品
        <p>
        <p>
        <p>
    </div>
</div>

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script>
        window.onload = function() {
            var img = document.createElement("img");
            img.src="data:image/jpeg;base64,<%=request.getParameter("base641")%>";
            img.id="showimg";
            $("#shown")
    }
    console.log(<%=request.getParameter("address")%>);
  //  console.log(<%=request.getParameter("date")%>);
    //console.log(<%=request.getParameter("describe")%>
  //  console.log( <%=URLDecoder.decode(request.getParameter("describe"),"utf-8")%>)  //解码
  //  console.log(<%=request.getParameter("ids")%>);
//    console.log(<%=request.getParameter("name")%>);
   // console.log(<%=request.getParameter("price")%>);
 //  console.log(<%=request.getParameter("producedname")%>);
        $("#li01").click(function () {
            $("#li00").attr('src',"data:image/jpeg;base64,<%=request.getParameter("base641")%>");
           })
        $("#li02").click(function () {
            $("#li00").attr('src',"data:image/jpeg;base64,<%=request.getParameter("base642")%>");
        })
        $("#li03").click(function () {
            $("#li00").attr('src',"data:image/jpeg;base64,<%=request.getParameter("base643")%>");
        })
        $("#li04").click(function () {
            $("#li00").attr('src',"data:image/jpeg;base64,<%=request.getParameter("base644")%>");

        })
        $("#li05").click(function () {
            $("#li00").attr('src',"data:image/jpeg;base64,<%=request.getParameter("base645")%>");
        })
        $("#gouwuche").click(function () {
            alert("加入购物车成功！");
        })
    $("#shop").click(function () {
        if($("#loan_amount").val()==null || $("#loan_amount").val()<1){
            $("#h55").remove();
            var div ="<h5 id='h55'><font color='red'>数量不正确，请重新输入！</font></h5>";
            $("#showtishi").append(div);
            $("#showtishi").trigger("create");
        }else {
            switch (<%=request.getParameter("address")%>) {
                case 0: {var bb="宜宾校区";break;}
                case 1: {var bb="营盘校区 ";break;}
                case 2: {var bb="汇东校区";break;}
                default:{var bb="宜宾校区";break;}
            }
            var div ="<h5 id='h55'><font color='red'>地址在"+bb+"去当面交易吧!</font></h5>";
            $("#h55").remove();
            $("#showtishi").append(div);
            $("#showtishi").trigger("create");
        }
        })
</script>
</body>
</html>