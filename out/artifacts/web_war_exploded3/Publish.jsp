<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon"type="image/x-icon" href="images/biao.ico"media="screen" />
<script src="jquery-3.3.1.js"></script>
<script>
    function viewmypic1(mypic,viewmypic1) {
        if(viewmypic1.files && viewmypic1.files[0])
        {
            mypic.style.display="";   //火狐下，直接设img属性
//mypic.src = upfile1.files[0].getAsDataURL();  //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            mypic.src = window.URL.createObjectURL(viewmypic1.files[0]);
        }
        else
        {  //IE下
            if (viewmypic1.value){
                mypic.src=viewmypic1.value;
                mypic.style.display="";
                mypic.border=1;
            }}
    }
</script>
<script>
    function viewmypic2(mypic,viewmypic2,close) {
        if(viewmypic2.files && viewmypic2.files[0])
        {
            mypic.style.display="";    //火狐下，直接设img属性
            close.style.display="block";
            // mypic.src = upfile2.files[0].getAsDataURL();  //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            mypic.src = window.URL.createObjectURL(viewmypic2.files[0]);
        }
        else
        {  //IE下
            if (viewmypic2.value){
                mypic.src=viewmypic2.value;
                mypic.style.display="";
                mypic.border=1;
            }
        }
    }
</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>publish发布页面</title>
    <link rel="stylesheet" type="text/css" href="css/backstage.css">
    <link rel="stylesheet" type="text/css" href="css/bootstarp.min.css">
    <link rel="stylesheet" type="text/css" href="css/filestyle.css">
    <link rel="stylesheet" type="text/css" href="css/radio.css">
    <style type="text/css">
        input[type="radio"]
        {
            display: none;
        }

        input[type="radio"] + label
        {
            display: inline-block;
            position: relative;
            border: solid 2px #99a1a7;
            width: 35px;
            height: 35px;
            line-height: 25px;
            padding:5px;
            border-radius: 19.5px;
        }

        input[type="radio"]:checked + label:after
        {
            content:'';
            display: block;
            font-size: 25px;
            color: #99a1a7;
            width: 25px;
            height: 25px;
            line-height: 25px;
            position: absolute;
            z-index: 999;
            text-align: center;
            background-color: #99a1a7;
           /*background-color: #00bf00; 青色*/
            border-radius: 12.5px;
        }

        input[type="radio"]:checked + label
        {
           background-color: #e9ecee;
           /* background-color: #000000; 黑色*/
        }

    </style>
</head>
<body>
<header class="wow fadeInRight">
    <img src="images/wanglogo.png" class="img-circle logo" alt="logo"  width="100%" height="100%" style="width: 125px; height: 125px; position: absolute; top: 0px"/>
    <div class="desc">校园二手交易系统</div>
</header>

<div class="container-fluid">

    <!-- <div class="row ">

         <div class="col-md-2 wow slideInDown" id="left">
             <a href="#systemSetting" data-toggle="collapse"> 后台管理 </a><br>
             <ul id="systemSetting" class="nav nav-pills nav-stacked collapse ">
                 <li><a href="#">用户管理</a></li>
                 <li><a href="#">地址管理</a></li>
                 <li><a href="#">商品管理</a></li>
                 <li><a href="#">图片管理</a></li>
                 <li><a href="#">日志管理</a></li>
             </ul>

             <br>

             <div>
                 <a href="#userSetting" data-toggle="collapse"> 买家中心</a>
                 <ul class="nav nav-pills nav-stacked collapse in " id="userSetting">
                     <li><a href="#publish" class="ex0 active">  我的购物车</a></li>
                     <li><a href="#"> 已买到的商品</a></li>
                     <li><a href="#"> 我的收藏</a></li>
                     <li><a href="#"> 个人资料</a></li>
                 </ul>
             </div>

             <div>
                 <a href="#sellSetting" data-toggle="collapse"> 卖家中心
                 </a>
                 <ul class="nav nav-pills nav-stacked collapse in " id="sellSetting">
                     <li class="active"><a href="#publish" class="ex0 active">发布商品</a></li>
                     <li><a href="#"> 出售中的商品</a></li>
                     <li><a href="#"> 卖家设置</a></li>
                 </ul>
             </div>

         </div>-->

        <div class=" col-md-8 publish wow fadeInUp" id="right">

            <form class="form-horizontal" action="/user?op=publish" method="post" id="form" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="col-sm-2">商品名称:</label>

                    <div class="col-sm-3">
                        <input type="text" class="form-control"  id="shangpingname" name="shangpingname" autocomplete="off" style="width: 350px"><span id="shangpingtishi"></span>
                        <br>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">商品价格:</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  id="price" name="price" oninput = "value=value.replace(/[^\d]/g,'')" autocomplete="off"><span id="pricetishi"></span>
                        <br><!--oninput 限制输入 autocomplete 没有记录 -->
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">商品详情:</label>
                    <div class="col-sm-7">
                        <textarea rows="3" cols="70" id="describe" name="describe" ></textarea><span id="maxlength"></span>
                        <br><br> <!--最大字符数 -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2">区域:</label>
                    <div >
                        <div align="center" style="float: left; height: 39px; width: 39px;">
                            <input id="rd201" name="rd" type="radio" checked value="汇东"/>
                            <label for="rd201"></label>
                        </div>
                        <div style="float: left; height: 39px; line-height: 39px; font-size: 20px; margin-left: 10px; margin-right: 20px;">汇东
                        </div>
                        <div align="center" style="float: left; height: 39px; width: 39px;">
                            <input id="rd202" name="rd" type="radio" value="营盘" />
                            <label for="rd202"></label>
                        </div>
                        <div style="float: left; height: 39px; line-height: 39px; font-size: 20px; margin-left: 10px; margin-right: 20px;">营盘
                        </div>
                        <div align="center" style="float: left; height: 39px; width: 39px;">
                            <input id="rd203" name="rd" type="radio" value="宜宾"/>
                            <label for="rd203"></label>
                        </div>
                        <div style="float: left; height: 39px; line-height: 39px; font-size: 20px; margin-left: 10px;">宜宾
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2">商品图片:</label>
                    <div class="col-sm-10">
                        <a href="javascript:" class="file"><input name="sfzfj[]" type="file" size="40" id="describeimage1" onchange="viewmypic2(showimg1,this.form.describeimage1,close1); " /></a>&nbsp;&nbsp;&nbsp;
                        <a href="javascript:" class="file"><input name="sfzfj[]" type="file" size="40" id="describeimage2" onchange="viewmypic2(showimg2,this.form.describeimage2,close2); " /></a>&nbsp;&nbsp;&nbsp;
                        <a href="javascript:" class="file"><input name="sfzfj[]" type="file" size="40" id="describeimage3" onchange="viewmypic2(showimg3,this.form.describeimage3,close3); " /></a>&nbsp;&nbsp;&nbsp;
                        <a href="javascript:" class="file"><input name="sfzfj[]" type="file" size="40" id="describeimage4" onchange="viewmypic2(showimg4,this.form.describeimage4,close4); " /></a>&nbsp;&nbsp;&nbsp;
                        <a href="javascript:" class="file"><input name="sfzfj[]" type="file" size="40" id="describeimage5" onchange="viewmypic2(showimg5,this.form.describeimage5,close5); " /></a><br>
                      <!--  <input  type="file" class="file" id="describeimage"/>-->
                        <table>
                            <tr>
                        <td width="100px" height="100px" ><div>
                         <img id="close1" src="images/close.png" style="max-height:10px; max-width:10px; height: auto; width:auto; display:none; float:right; position:fixed; z-index:999">
                            <img name="showimg1" id="showimg1" src="" style="display:none; width: 100px"  onchange="close1()"/></div>  </td>
                        <td width="50px" height="50px"> <div>
                          <img id="close2" src="images/close.png" style="max-height:10px; max-width:10px; height: auto; width:auto; display:none; float:right; position:fixed; z-index:999">
                            <img name="showimg2" id="showimg2" src="" style="display:none; width: 100px"  onchange="close2()"/></div>  </td>
                        <td width="50px" height="50px"><div>
                          <img id="close3" src="images/close.png" style="max-height:10px; max-width:10px; height: auto; width:auto; display:none; float:right; position:fixed; z-index:999">
                            <img name="showimg3" id="showimg3" src="" style="display:none; width: 100px"  onchange="close3()"/></div>  </td>
                        <td width="50px" height="50px"><div>
                           <img id="close4" src="images/close.png" style="max-height:10px; max-width:10px; height: auto; width:auto; display:none; float:right; position:fixed; z-index:999">
                           <img name="showimg4" id="showimg4" src="" style="display:none; width: 100px"  onchange="close4()"/></div>  </td>
                        <td width="50px" height="50px"><div>
                           <img id="close5" src="images/close.png" style="max-height:10px; max-width:10px; height: auto; width:auto; display:none; float:right; position:fixed; z-index:999">
                            <img name="showimg5" id="showimg5" src="" style="display:none; width: 100px"  onchange="close5()"/></div>  </td><br>
                            </tr></table> </div>
                </div>
                <br> <br>
                <button class="btn btn-primary  col-sm-2 col-md-offset-2"  id="publish" style="background-color: #fe5214;">发布</button>
                <!--<input type="reset" class="btn btn-danger col-sm-2 "  value="重置">-->
            </form>
    </div>
    </div>
</div>
<script type="text/javascript">
    $("#describe").bind("input propertychange",function(){ //添加监听input值的改变事件
        var tvalnum = $("#describe").val().length;  //统计input输入字段的长度
        $("#xianshitishi").remove();
        //如果大于50个字直接进行字符串截取
        if(tvalnum>=50){
            var tval = $(this).val();
            tval = tval.substring(0,50);
            $(this).val(tval);
            $("#xianshitishi").remove();
            $("#maxlength").append("<font color='red' id='xianshitishi'>最大限制50个字符</font>")
        }
    })
    $("#price").bind("input propertychange",function(){ //添加监听input值的改变事件
        var pricetishi= $("#price").val();  //统计input输入字段的长度
        $("#pricetishi2").remove();
        if(pricetishi>=5000){
            $("#price").val("");
            $("#pricetishi2").remove();
            $("#pricetishi").append("<font color='red' id='pricetishi2'>太贵重了!建议您小于5000!</font>")
        }
    })
    $("#shangpingname").bind("input propertychange",function(){ //添加监听input值的改变事件
        var shangpingmingchen= $("#shangpingname").val().length;  //统计input输入字段的长度
        $("#shangpingtishi1").remove();
        //如果大于8个字直接进行字符串截取
        if(shangpingmingchen>=20){
            var tval = $(this).val();
            tval = tval.substring(0,20);
            $(this).val(tval);
            $("#shangpingtishi1").remove();
            $("#shangpingtishi").append("<font color='red' id='shangpingtishi1'>商品名称最大字数为20</font>")
        }
    })

    //$("#describeimage1").animate()
    $("#close1").click(function () {
        close1.style.display="none";
        showimg1.src="";
    });
    $("#close2").click(function () {
        close2.style.display="none";
        showimg2.src="";
    });
    $("#close3").click(function () {
        close3.style.display="none";
        showimg3.src="";
    });
    $("#close4").click(function () {
        close4.style.display="none";
        showimg4.src="";
    });
    $("#close5").click(function () {
        close5.style.display="none";
        showimg5.src="";
    });
    $("#publish").click(function () {
        if($("#shangpingname").val()=="" || $("#price").val()=="" || $("#describe").val()==""){
            alert("不能为空喔！");
            alert($("#shangpingname").val());
            alert($("#price").val());
            alert($("#describe").val());
        }else {
            var url = "/user?op=publish";
            var data = new FormData($("#form"));
            var image_file = document.getElementById("describeimage1");
            var fileobj1 = image_file.files[0];
            var fileobj2 = $("#describeimage2").files[0];
            var fileobj3 = $("#describeimage3").files[0];
            var fileobj4 = $("#describeimage4").files[0];
            var fileobj5 = $("#describeimage5").files[0];
            data.append("shangpingname", $("#shangpingname").val());
            data.append("price", $("#price").val());
            data.append("describe", $("#describe").val());
            data.append("address", $("input:checked"));
            data.append("class-icon1", fileobj1);
            data.append("class-icon2", fileobj2);
            data.append("class-icon3", fileobj3);
            data.append("class-icon4", fileobj4);
            data.append("class-icon5", fileobj5);
            $.ajax({
                url: url,
                type: 'post',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    alert("发布成功！");
                },
            })
        }
    })



</script>
</body>

</html>