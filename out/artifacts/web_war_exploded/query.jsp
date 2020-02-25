<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/2
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if IE 9]>					<html class="ie9 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
<head>
   <!-- <script>
        // 第一步：匹配加载的页面中是否含有js
        var regDetectJs = /<script(.|\n)*?>(.|\n|\r\n)*?<\/script>/ig;
        var jsContained = ajaxLoadedData.match(regDetectJs);
        // 第二步：如果包含js，则一段一段的取出js再加载执行
        if(jsContained) {
            // 分段取出js正则
            var regGetJS = /<script(.|\n)*?>((.|\n|\r\n)*)?<\/script>/im;
            // 按顺序分段执行js
            var jsNums = jsContained.length;
            for (var i=0; i<jsNums; i++) {
                var jsSection = jsContained[i].match(regGetJS);
                if(jsSection[2]) {
                    if(window.execScript) {
                        // 给IE的特殊待遇
                        window.execScript(jsSection[2]);
                    } else {
                        // 给其他大部分浏览器用的
                        window.eval(jsSection[2]);
                    }
                }
            }
        }
    </script>-->
    <link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Open+Sans:400,600,700|Oswald|Electrolize' rel='stylesheet' type='text/css' />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <title>Car Dealer | Home</title>

    <meta name="description" content="" />
    <meta name="author" content="" />

    <link rel="shortcut" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/stylenew.css" media="screen" />
    <link rel="stylesheet" href="css/skeleton.css" media="screen" />
    <link rel="stylesheet" href="sliders/flexslider/flexslider.css" media="screen" />
    <link rel="stylesheet" href="fancybox/jquery.fancybox.css" media="screen" />

    <!-- HTML5 Shiv + detect touch events -->
    <script type="text/javascript" src="js/modernizr.custom.js"></script>
    <script src="sliders/flexslider/jquery.flexslider-min.js"></script>
    <script src="js/custom.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="menu-1 h-style-1 text-1">
<div class="wrap">

    <!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->

    <header id="header" class="clearfix">

        <a href="index.html" id="logo"><img src="images/logo.png" alt="Car Dealer" /></a>

        <div class="widget-container widget_search">
            <span class="call"><span>联系方式</span> 567-8901</span><br>
            <!--<span class="call"><span>+1 234</span> 567-8901</span><br />-->

            <!--<span class="adds">12 Street, Los Angeles, CA, 94101</span>-->
            <span class="adds">四川理工学院B8c424</span>
            <form action="#" id="searchform" method="get" />

            <p>
                <input type="text" id="s" placeholder="Search" />
                <button type="button" id="searchsubmit" class="submit-search" click="query()"></button>
            </p>

            </form><!--/ #searchform-->

        </div><!--/ .widget-container-->

        <nav id="navigation" class="navigation">

            <ul>
                <li class="current-menu-item"><a href="index.html">主页</a></li>
                <li><a href="all-listings.html">Browse By</a>
                    <ul>
                        <li><a href="all-listings.html">All Listings</a></li>
                        <li><a href="#">Manufacturer</a>
                            <ul>
                                <li><a href="one-products.html">Aston Martin</a></li>
                                <li><a href="one-products.html">Audi</a></li>
                                <li><a href="one-products.html">BMW</a></li>
                                <li><a href="one-products.html">Chevrolet</a></li>
                                <li><a href="one-products.html">Mercedes Benz</a></li>
                                <li><a href="one-products.html">Ferrari</a></li>
                                <li><a href="one-products.html">Lexus</a></li>
                                <li><a href="one-products.html">Porsche</a></li>
                                <li><a href="one-products.html">Toyota</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Body Type</a></li>
                        <li><a href="#">Engine Size</a></li>
                        <li><a href="#">Mileage</a></li>
                        <li><a href="#">Model Year</a></li>
                        <li><a href="#">Price Range</a></li>
                        <li><a href="#">Transmission</a></li>
                    </ul>
                </li>
                <li><a href="blog.html">Blog</a>
                    <ul>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="blog-single.html">Blog Single</a></li>
                    </ul>
                </li>
                <li><a href="alternative-blog.html">News</a></li>
                <li><a href="sales-reps.html">Sales Reps</a></li>
                <li><a href="compare-listings.html">Pages</a>
                    <ul>
                        <li><a href="compare-listings.html">Compare Listings</a></li>
                        <li><a href="404.html">404 Page</a></li>
                        <li><a href="image-and-floats.html">Images and Floats</a></li>
                        <li><a href="pricing-table.html">Pricing Tables</a></li>
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="toggle.html">FAQ Toggle</a></li>
                        <li><a href="columns.html">Column Layout</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">Contacts</a></li>
            </ul>

        </nav><!--/ #navigation-->

    </header><!--/ #header-->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >Website Template</a></div>
    <!-- - - - - - - - - - - - - - end Header - - - - - - - - - - - - - - - - -->
<div style="height: 500px; width: 500px; background-color: #00bf00" >
<% Object[] object= (Object[]) request.getAttribute("list");
%>
<%=object[0]%>
</div>

    <!-- - - - - - - - - - - - - - Top Panel - - - - - - - - - - - - - - - - -->

    <div class="top-panel clearfix">



        <!-- - - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

        <footer id="footer" class="container clearfix">

            <section class="container clearfix">

                <div class="four columns">

                    <div class="widget-container widget_text">

                        <h3 class="widget-title">About Us</h3>

                        <div class="textwidget">

                            <p class="white">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.
                            </p>

                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation.
                            </p>

                        </div><!--/ .textwidget-->

                        <a href="#" class="see">Read more</a>

                    </div><!--/ .widget-container-->

                </div><!--/ .four .columns-->

                <div class="four columns">

                    <div class="widget-container widget_text">

                        <h3 class="widget-title">Our Hours</h3>

                        <div class="textwidget">

                            <ul class="hours">

                                <li>Monday <span>8 am to 7 pm</span></li>
                                <li>Tuesday <span>8 am to 9 pm</span></li>
                                <li>Wednesday <span>8 am to 9 pm</span></li>
                                <li>Thursday <span>8 am to 9 pm</span></li>
                                <li>Friday <span>8 am to 9 pm</span></li>
                                <li>Saturday <span>8 am to 9 pm</span></li>
                                <li>Sunday <span>Closed</span></li>

                            </ul><!--/ .hours-->

                        </div><!--/ .textwidget-->

                    </div><!--/ .widget-container-->

                </div><!--/ .four .columns-->

                <div class="four columns">

                    <div class="widget-container widget_contacts">

                        <h3 class="widget-title">Our Contacts</h3>

                        <ul class="our-contacts">

                            <li class="address">
                                <b>Address Info 1:</b>
                                <p>Lorem ipsum Dolor sit amet, 658 Consectetur, Adipisicing 56 D</p>
                            </li>
                            <li class="phone">
                                <b>Phone:</b>&nbsp;<span>+1 (234) 567-8901</span> <br />
                                <b>FAX:</b>&nbsp;<span>+1 (234) 567-8902</span>
                            </li>
                            <li>
                                <b>Email: <a href="mailto:testmail@sitename.com">testmail@sitename.com</a></b>
                            </li>
                            <li>
                                <ul class="social-icons clearfix">
                                    <li class="twitter"><a title="twitter" href="#">Twitter</a></li>
                                    <li class="facebook"><a title="facebook" href="#">Facebook</a></li>
                                    <li class="rss"><a title="rss" href="#">Rss</a></li>
                                </ul><!--/ .social-icons-->
                            </li>

                        </ul><!--/ .our-contacts-->

                    </div><!--/ .widget-container-->

                </div><!--/ .four .columns-->

                <div class="four columns">

                    <div id="gMap"></div>

                </div><!--/ .four .columns-->

                <div class="adjective clearfix">

                    <p class="copyright">Copyright &copy; 2013. ThemeMakers. All rights reserved.Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>

                </div><!--/ .adjective-->

            </section><!--/ .container-->

        </footer><!--/ #footer-->

        <!-- - - - - - - - - - - - - - - end Footer - - - - - - - - - - - - - - - - -->

    </div><!--/ .wrap-->

    <div class="account-wrapper">

        <form class="form-reg" method="post" action="" />

        <a href="#" class="log">Login</a>

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
        </form><!--/ .form-reg-->

    </div><!--/ .account-wrapper-->
</div>
    <script src="jquery-3.3.1.js"></script>
<script>
        //使用方法名字执行方法
        var t1 = window.setTimeout(query(),2000);
        //var t2 = window.setTimeout("query()",3000);//使用字符串执行方法
        window.clearTimeout(t1);//去掉定时器
        //timename=setTimeout("query();",2000);  //倒计器定时 1000为1秒
       // timename=setInterval("function();",delaytime)  //循环定时器

 function query(){
        var url = "/user?op=queryshangping";
        $.ajax({
            url: url,
            type: 'post',
            data: data,
            success: function (data) {
                alert(a);

            },
            error: function (data) {
                alert(data);
                $("#dddd").attr("src","business/getImg?addr="+data+"");
            },
        })
    }

    $("#searchsubmit").click(function () {
        eval(alert("12345"));
    })
    /*$("body").on("click", '.样式', function(){
        alert("12345");
    })*/
    function querybb() {
    var data={};
        alert("1");
        var url = "/user?op=queryshangping";
        $.ajax({
            url: url,
            type: 'post',
            data: data,
            success: function (data) {
                alert(a);

                //  var query = JSON.parse(data);
                // alert(query);
                /* $(".dong").remove();  //从DOM中删除所有匹配的元素
                 for (var i=0;i<query.length;i++){
                     var c="<div style='background-color:red; margin-top:20px; margin-left:10px; margin-right:10px;margin-left:10px; '><img src='1.jpg' style=' max-height:100%; max-width:100%; height: anto; width:auto;'></img></div>";
                     var d="<div style='height:80px; margin-left:10px; background-color:red; '>"+query[i].describe+"</div>";
                     var $div ="<div class='dong'>"+c+d+"</div>";
                     $("#show").append($div);
                     $("#show").trigger("create");  //重点：这名的意思是重新加载所在标签的样式。非常有用的一句话，不加这一句你动态append的标签将丢失Css样式
                 }*/
                //  $("#dddd").append("<div style='background-color: red'><img src='data:image/gif;base64,'"+query+"></img></div>");
                // $("#dddd").trigger("create");
                //  var srcUrl =query[0].url;// appJP.urlReqImg + "?log_id=" + row.log_id;//请求URL
                //var imgWindow = $("#dddd").append("<img src=" + srcUrl + ">");
                //  alert("12")
                //  $("#dddd").append("<img src=" + srcUrl + ">");
                //    $("#dddd").trigger("create");
            },
            error: function (data) {
                alert(data);
                $("#dddd").attr("src","business/getImg?addr="+data+"");
                //     var query = JSON.parse(data);
                //alert(query[1]);
                //   $("#queryimage").attr("src",data);
                ///  $("#queryimage").trigger("create");
                //   $("#queryimage").attr("src","business/getImg?addr="+query[1]+"");

            },})
    }


</script>

</body>
</html>
