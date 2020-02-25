<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>校园二手交易管理系统</title>
<!-- plugins:css -->
<link rel="stylesheet" href="css/materialdesignicons.min.css">
<link rel="stylesheet" href="css/vendor.bundle.base.css">
<link rel="stylesheet" href="css/styleadmin.css">
<link rel="shortcut icon" href="images/favicon.png" />
<script type="text/javascript">
	function shut() {
		window.opener = null;
		window.open('', '_self');
		window.close();
	}
</script>
<style>
    table,table tr th, table tr td { border:1px solid #0094ff; }
    table { width: 200px; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse;}
</style>

</head>
<body>

	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav
			class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">

			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="admin.jsp"><img src="images/admin/logo.svg" alt="logo" /></a> <a class="navbar-brand brand-logo-mini" href="admin.jsp"><img src="images/admin/logo-mini.svg" alt="logo" /></a>
			</div>

			<div class="navbar-menu-wrapper d-flex align-items-stretch">
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item nav-profile dropdown">
					<a class="nav-link dropdown-toggle" id="profileDropdown" href="#"
						data-toggle="dropdown" aria-expanded="false">
							 <div class="nav-profile-img">
								 <img src="images/admin/face1.jpg" alt="image"> <span
									class="availability-status online"></span>
									
									<!--  ${currentUser.userName}-->
							</div>
							
							<div class="nav-profile-text">
								<p class="mb-1 text-black" onclick="shut()">退出</p>
							</div>
					</a></li>

					<li class="nav-item d-none d-lg-block full-screen-link"><a
						class="nav-link"> <i class="mdi mdi-fullscreen"
							id="fullscreen-button"></i>
					</a></li>
				</ul>

				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">

                    <li class="nav-item nav-profile"><a href="#" class="nav-link">

                        <div class="nav-profile-image">
                            <img src="images/admin/face1.jpg" alt="profile"> <span
                                class="login-status online"></span>
                            <!--change to offline or busy as needed-->
                        </div>

                        <div class="nav-profile-text d-flex flex-column">
                            <span class="font-weight-bold mb-2"> 管理员，你好！</span>
                        </div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                    </a></li>

                    <li class="nav-item"><a class="nav-link" href="admin.jsp">
                        <span class="menu-title">管理主页</span> <i
                            class="mdi mdi-home menu-icon"></i>
                    </a></li>

                    <li class="nav-item"><a class="nav-link"
                                            data-toggle="collapse" href="#ui-basic" aria-expanded="false"
                                            aria-controls="ui-basic"> <span class="menu-title">物品类别</span>
                        <i class="menu-arrow"></i> <i
                                class="mdi mdi-crosshairs-gps menu-icon"></i>
                    </a>
                        <div class="collapse" id="ui-basic">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"><a class="nav-link"
                                                        href="#">物品类别</a></li>
                                <li class="nav-item"><a class="nav-link"
                                                        href="#">添加物品类别</a></li>
                            </ul>
                        </div></li>

                    <li class="nav-item"><a class="nav-link"
                                            href="#" onclick="bb()"> <span class="menu-title">物品信息</span> <i
                            class="mdi mdi-contacts menu-icon"></i>
                    </a></li>

                    <li class="nav-item"><a class="nav-link" href="#" onclick="showyonghu()"> <span class="menu-title">用户信息</span> <i
                            class="mdi mdi-format-list-bulleted menu-icon"></i>
                    </a></li>

                    <li class="nav-item"><a class="nav-link"
                                            href="#"> <span class="menu-title">订单信息</span> <i
                            class="mdi mdi-chart-bar menu-icon"></i>
                    </a></li>

                    <li class="nav-item"><a class="nav-link"
                                            href="#"> <span class="menu-title">修改登录密码</span>
                        <i class="mdi mdi-medical-bag menu-icon"></i>
                    </a></li>
                </ul>
            </nav>

			<div class="main-panel">
				<div class="content-wrapper" style="padding-top:20px;padding-left:40px; " id="jiemian">
                    <h1 id="huan">欢迎你!管理员</h1>
				</div>
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<script src="js/vendor.bundle.base.js"></script>
	<script src="js/vendor.bundle.addons.js"></script>
	<script src="js/off-canvas.js"></script>
	<script src="js/misc.js"></script>
	<script src="js/dashboard.js"></script>
<script>
	var yonghu=null;
    window.onload = aa();
		function aa() {
        var ur2="/user?op=admin";
        var data={};
        $.ajax({
            url: ur2,
            type: 'post',
            data:data,
            dataType: 'json',
            success: function (data) {
                console.log(data);
               yonghu=data;
},
        })

    }
function bb() {
    var ur2="/user?op=queryshangping";
    var data={"show":"shangping"};
    $.ajax({
        url: ur2,
        type: 'post',
        data:data,
        dataType: 'json',
        success: function (data) {
            console.log(data);
			$("#huan").remove();
            showuping(data);
        },
    })
}
   function showyonghu(){
       $("#huan").remove();
        $("#tab").remove();
   var vv="<table id='tab' style='width: 100%; height: 100%'> <tr> <th>&nbsp;</th><th>用户名</th><th>密码</th><th></th> </tr> </table>";
     $("#jiemian").append(vv);
       console.log(yonghu);
       for (var a=0;a<yonghu.length;a++){
           $("#tab").append( "<tr><td style='width: 10%'>"+(a+1)+"</td><td style='width: 40%'>"+yonghu[a].name+"</td><td style='width: 40%'>"+yonghu[a].password+"</td><td style='width: 10%'> <button  onclick='yonghuchu("+yonghu[a].ids+")'>删除</button></td> </tr>");
           $("#tab").trigger("create");
       }

   }
    function tuichu() {
        if(confirm("确定要删除吗?"))
        {
            return true;
        }else{
            return false;
        }
    }
   function yonghuchu(ids) {
		  if(tuichu()){
       var ur2="/user?op=drop";
       var data={"ids":ids};
       $.ajax({
           url: ur2,
           type: 'post',
           data:data,
           dataType: 'json',
           success: function (data) {
            alert("成功删除!");
           },
       })}
   }
   function showuping(wuping) {
       $("#tab").remove();
       var vv="<table id='tab' style='width: 100%; height: 100%'> <tr> <th>&nbsp;</th><th>商品名</th><th>供货人</th><th>发布日期</th><th>价格</th><th>描述</th><th>区域</th><th></th> </tr> </table>";
       $("#jiemian").append(vv);
       console.log(wuping.length);
       for (var a=0;a<wuping.length;a++){
           var bb="<tr><td style='width: 10%'>"+(a+1)+"</td><td style='width: 15%'>"+wuping[a].producedname+"</td><td style='width: 15%'>"+wuping[a].name+"</td><td style='width: 10%'>"+(wuping[a].date.year+1900)+"年"+(wuping[a].date.month+1)+"月"+(wuping[a].date.day)+"日"+"</td><td style='width: 5%'>"+wuping[a].price+"</td><td style='width: 25%'>"+wuping[a].describe+"</td><td style='width: 10%'>"+wuping[a].address+"</td><td style='width: 10%'> <button  onclick='wupingchu("+wuping[a].ids+")'>删除</button></td> </tr>";
           $("#tab").append(bb);
       }
       $("#tab").trigger("create");

   }
function wupingchu(s) {
    if(tuichu()){
        var ur2="/user?op=dropshangping";
        var data={"ids":s};
        $.ajax({
            url: ur2,
            type: 'post',
            data:data,
            dataType: 'json',
            success: function (data) {
                alert("成功删除!");
            },
        })}
}
</script>
</body>

</html>
