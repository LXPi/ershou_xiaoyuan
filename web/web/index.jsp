<%@ page import="com.xiaoping.beans.UserBean" %><%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>

<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if IE 9]>					<html class="ie9 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
<head>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Open+Sans:400,600,700|Oswald|Electrolize' rel='stylesheet' type='text/css' />
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	
	<title>Car Dealer | Home</title>
	
	<meta name="description" content="" />
	<meta name="author" content="" />
	<link rel="shortcut icon"type="image/x-icon" href="images/biao.ico"media="screen" />
	<link rel="stylesheet" href="css/stylenew.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
	<link rel="stylesheet" type="text/css" href="css/zhuce.css"/>
	<link rel="stylesheet" href="css/skeleton.css" media="screen" />
	<link rel="stylesheet" href="sliders/flexslider/flexslider.css" media="screen" />
	<link rel="stylesheet" href="fancybox/jquery.fancybox.css" media="screen" />
    <link rel="stylesheet" href="css/a.css" media="screen" />
	<!-- HTML5 Shiv + detect touch events -->
	<script type="text/javascript" src="js/modernizr.custom.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
	.addimg{
		width: 250px;
		height: 200px;
		display: block;
		margin-left: 50px;
		margin-right: 50px;
		margin-top: 10px;
	}

</style>
</head>
<body class="menu-1 h-style-1 text-1">
<div style="display: none; position: fixed; top: 0px; right: 0px; left: 0px; z-index: 99 " id="headershow" >
<header class="wow_fadeInRight" style="position: fixed">
    <img src="images/wanglogo.png" class="img-circle_logo" alt="logo" style=" position: fixed; top: -10px; left: 30px; width: 125px; height: 125px" width="100%" height="100%" />
    <div class="desc" style="font-size: 22px; line-height: 34px; border-left: 1px solid #ccc; position: absolute; left: 200px; top: 50px; padding-left: 20px; font-weight: bold; color:#ff6800; display: inline-block">校园二手交易系统</div>
    <form action="/"  class="form-panel" style="float: bottom; display: inline-block; position: absolute; bottom: 10px; right: 250px">
        <input type="text"  placeholder="Search" id="ser" style="width: 250px"/>
        <button class="submit-search" type="button" style="width: 150px; " id="submit-s">搜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;索</button>

    </form>
</header>

 </div>
<div class="wrap">
	<div id="showshangping">
	<!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->
	<header id="header" class="clearfix">
		
		<a href="index.jsp" id="logo"><img src="images/wanglogo.png" alt="Car Dealer"  width="100%" height="100%" style="width: 150px; height: 150px; position: absolute; top: 0px"/></a>
		<div class="desc" style="font-size: 22px; line-height: 34px; border-left: 1px solid #ccc; position: absolute; left: 200px; top: 50px; padding-left: 20px; font-weight: bold; color:#ff6800; display: inline-block">校园二手交易系统</div>
		<div class="widget-container widget_search">
			<span class="call"><span>联系方式</span> 567-8901</span><br>
			<!--<span class="call"><span>+1 234</span> 567-8901</span><br />-->
			
			<!--<span class="adds">12 Street, Los Angeles, CA, 94101</span>-->
            <span class="adds">四川理工学院B8c424</span>
			<form action="/" id="searchform" class="form-panel" />
				<p>
					<input type="text" id="sss" placeholder="Search"  style="height: 35px; position: absolute; right: 100px; "/>
					<button id="searchsubmit" class="submit-search" type="button" style="width: 100px;">搜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;索</button>
				</p>

			</form><!--/ #searchform-->

		</div><!--/ .widget-container-->		
		
		<nav id="navigation" class="navigation" >
			
			<ul>
				<li class="current-menu-item"><a href="index.jsp">主页</a></li>
				<li><a href="#" onclick="publish()">发布商品</a>
				</li>
				<li><a href="#">校内新闻</a>
					<ul>
						<li><a href="#">计算机学院</a></li>
						<li><a href="#">生物学院</a></li>
						<li><a href="#">数统学院</a></li>
						<li><a href="#">外语学院</a></li>
						<li><a href="#">其他学院</a></li>
					</ul>
				</li>
				<li><a href="#">公告</a></li>
				<li><a href="http://www.suse.edu.cn" target="_blank">理工官网</a></li>
				<li><a href="#">站点导航</a>
				</li>
				<!--<li><a href="#"></a></li>-->
			</ul>
			
		</nav><!--/ #navigation-->
		
	</header><!--/ #header-->
	<div class="copyrights">Collect from <a href="#" >Website Template</a></div>
	<!-- - - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - - -->
	<!-- - - - - - - - - - - - - - Top Panel - - - - - - - - - - - - - - - - -->
	<div class="top-panel clearfix">
		<div id="slider" class="flexslider clearfix">
			<ul class="slides">
				<li><img src="images/sliders/slide-1.jpg" alt="" />
					<div class="caption">
						<div class="caption-entry">
							<dl class="auto-detailed clearfix">
								<dt>
									<span class="model">二手书籍</span>
								</dt>
								<dd class="media-hidden">
									<b>正版出售</b>
								</dd>
								<dd class="media-hidden">
									<b>各科书籍</b>
								</dd>
								<dd>
									<span class="heading">九成新</span>
								</dd>
							</dl>
							<!--/ .auto-detailed-->
							<a href="#" class="button orange" onclick="ccc1(34)">详情 &raquo;</a>
						</div>
					</div>
				</li>
				<li><img src="images/sliders/slide-2.jpg" alt="" />
					<div class="caption">
						<div class="caption-entry">
							<dl class="auto-detailed clearfix">
								<dt>
									<span class="model">数码产品</span>
								</dt>
								<dd class="media-hidden">
									<b>信息公开</b>
								</dd>
								<dd class="media-hidden">
									<b>无中间人，直接交易</b>
								</dd>
								<dd>
									<span class="heading">有保障</span>
								</dd>
							</dl>
							<!--/ .auto-detailed-->
							<a href="#" class="button orange" onclick="ccc1(24)">详情 &raquo;</a>
						</div>
						<!--/ .caption-entry-->
					</div> <!--/ .caption--></li>
				<li><img src="images/sliders/slide-3.jpg" alt="" />
					<div class="caption">
						<div class="caption-entry">
							<dl class="auto-detailed clearfix">
								<dt>
									<span class="model">交通工具</span>
								</dt>
								<dd class="media-hidden">
									<b>九成新</b>
								</dd>
								<dd class="media-hidden">
									<b>省时省力</b>
								</dd>
								<dd>
									<span class="heading">经济实惠</span>
								</dd>
							</dl>
							<!--/ .auto-detailed-->
							<a href="#" class="button orange" onclick="ccc1(26)">详情 &raquo;</a>
						</div>
						<!--/ .caption-entry-->
					</div> <!--/ .caption--></li>
				<li><img src="images/sliders/slide-4.jpg" alt="" />
					<div class="caption">
						<div class="caption-entry">
							<dl class="auto-detailed clearfix">
								<dt>
									<span class="model">运动器材</span>
								</dt>
								<dd class="media-hidden">
									<b>健康省力</b>
								</dd>
								<dd class="media-hidden">
									<b>更省心</b>
								</dd>
								<dd>
									<span class="heading">经济实惠</span>
								</dd>
							</dl>
							<!--/ .auto-detailed-->
							<a href="#" class="button orange" onclick="ccc1(38)">详情 &raquo;</a>
						</div>
						<!--/ .caption-entry-->
					</div> <!--/ .caption--></li>
				<li><img src="images/sliders/slide-5.jpg" alt="" />
					<div class="caption">
						<div class="caption-entry">
							<dl class="auto-detailed clearfix">
								<dt>
									<span class="model">杂货日用</span>
								</dt>
								<dd class="media-hidden">
									<b>各种杂货</b>
								</dd>
								<dd class="media-hidden">
									<b>应有仅有</b>
								</dd>
								<dd>
									<span class="heading">省时省力</span>
								</dd>
							</dl>
							<!--/ .auto-detailed-->
							<a href="#" class="button orange" onclick="ccc1(26)">详情 &raquo;</a>
						</div>
						<!--/ .caption-entry-->
					</div> <!--/ .caption--></li>
			</ul>
		</div>

		<div class="widget_custom_search">
			<h3 class="widget-title">快速筛选</h3>
			<form action="/" id="boxpanel" class="form-panel" />

			<fieldset>
				<label for="manufacturer">校区:</label> <select
					id="manufacturer" name="manufacturer">
				<option value="0" />宜宾校区
				<option value="1" />营盘校区
				<option value="2" />汇东
			</select>
			</fieldset>

			<fieldset>
				<label for="minprice">最低价:</label> <select id="minprice"
														   name="minprice">
				<option value="0" />0
				<option value="10" />10
				<option value="100" />100
			</select>
			</fieldset>

			<fieldset>
				<label for="maxprice">最高价:</label> <select id="maxprice"
														   name="maxprice">
				<option value="10" />10
				<option value="100" />100
				<option value="5000" />5000
			</select>
			</fieldset>

			<fieldset>
				<label for="trans">折扣服务:</label> <select id="trans" name="trans">
				<option value="0" />包送
				<option value="1" />不包送
			</select>
			</fieldset>

			<fieldset>
				<label for="mileage">Mileage:</label> <select id="mileage"
															  name="mileage">
				<option value="0" />Any
				<option value="1" />Lorem
				<option value="2" />Ipsum
			</select>
			</fieldset>

			<fieldset>
				<label for="bodytype">种类:</label> <select id="bodytype"
														  name="bodytype">
				<option value="0" />二手书籍
				<option value="1" />运动器材
				<option value="2" />音乐器材
				<option value="3" />数码产品
				<option value="4" />杂货
			</select>
			</fieldset>

			<div class="clear"></div>
			<button id="submitSearch" class="submit-search" type="button">快速查找</button>

			</form>

		</div>
	</div>
</div>
	<!-- - - - - - - - - - - - - end Top Panel - - - - - - - - - - - - - - - -->
			<div id="resuleshow"><div id="resuleshow1"><div class="main">
				<!-- - - - - - - - - - - - - - - Container - - - - - - - - - - - - - - - - -->
				<section class="container sbr clearfix">
					<!-- - - - - - - - - - - - - - - Content - - - - - - - - - - - - - - - - -->
					<section id="content" class="twelve columns">
						<div class="recent-list-cars">
							<h3 class="widget-title">新品推荐</h3>
							<ul class="clearfix">
								<li><a href="#" class="single-image video picture"> <img
										src="images/temp/slide-1.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">离散数学</h6>
								</a>
									<div class="detailed">
										<span class="cost">$8.9</span> <span>九成新</span> <br />
										<b>计算机学科</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(41)"><span>详情>></span></a>

								</li>

								<li><a href="#" class="single-image picture video"> <img
										src="images/temp/slide-2.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">摄像机</h6>
								</a>
									<div class="detailed">
										<span class="cost">$1400.0</span> <span>九成新</span> <br />
										<b>手续齐全</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(51)">详情>></a>
								</li>

								<li><a href="#" class="single-image picture"> <img
										src="images/temp/slide-3.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">二手自行车</h6>
								</a>
									<div class="detailed">
										<span class="cost">$200.0</span> <span>九成新</span> <br />
										<b>送加气筒</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(27)">详情>></a>
								</li>

								<li><a href="#" class="single-image"> <img
										src="images/temp/slide-4.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">阿迪达斯篮球</h6>
								</a>
									<div class="detailed">
										<span class="cost">$400.0</span> <span>九成新</span> <br />
										<b>正品推荐</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(36)">详情>></a>
								</li>

								<li><a href="#" class="single-image picture"> <img
										src="images/temp/slide-5.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">盆栽</h6>
								</a>
									<div class="detailed">
										<span class="cost">$8.9</span> <span>净化空气首选</span> <br />
										<b>好养活</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(52)">详情>></a>
								</li>

								<li><a href="#" class="single-image picture"> <img
										src="images/temp/slide-6.jpg" alt="" />
								</a> <a href="#" class="list-meta">
									<h6 class="title-list-item">四级英语练习题</h6>
								</a>
									<div class="detailed">
										<span class="cost">$48.0</span> <span>2017年上半年考试</span> <br />
										<b>含试卷</b>
									</div> <!--/ .detailed--> <a href="#" class="button orange" onclick="ccc1(50)">详情>></a>
								</li>
							</ul>
							<a href="#" class="see">查看所有商品</a>
						</div>
					</section>
					<!-- - - - - - - - - - - - - - end Content - - - - - - - - - - - - - - - - -->


			<!-- - - - - - - - - - - - - - - Sidebar - - - - - - - - - - - - - - - - -->	

			<aside id="sidebar" class="four columns">
				
				<div class="widget-container widget_loan_calculator">
					
					<div class="widget-head">
						<h3 class="widget-title">Loan Calculator</h3>
					</div>
					
					<div class="entry-loan">
						
						<table>
							<tr>
								<td><label for="loan_amount">Loan Amount</label></td>
								<td><input id="loan_amount" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="payment">Down Payment</label></td>
								<td><input id="payment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
							<tr>
								<td><label for="rate">Annual Rate</label></td>
								<td><input id="rate" type="text" value="0.00" /></td>
								<td>%</td>
							</tr>
							<tr>
								<td><label for="term">Term</label></td>
								<td><input id="term" type="text" value="0.00" /></td>
								<td>Yrs</td>
							</tr>
							<tr>
								<td>
									<a id="buttonCalculate" href="#" class="button orange">Calculate</a>
								</td>
							</tr>
							<tr>
								<td><label for="payments">Payments</label></td>
								<td><input id="payments" type="text" value="0.00" /></td>
								<td></td>
							</tr>
							<tr>
								<td><label for="mpayment">Monthly Payment</label></td>
								<td><input id="mpayment" type="text" value="0.00" /></td>
								<td>$</td>
							</tr>
						</table>
						
					</div><!--/ .entry-loan-->
					
				</div><!--/ .widget-container-->
				
				<div class="widget-container widget_recent_entries">
					
					<h3 class="widget-title">Recent News</h3>
					
					<ul>
						<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing</a></li>
						<li><a href="#">Ipsum dolor sit amet, consectetur adipisicing</a></li>
						<li><a href="#">Set magna ipsum dolor sit amet, consectetur adipisicing</a></li>
					</ul>
					
					<a href="#" class="see">See all news</a>
					
				</div><!--/ .widget-container-->

			</aside><!--/ #sidebar-->

			<!-- - - - - - - - - - - - - end Sidebar - - - - - - - - - - - - - - - - -->

		</section><!--/.container -->

		<!-- - - - - - - - - - - - - end Container - - - - - - - - - - - - - - - - -->			
		
			</div><!--/ .main--></div></div>


	<!-- - - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

	<footer id="footer" class="container clearfix">

		<section class="container clearfix">

			<div class="four columns">

				<div class="widget-container widget_text">

					<h3 class="widget-title">关于我们</h3>

					<div class="textwidget">

						<p class="white">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor.</p>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>

					</div>
					<!--/ .textwidget-->

					<a href="#" class="see">更多</a>

				</div>
				<!--/ .widget-container-->

			</div>
			<!--/ .four .columns-->

			<div class="four columns">

				<div class="widget-container widget_text">

					<h3 class="widget-title">咨询时间</h3>

					<div class="textwidget">

						<ul class="hours">

							<li>星期天<span>上午8:30--下午9:00</span></li>
							<li>星期一<span>上午8:30--下午9:00</span></li>
							<li>星期二<span>上午8:30--下午9:00</span></li>
							<li>星期三<span>上午8:30--下午9:00</span></li>
							<li>星期四<span>上午8:30--下午9:00</span></li>
							<li>星期五<span>上午8:30--下午9:00</span></li>
							<li>星期六<span>上午8:00--上午9:00</span></li>

						</ul>
						<!--/ .hours-->

					</div>
					<!--/ .textwidget-->

				</div>
				<!--/ .widget-container-->

			</div>
			<!--/ .four .columns-->
			<div class="four columns">

				<div class="widget-container widget_contacts">

					<h3 class="widget-title">联系我们</h3>

					<ul class="our-contacts">

						<li class="phone"><b>联系电话:</b>&nbsp;<span>1234567</span> <br />
							<b>&nbsp;</b>&nbsp;<span>+1 (234)
									567-8902</span></li>
						<li><b>Email: <a href="mailto:testmail@sitename.com">testmail@sitename.com</a></b>
						</li>
						<li>
							<ul class="social-icons clearfix">
								<li class="twitter"><a title="twitter" href="#">Twitter</a></li>
								<li class="facebook"><a title="facebook" href="#">Facebook</a></li>
								<li class="rss"><a title="rss" href="#">Rss</a></li>
							</ul> <!--/ .social-icons-->
						</li>

					</ul>
					<!--/ .our-contacts-->
				</div>
				<!--/ .widget-container-->
			</div>
			<!--/ .four .columns-->
			<div class="four columns">
				<div id="gMap"></div>
			</div>
			<!--/ .four .columns-->
			<div class="adjective clearfix">
				<p class="copyright">
					Copyright &copy; 2018.计算机学院.竞逐队
				</p>
			</div>
			<!--/ .adjective-->
		</section>
		<!--/ .container-->
	</footer>
	<!--/ #footer-->
	<!-- - - - - - - - - - - - - - - end Footer - - - - - - - - - - - - - - - - -->		
	
</div><!--/ .wrap-->
<!--登录页面start-->
  <!--class="account-wrapper"-->
<div class="account-wrapper" id="aaa2"><a href="#" class="newlog"><span id="deng" >登录</span></a></div>
	<!--<form class="form-reg" method="post" action="#" /> --> <!--class="form-reg" -->
		<!--<a href="#" class="log">Login</a>--><!--class="log"onclick="showlogin()"-->
	<!--	<div id="aaa">
		<p>
			<label>Username*</label>
			<input class="input-medium" type="text" />
		</p>
		
		<p>
			<label>Password*</label>
			<input class="input-medium" type="password" />
		</p>
		
		<p class="forgot-pass">
			<a href="#">Forgot your password?</a>
		</p>
		
		<p>
			<a href="#" class="button dark enter-btn">Login</a>
			<a href="#" class="button dark enter-btn">Create an account</a>
		</p>
		</div>-->
	<!-- 右上角关闭按钮 -->
<div class="account-wrapper1" style="display: none" id="aaa1">
<div  class="newlog1">
	<div id="closediv">
		<a href="javascript:void(0);" onClick="closeDiv()"><img src="images/jian.png" style="width: 44px; height:36px" height="100%" width="100%">
		</a>
	</div>
	<!-- 登陆div -->
	<div id="tbdiv">
		<div class="#" id="denglu">  <!--container-->
			<section id="content1">
		<form action="#" method="post"><!--CheckLogin.jsp登录判断界面-->
					<h1>会员登录</h1>
					<input name="op" value="login" style="display: none; "/>
					<div>
						<input type="text" placeholder="学号" required="" id="username" name="username" onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
					</div>
					<div>
						<input type="password" placeholder="密码" required="" id="password" name="password"  onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
					</div>
					<div class="">
						<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div>
					<div>
						<!-- <input type="submit" value="Log in" /> -->
						<input type="button" value="登录" class="btn btn-primary" id="js-btn-login"/>
                      <input type="button"  value="注册" class="btn btn-primary" id="reset"/>
						<a href="#">忘记密码?</a><br>
					</div>
				</form><!-- form -->
				<div class="button">
					<span class="help-block u-errormessage" id="span" >&nbsp;</span>
				</div> <!-- button -->
			</section><!-- content -->
		</div>
		<div  id="zhuce" style="display: none">
			<section id="content2" >
				<form action="#" method="post"> <!--CheckLogin.jsp登录判断界面-->
					<h1 style="	color: #7E7E7E; font: bold 25px Helvetica, Arial, sans-serif; letter-spacing: -0.05em; line-height: 20px; margin: 10px 0 30px;">会员注册</h1>
					<input name="op" value="zhuce" style="display: none; "/>
					<div>
						<input type="text" placeholder="邮箱" required="" id="username1" name="username1"  onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" />
					</div>
					<div>
						<input type="password" placeholder="密码" required="" id="password1" name="password1"  onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" />
					</div>
					<input type="password" placeholder="再一次输入密码" required="" id="password2" name="password2"  onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" onChange="bijiao()"/><!--onchange事件触发检测-->
					<h5>
					<div class="#" id="qq">
						<p id="ww">&nbsp;</p>
					</div></h5>
					<div>
						<input type="button" value="重置" class="btn btn-primary" id="js-btn-reset"/>
						<input type="button" value="注册" class="btn btn-primary" id="js-btn-register" onClick="jiance()"/>
					</div>
				</form>
			</section>
		</div>
	</div>
<!--	</form>--><!--/ .form-reg-->
	</div>
</div><!--/ .account-wrapper--><!--登录界面end-->
<!--[if lt IE 9]>
	<script src="js/selectivizr-and-extra-selectors.min.js"></script>
<![endif]-->
<script src="sliders/flexslider/jquery.flexslider-min.js"></script>
<script src="jquery-3.3.1.js"></script>
<script src="js/custom.js"></script>
<script>
	var newdata=null;
	//大列表添加商品往id里shangping
    var showshangping="<section class='twelve columns'><div class='recent-list-cars' id='shang'><h3 class='widget-title'></h3><ul class='clearfix' id='shangping'></ul></div></section>"
    $("#submitSearch").click( function(){
        $("#headershow").css("display","");
      //  $("#showshangping").attr("display","none");
        $("#showshangping").css("display","none");
        $("#resuleshow1").remove();
       // $("#resuleshow").css("position","fixed");
        $("#resuleshow").append(showshangping);  //往空白填上css框架
        $("#resuleshow").css("margin-top","100px");
       // window.open("query.jsp");
    var url = "/user?op=queryshangping";
    var data={
        "manufacturer":$("#manufacturer").val(),
        "minprice":$("#minprice").val(),
        "maxprice":$("#maxprice").val(),
        "trans":$("#trans").val(),
        "mileage":$("#mileage").val(),
        "bodytype":$("#bodytype").val(),
    };
    $.ajax({
        url: url,
        type: 'post',
        data: data,
        dataType: 'json',
        success: function (data) {
            newdata=data;
            //show(data[0].producedname,data[0].base641);
            console.log(data);
            //var a = window.URL.createObjectURL(data);
           // var b=data[0].base641;
            	for (var a=0;a<data.length;a++){
                    show(data[a].producedname,data[a].base641,data[a].ids,data[a].address,data[a].price,data[a].lei);


				}
            /* $.each(data, function(index, item) {
                  //	if(item[key]!=''){
                      $('<img>', {
                          src : "data:image/*;base64,"+item[index].base641
                      }).css({
                          width : '100px',
                          height : "100px"
                      }).appendTo($('#resuleshow'));
                      //}
                      */

       },
    })
})
	function show(name,imgsrc,ids,address,price,zhonglei) {
        var div="<li><a href='#'class='single-image video picture'><img src='data:image/jpeg;base64,"+imgsrc+"'alt='' height='100%' width='100%' style='height: 250px; width: 250px'/> </a> <a href='#'  class='list-meta'> <h6 class='title-list-item'>"+name+"</h6> </a> <div class='detailed'> <span class='cost'>$"+price+"</span>  <br /> <b>"+zhonglei+"</b> </div> <!--/ .detailed--> <a href='#' class='button orange' onclick='ccc("+ids+")'>详情>></a></li>";
        $("#shangping").append(div);
        $("#shangping").trigger("create");

    }
    $("#searchsubmit").click(function () { //上边那个
        $("#headershow").css("display","");
        //  $("#showshangping").attr("display","none");
        $("#showshangping").css("display","none");
        $("#resuleshow1").remove();
        $("#resuleshow").append(showshangping);  //往空白填上css框架
        $("#resuleshow").css("margin-top","100px");
        var ur2="/user?op=queryshangping";
        console.log($("#sss").val());
        var data={
            "miao":$("#sss").val(),}
        $.ajax({
            url: ur2,
            type: 'post',
            data:data,
            dataType: 'json',
            success: function (data) {
                  newdata=data;
                //show(data[0].producedname,data[0].base641);
                console.log(data);
                //var a = window.URL.createObjectURL(data);
                //var b=data[0].base641;
                for (var a=0;a<data.length;a++){
                    show(data[a].producedname,data[a].base641,data[a].ids,data[a].address,data[a].price,data[a].lei);
                }
            },
        })
    })
</script>
<script>
   function showlogin(){
	  // $("#aaa").css("display","block");
     //  $("#aaa1").css("display","");
   }
   function show1(){
       document.getElementById("aaa1").style.display = "block" ;
       document.getElementById("aaa2").style.display = "none" ;
   }
   function closeDiv(){
       document.getElementById("zhuce").style.display = "none" ;
       document.getElementById("denglu").style.display = "block" ;
       document.getElementById("aaa1").style.display = "none" ;
       document.getElementById("aaa2").style.display = "block" ;
   }
   $("#deng").click(function () {
       if($("#deng").text()!="登录"){
           if(tuichu()){
               alert("退出成功!");
               $("#deng").text("登录");
           }
       }else {
           show1();
           lodin();
       }
   })
   function tuichu() {
           if(confirm("确定要注销吗?"))
           {
               return true;
           }else{
               return false;
           }
   }
  function lodin() {
      $("#js-btn-login").click(function () {
          if($("#username").val()!="admin" && $("#password").val()!="admin"){
                  var url = "/user?op=login";
                  var login = {"username": $("#username").val(), "password": $("#password").val()}
                  $.ajax({
                      url: url,
                      type: 'post',
                      data: login,
                      dataType: 'json',
                      success: function (data) {
                          var a = data;
                          alert("登录成功!");
                          closeDiv();
                          $("#deng").text(a);
                      },
                      error: function () {

                      },
                  })

		  }else {
              window.open("admin.jsp");}
   })}
   $("#reset").click(function () {
       document.getElementById("zhuce").style.display = "block" ;
       document.getElementById("denglu").style.display = "none" ;

  })
	function ccc(s) {
        if ( $("#deng").text()=="登录") { alert("登录了,才能浏览商品详情哟!");}
        else {
     //  window.open("xiang.jsp?ids="+s+"");
        for (var a=0;a<newdata.length;a++){
           if(newdata[a].ids==s){
               console.log(newdata[a]);
             //  openPostWindow("xiang.jsp","rwbc",newdata[a]);
               openNewPost('POST',"xiang.jsp",newdata[a],"_blank");
           }
        }
     /*  ur3="xiang.jsp"
        $.ajax({
            url: ur3,
            type: 'post',
            data:{"s":s},
            dataType: 'json',

            success: function (data) {
                //show(data[0].producedname,data[0].base641);
                console.log(data);

                }
            })*/
    }}
   function ccc1(s) {
       if ( $("#deng").text()=="登录") { alert("登录了,才能浏览商品详情哟!");}
       else {
       var ur3="/user?op=queryshangping";
       var data={"ids":s}
       $.ajax({
           url: ur3,
           type: 'post',
           data:data,
           dataType: 'json',
           success: function (data) {
               //show(data[0].producedname,data[0].base641);
               console.log(data);
               openNewPost('POST',"xiang.jsp",data[0],"_blank");

           },
       })
   }}
   // Arguments :
   //  verb : 'GET'|'POST'
   //  target : an optional opening target (a name, or "_blank"), defaults to "_self"
   function openNewPost(verb, url, data, target) {
       var form = document.createElement("form");
       form.action = url;
       form.method = verb;
       form.target = target || "_self";
       if (data) {
           for (var key in data) {
               var input = document.createElement("textarea");
               input.name = key+"";
               input.value = typeof data[key] === "object" ? JSON.stringify(data[key]):  encodeURI(data[key],"utf-8");  //JSON.stringify(data[key])  encodeURI(JSON.stringify(jsonData),"utf-8")；
               form.appendChild(input);
               console.log(key);
           }
       }
       form.style.display = 'none';
       form.enctype='application/json';
       document.body.appendChild(form);
       form.submit();
       document.body.removeChild(form);
   }
function publish(){
       if ( $("#deng").text()=="登录") {
           alert("登录了,才能发布商品哟!");
	   }else {
       window.open("Publish.jsp");}
}
$("#submit-s").click(function () {
    var ur2="/user?op=queryshangping";
    var data={
        "miao":$("#ser").val(),}
    $.ajax({
        url: ur2,
        type: 'post',
        data:data,
        dataType: 'json',
        success: function (data) {
            $("#shangping").remove();
            var bc="<ul class='clearfix' id='shangping'></ul>"
            $("#shang").append(bc);
            $("#shangping").trigger("create");
            newdata=data;
            //show(data[0].producedname,data[0].base641);
            console.log(data);
            //var a = window.URL.createObjectURL(data);
            //var b=data[0].base641;
            for (var a=0;a<data.length;a++){
                show(data[a].producedname,data[a].base641,data[a].ids,data[a].address,data[a].price,data[a].lei);
            }
        },
    })
})
</script>
	<script>
        function bijiao(){
            var psw1 = document.getElementById("password1").value;
            var psw2 = document.getElementById("password2").value;
            var ww1=document.getElementById("ww");
            var qq1=document.getElementById("qq");
            qq1.style.display="inline";
            if(psw1!=psw2){
                ww1.innerHTML="两次输入密码不一致，请重新输入";
            }
            else{
                qq1.style.display="none";
            }
        }
        function jiance(){
            var psw1 = document.getElementById("password1").value;
            var psw2 = document.getElementById("password2").value;
            var ww1=document.getElementById("ww");
            var qq1=document.getElementById("qq");
            qq1.style.display="inline";
            if(psw1!=psw2){
                ww1.innerHTML="两次输入密码不一致，请重新输入";
            }else{
                var ur2="/user?op=register";
                var data={
                    "username1":$("#username1").val(),
                    "password2":$("#password1").val(),}
                $.ajax({
                    url: ur2,
                    type: 'post',
                    data:data,
                    dataType: 'json',
                    success: function (data) {
                        console.log(data);
                        if (data=="123") {
                        alert("注册成功!");}
                    },
                })
            }
        }
	</script>
</body>
</html>
