<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html> <!--PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="jquery-3.3.1.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="jiaoyi.ico" type="image/x-icon">
    <link rel="shortcut icon" href="jiaoyi.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="body.css"/>
    <!-- 引入 Bootstrap -->
    <link rel="stylesheet" href="bootstrap-4.1.3/dist/css/bootstrap.css" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/backstage.css">
    <link rel="stylesheet" type="text/css" href="css/bootstarp.min.css">
    <!--<script src="bootstrap-4.1.3/dist/js/bootstrap.js"></script>-->
    <title>无标题文档</title>
    <style>
        html,body{
            height: 100%;
            width: 100%;
        }
        div{
            overflow:hidden;

        }
        .dong{
            background-color:#CCC;
            height: 400px;
            width:200px;
            display:block;
            float:left;
            padding-left:20px;
            margin-top:2% ;
            margin-left:2%;


        }
    </style>

</head>

<body>
<header class="wow fadeInRight">
    <img src="images/two.jpg" class="img-circle logo" alt="logo" />
    <div class="desc">校园二手交易系统</div>
    <div style="position: absolute; bottom: 0px; right:30%;">
        <form class="form-search"  enctype="multipart/form-data"   id="form-data" style="display:block; padding-left:30%; background-color:#FF0;  " action="/user?op=image" method="post">
            <input class="input-medium search-query" type="text"  id="querytext"/><button type="button" class="btn btn-primary" id="query"  >查找</button>
           <!-- <input type="file" id="uploadFile" />
            <button type="button" onclick="sc()">提交</button>-->
        </form>
    </div>
</header>
<div></div>
<script type="text/javascript">
    $("#query").click(function initDate(){
        var url="/user?op=queryshangping";
        //var param={"op":"liuYan"};//ajax传递参数必须是json格式
        $.ajax({
            url:url,
            type:'post',
            data:{"商品名":$("#querytext").val() },
            success:function (data) {
               //alert(data);
                var query =JSON.parse(data);
                //alert(query);
                $(".dong").remove();  //从DOM中删除所有匹配的元素
                for (var i=0;i<query.length;i++){
                    var c="<div style='background-color:red; margin-top:20px; margin-left:10px; margin-right:10px;margin-left:10px; '><img src='1.jpg' style=' max-height:100%; max-width:100%; height: anto; width:auto;'></img></div>";
                    var d="<div style='height:80px; margin-left:10px; background-color:red; '>"+query[i].describe+"</div>";
                        var $div ="<div class='dong'>"+c+d+"</div>";
                        $("#show").append($div);
                        $("#show").trigger("create");  //重点：这名的意思是重新加载所在标签的样式。非常有用的一句话，不加这一句你动态append的标签将丢失Css样式
                }
            }
        });
    });
    //$("#show div").css("background-color","#FFF");
 //$("#image1")
    function getFileUrl(sourceId) {
        var url;
        url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));

        return url;
    }
    function preImg(sourceId, targetId) {
        var url = getFileUrl(sourceId);
        var imgPre = document.getElementById(targetId);
        imgPre.src = url;}
        /*
    function sc(){
        var data = new FormData($("#form-data"));
        var image_file=document.getElementById("uploadFile");
        var fileobj=image_file.files[0];
        data.append("class-icon",fileobj);
        data.append("a",$("#querytext").val());
        if("undefined" != typeof(data) && data != null && data != ""){
            $.ajax({
                url: "/user?op=image",
                type: 'post',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success:function(data){
                console.log(data);
                alert("发送成功");
            },
            });
            return false;
    }}*/

</script>
</body>
</html>
