<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>score</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
    <link rel="stylesheet" type="text/css" href="./tubiao/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/button.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reveal.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css"/>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
    <script src="${pageContext.request.contextPath}/js/pager.js">  </script>
    <script src="http://www.jq22.com/jquery/jquery-1.6.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.reveal.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="http://www.jq22.com/js/jq.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#btn").click(function(){
                $("#choiceWindow").slideDown(300);
              /*  $("#backGround").show();*/

        });

        $("#x").click(function(){
            $("#choiceWindow").slideUp(300);
           /* $("#backGround").hide();*/
        })

        });
    </script>
    <style type="text/css">
    body { font-family: "HelveticaNeue","Helvetica-Neue", "Helvetica", "Arial", sans-serif; }
        .big-link { display:block; margin-top: 100px; text-align: center; font-size: 70px; color: #06f; }
    a{
        color: rgb(228, 235, 129);
    }
    a:hover{
            color:brown;
        }
     .biankuang{
        font-family: 20px;
        
        /* 宽度=1的细细的白色边框 */
        /* border: 1px solid #fff; */
        /* 边框的圆角数值为3px(一般为2-4px) */
        /* border-radius: 3px; */
        padding: 10px 50px;
        /* 使链接下面那根横线消失 */
        text-decoration: none; 
        margin:20px 20px 20px 20px;
   
    }
    div{
        margin: 50px 20px 60px 20px;
    }
    center{
        color: bisque;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
    /* table{
            align-content: center;
            color: bisque;
            padding: 30px;
        } */
        tr{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: aliceblue;
        }
        </style>
</head>
<body>
    <br><br>
    <p><h1><center>考 生 成 绩 管 理</center></h1></p>

    <div id="dg" style="z-index: 9999; position: fixed ! important; right: 300px; top: -50px;">
            <table width=""100% style="position: absolute; width: 260px; right: 300px; top: -50px;">
                <br><br><br><br>
                <div class="page">
                    <section class="demo">
                        <nav class="nav">
                            <ul>
                                <li ><a href="#" class="big-link" data-reveal-id="myModal"><span>修改</span></a></li>	
                                    <div id="myModal" class="reveal-modal">
                                            <label>姓名：</label>
                                            <input type="text" class="input-text" style="width:250px" placeholder="" id="" name="" border-radius: 3px;>
                                            <br>
                                            <label>课程：</label>
                                            <input type="text" class="input-text" style="width:250px" placeholder="" id="" name="" border-radius: 3px;>
                                            <br>
                                            <label>成绩：</label>
                                            <input type="text" class="input-text" style="width:250px" placeholder="" id="" name="" border-radius: 3px;>
                                            <br>
                                            <br>
                                            <br>
                                            <button type="submit" class="btn btn-success radius" id="" name="" border-radius: 3px;><i class="iconfont icon-sousuo"></i> 修改</button>
                                        <a class="close-reveal-modal">&#215;</a>
                                    </div>
                            </ul>
                        </nav>
                    </section>
                </div>
            </table>
        </div>
        <div style="text-align:center;clear:both;margin-top:50px">
                <script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
                <script src="/follow.js" type="text/javascript"></script>
        </div>
   
    <ul><center>
            <table   class="table table-hover table-striped" align='center' cellspacing="0" cellpadding="20" border="1">
                <thead>
                <tr>
                        <th></th>
                        <th>姓名</th>
                        <th>课程</th>
                        <th>成绩</th>        
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th>json</th>
                        <th>数据结构</th>
                        <th>89</th>                                          
                    </tr>
                        <tr>
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th>张三</th>
                        <th>数据结构</th>
                        <th>24</th>                
                        </tr>
                        <tr>
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th>李四</th>
                        <th>概率论</th>
                        <th>100</th>                   
                        </tr>
                        <tr>
            </tbody>
            </table>
        </center>
    </ul>
    
    <div>
            <ul class="pagination" id="page1">
            </ul>
            <div class="pageJump">
                <span>跳转到</span>
                <input type="text"/>
                <span>页</span>
                <button type="button" class="button">确定</button>
            </div>
    </div>
            <script>
                Page({
                    num:2,					//页码数
                    startnum:1,				//指定页码
                    elem:$('#page1'),		//指定的元素
                    callback:function(n){	//回调函数
                        console.log(n);
                    }
                });
            </script>
</body>
</html>