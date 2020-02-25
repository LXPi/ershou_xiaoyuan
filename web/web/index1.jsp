<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>登陆lxpgg</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/body.css"/>
</head>
<!-- 这个作用主要是判断登录的时候输入信息起到提示作用 -->
<script language="javascript">
    function validateLogin() {
        var userName = document.getElementById(username).value;
        var password = document.getElementById(password).value;
        if ((userName == "") || (userName == "输入您的用户名")) {
            alert("请输入用户名!");
            return false;
        }
        if ((password == "") || (password == "输入您的密码")) {
            alert("请输入密码!");
            return false;
        }}
    function openwin() {
        window.open("register.html", "newwindow", "height=400, width=400, top=300,left=200,toolbar=no,menubar=no, scrollbars=no, resizable=no, location=no, status=no")
//写成一行 
//top=0 窗口距离屏幕上方的象素值； 
//left=0 窗口距离屏幕左侧的象素值；
    }
</script>
<body  onload="validateLogin()">
<div class="container">
  <section id="content">
    <form action="/user" method="post"> <!--CheckLogin.jsp登录判断界面-->
      <h1>会员登录</h1>
      <input name="op" value="login" style="display: none"/>
      <div>
        <input type="text" placeholder="邮箱" required="" id="username" name="username" onkeyup="value=value.replace(/[\W]/g,'')"
               onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
      </div>
      <div>
        <input type="password" placeholder="密码" required="" id="password" name="password"  onkeyup="value=value.replace(/[\W]/g,'')"
               onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
      </div>
      <div class="">
        <span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div>
      <div>
        <!-- <input type="submit" value="Log in" /> -->
        <input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
        <a href="#">忘记密码?</a>
        <!-- <a href="#">Register</a> -->
      </div>
    </form><!-- form -->
    <div class="button">
      <span class="help-block u-errormessage" id="span">&nbsp;</span>
      <a href="#" onclick="openwin()">注册</a>
    </div> <!-- button -->
  </section><!-- content -->
</div>
<!-- container -->


</body>
</html>
