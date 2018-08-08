<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>考点开考专业管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css"/>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
    <script src="${pageContext.request.contextPath}/js/pager.js">  </script>  
    <script src="main.js"></script>
    <style type="text/css">
        table{
            align-content: center;
            color: bisque;
        }
        tr{
            /* background: rgb(167, 160, 167); */
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color: aliceblue;
        }


ol,ul{list-style:none;list-style-position:outside;}
table{border-collapse:collapse;border-spacing:0;}
/* address,caption,cite,code,dfn,em,i,strong,th,var,optgroup{font-style:normal;font-weight:normal;} */
body,button,input,select,textarea{font:12px/1.5 微软雅黑,arial,sans-serif;}
/* button,input,select,textarea,h1,h2,h3,h4,h5,h6{font-size:100%;} */
body{color:#333;min-width: 1120px;}
a{color:#333;text-decoration:none;}
a:hover{color:#f60;text-decoration:underline;}
a:hover em,a:hover i,a:hover span{cursor:pointer;}
.cf:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
.cf{*zoom:1;}



/* guide */
.guide{width:60px;margin-left:570px;position:fixed;left:50%;bottom:134px;_position:absolute;_top:expression(documentElement.scrollTop+documentElement.clientHeight - this.clientHeight - 134+'px');display:block;}
.guide a{display:block;width:60px;height:50px;background:url(images/sprite_v2.png) no-repeat;margin-top:10px;text-decoration:none;font:16px/50px "Microsoft YaHei";text-align:center;color:#fff;border-radius:2px;}
.guide a span{display:none;text-align:center;}
.guide a:hover{text-decoration:none;background-color:#39F;color:#fff;}
.guide a:hover span{display:block;width:60px;background:#39F}
.guide .btn btn-danger radius{background-position:-84px -236px;}
.guide .btn-primary radius{background-position:-146px -236px;}

.guide .top{background-position:-144px -134px;}

        
        </style>
        
        <script type="text/javascript">
        function datadel(){
        	var checkedItems = $("input[name='test']:checked");
			var arrayData = new Array();
			for(var i = 0; i < checkedItems.length; i++)
				arrayData[i] = checkedItems.eq(i).val();
        	$.ajax({
        		type:"POST",
        		url:"${pageContext.request.contextPath}/admin/kaodiankaikaozhuanye",
        		data:{"type":1,
        			  "idset":JSON.stringify(arrayData),
        			  },
        		async:true,
        		success:function(){
        			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodiankaikaozhuanye?type=0');
        		}
        	});
        }
        </script>
</head>
<body>

        <div class="guide">
                <div class="guide-wrap">
                <ul>
                       <li type="button"> <a  href="javascript:;" onclick="datadel()" class="btn btn-danger radius" title="批量删除"><i class="iconfont icon-shanchu"></i> <span>删除</span></a> <br></li>
                     
                        <li><a href="javascript:window.scrollTo(0,0)" class="top" title="回顶部"><i class="iconfont icon-shouye"></i><span>回顶部</span></a></li>
               </ul> 
               </div>
        </div>

        <table align='center' class="table table-hover table-striped" cellspacing="0" cellpadding="15" border="1">
                <caption><h1>考 点 开 考 专 业 管 理</h1></caption>
                
                <thead>
                <tr>
                    <th width="25"><input type="checkbox" name="test" value=""></th>
                    <th>考点名称</th>
                    <th>考点地址</th>
                    <th>开考专业</th>
                    <th>专业层次</th>
                    <th>专业类型</th>
                
                    <!-- <th></th>
                    <th></th>
                    <th></th> -->
                </tr>
                </thead>
                
                
                <tbody>
                <c:forEach var="preparedMajorInTestPlace" items="${preparedmajorintestplaces }">
                    <tr>
                        <th width="25"><input type="checkbox" name="test" value="${preparedMajorInTestPlace.ID }"></th>
                        <th>${preparedMajorInTestPlace.test_name }</th>
                        <th>${preparedMajorInTestPlace.test_addr }</th>
                        <th>${preparedMajorInTestPlace.major_name }</th>
                        <th>${preparedMajorInTestPlace.prof_level }</th>
                        <th>${preparedMajorInTestPlace.prof_type }</th>
                    </tr>
                </c:forEach>
                </tbody>
        </table>

        <div>
            <ul class="pagination" id="page2">
            </ul>
            <div class="pageJump">
                <span>跳转到</span>
                <input type="text"/>
                <span>页</span>
                <button type="button" class="button">确定</button>
            </div>
    
    
    
        <script>
                Page({
                        num:20,					//页码数
                        startnum:5,				//指定页码
                        elem:$('#page2'),		//指定的元素
                        callback:function(n){	//回调函数
                            console.log(n);
                        }
                    });
         </script>
         
         <script>
            $(function(){  
                $("li[type='button']").click(function() {
                    $("input[name='test']:checked").each(function() { // 遍历选中的checkbox
                    $(this).parents("tr").remove();  // 获取checkbox所在行的顺序
                      
                    });
                });
            });
            </script>
</body>
</html>