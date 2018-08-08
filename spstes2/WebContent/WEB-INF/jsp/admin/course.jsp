<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>课程</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/tubiao/iconfont.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pager.css" />
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/pager.js">  </script>
<script src="main.js"></script>
<style type="text/css">
a {
	color: rgb(228, 235, 129);
}

a:hover {
	color: brown;
}

.biankuang {
	font-family: 20px;
	padding: 10px 50px;
	/* 使链接下面那根横线消失 */
	text-decoration: none;
	margin: 20px 20px 20px 20px;
}

div {
	margin: 50px 20px 60px 20px;
}

center {
	color: bisque;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
/* table{
            align-content: center;
            color: bisque;
            padding: 30px;
        } */
tr {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	color: aliceblue;
}

ol, ul {
	list-style: none;
	list-style-position: outside;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}
/* address,caption,cite,code,dfn,em,i,strong,th,var,optgroup{font-style:normal;font-weight:normal;} */
body, button, input, select, textarea {
	font: 12px/1.5 微软雅黑, arial, sans-serif;
}
/* button,input,select,textarea,h1,h2,h3,h4,h5,h6{font-size:100%;} */
body {
	color: #333;
	min-width: 1120px;
}

a {
	color: rgb(228, 235, 129);;
	text-decoration: none;
}

a:hover {
	color: brown;;
	text-decoration: underline;
}

a:hover em, a:hover i, a:hover span {
	cursor: pointer;
}

.cf:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

.cf {
	*zoom: 1;
}

/* guide */
.guide {
	width: 60px;
	margin-left: 570px;
	position: fixed;
	left: 50%;
	bottom: 134px;
	_position: absolute;
	_top: expression(documentElement.scrollTop + documentElement.clientHeight -  
		 this.clientHeight - 134 + 'px');
	display: block;
}

.guide a {
	display: block;
	width: 60px;
	height: 50px;
	background: url(images/sprite_v2.png) no-repeat;
	margin-top: 10px;
	text-decoration: none;
	font: 16px/50px "Microsoft YaHei";
	text-align: center;
	color: #fff;
	border-radius: 2px;
}

.guide a span {
	display: none;
	text-align: center;
}

.guide a:hover {
	text-decoration: none;
	background-color: #39F;
	color: #fff;
}

.guide a:hover span {
	display: block;
	width: 60px;
	background: #39F
}

.guide .qiyong {
	background-position: -84px -236px;
}

.guide .tingyong {
	background-position: -146px -236px;
}

.guide .change_xuefen {
	background-position: -83px -134px;
}

.guide .top {
	background-position: -145px -185px;
}

h4{
    margin-left: 20px;
}
p{
    text-align: center;
}
.add{

    display: none;
    width: 100%;
    height: 100%;
    position: fixed;
    left: 0;
    top: 0;
    z-index: 1000;
    background-color: rgba(0,0,0,0.5);
}
.modal{
    display: none;
    width: 100%;
    height: 100%;
    position: fixed;
    left: 0;
    top: 0;
    z-index: 1000;
    background-color: rgba(0,0,0,0.5);
}
.modal-content{
    display: flex;
    flex-flow: column nowrap;
    justify-content: space-between;
    width: 50%;
    max-width: 700px;
    height: 40%;
    max-height: 500px;
    margin: 100px auto;
    border-radius:10px;
    background-color:#fff;
    -webkit-animation: zoom 0.6s;
    animation: zoom 0.6s;
    resize: both;
    overflow: auto;
}
@-webkit-keyframes zoom{
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
@keyframes zoom{
    from {transform: scale(0)}
    to {transform: scale(1)}
}
.modal-header{
    box-sizing:border-box;
    border-bottom:1px solid #ccc;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.close{
    color: #b7b7b7;
    font-size: 30px;
    font-weight: bold;
    margin-right: 20px;
    transition: all 0.3s;
}
.close:hover, .close:focus{
    color: #95b4ed;
    text-decoration: none;
    cursor: pointer;
}
.close1{
    color: #b7b7b7;
    font-size: 30px;
    font-weight: bold;
    margin-right: 20px;
    transition: all 0.3s;
}
.clos1e:hover, .close1:focus{
    color: #95b4ed;
    text-decoration: none;
    cursor: pointer;
}
.modal-body{
    padding: 10px;
    font-size: 16px;
    box-sizing:border-box;
}
.modal-footer{
    box-sizing:border-box;
    border-top:1px solid #ccc;
    display: flex;
    padding: 15px;
    justify-content: flex-end;
    align-items: center;
}
 .modal-footer button{
    width: 60px;
    height: 35px;
    padding: 5px;
    box-sizing: border-box;
    margin-right: 10px;
    font-size: 16px;
    color: white;
    border-radius: 5px;
    background:black;
  
} 
 .modal-footer button:hover, .modal-footer button:focus{
    background-color: #95b4ed;
    cursor: pointer; 
}
@media only screen and (max-width: 700px){
    .modal-content {
        width: 80%;
    }
}
</style>

<script type="text/javascript">
            function chakanquanguokecheng(){
            	parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=1&searchtype=是');
            }
            function chakansichuanshengsidingyikecheng(){
            	parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=1&searchtype=否');
            }
            function add_course(){
            	var course_name=$("#course_name").val();
            	var course_Ename=$("#course_Ename").val();
            	var course_credit=$("#course_credit").val();
            	var course_chara=$("#course_chara").val();
            	var exa_method=$("#exa_method").val();
            	var offer_method=$("#offer_method").val();
            	var bookID=$("#bookID").val();
            	var cap_course=$("#cap_course").val();
            	var used=$("#used").val();
            	$.ajax({
            		type:"POST",
            		url:"${pageContext.request.contextPath}/admin/kecheng",
            		data:{"type":2,
            		"course_name":course_name,
            		"course_Ename":course_Ename,
            		"course_credit":course_credit,
            		"course_chara":course_chara,
            		"exa_method":exa_method,
            		"offer_method":cap_course,
            		"bookID":bookID,
            		"cap_course":cap_course,
            		"used":used},
            		async:true,
            		success:function(){
            			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=0');
            		}
            	});
            }
            function member_qiyong(){
            	var checkedItems = $("input[name='test']:checked");
            	var arrayData = new Array();
            	for(var i = 0; i < checkedItems.length; i++)
            		arrayData[i] = checkedItems.eq(i).val();
            	$.ajax({
            		type:"POST",
            		url:"${pageContext.request.contextPath}/admin/kecheng",
            		data:{"type":3,
            			"freeze":"是",
            			"idset":JSON.stringify(arrayData)
            			},
            		async:true,
            		success:function(){
            			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=0');
            		}
            	});
            }
            function member_tingyong() {
            	var checkedItems = $("input[name='test']:checked");
            	var arrayData = new Array();
            	for(var i = 0; i < checkedItems.length; i++)
            		arrayData[i] = checkedItems.eq(i).val();
            	$.ajax({
            		type:"POST",
            		url:"${pageContext.request.contextPath}/admin/kecheng",
            		data:{"type":3,
            			"freeze":"否",
            			"idset":JSON.stringify(arrayData)
            			},
            		async:true,
            		success:function(){
            			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=0');
            		}
            	});
			}
            function change_xuefen(){
            	var firstRowID = "#credit" + $("input[type=checkbox]:checked").val();
				var credit = $(firstRowID).val();
            	console.log(credit);
            	$.ajax({
            		type:"POST",
            		url:"${pageContext.request.contextPath}/admin/kecheng",
            		data:{"type":4,
            			"credit":credit,
            			"id":$("input[name='test']:checked").val()},
            		async:true,
            		success:function(){
            			alert("学分修改成功");
            			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=0');
            		}
            	});
            }
        </script>
</head>
<body>
	<p>
	<h1>
		<center>课 程 管 理</center>
	</h1>
	</p>
	<div class="guide">
		<div class="guide-wrap">
		<ul>
		 <li type="button"  class="bt" id="addModal"><a href="#"   title="添加用户" >
            <i class="iconfont icon-zengjia"></i> <span>添加</span></a> <br></li>
            	
		
			<li><a style="text-decoration: none"
				 href="javascript:;" title="启用"
				class="qiyong"><i class="iconfont icon-qiyong1"></i><span><button onClick="member_qiyong()">启用</button></span></a></li>
			<br> 
			<li><a style="text-decoration: none"
				 href="javascript:;" title="停用"
				class="tingyong"><i class="iconfont icon-tingyong"></i><span><button onClick="member_tingyong()">停用</button></span></a><br></li>


			<li><a style="text-decoration: none" class="change-xuefen"
				href="javascript:;" title="设置学分"><i class="iconfont icon-xuefen"></i><span><button onClick="change_xuefen()">学分</button></span></a><br></li>
			<li> <a href="javascript:window.scrollTo(0,0)" class="top"
				title="回顶部"><i class="iconfont icon-shouye"></i><span>回顶部</span></a></li>
				
			<div id="add" class="add">
			<div class="modal-content">
			<header class="modal-header">
			<h4>添加</h4>
			<span class="close1">×</span>
			</header>
			<div class="modal-body">
			<label>课程名称：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="course_name" name="" border-radius: 3px;><br>
		    <label>课程英文名称：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="course_Ename" name="" border-radius: 3px;><br>
			<label>课程学分：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="course_credit" name="" border-radius: 3px;><br>
			<label>课程性质：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="course_chara" name="" border-radius: 3px;><br>
			<label>考试形式：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="exa_method" name="" border-radius: 3px;><br>
			<label>上课形式：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="offer_method" name="" border-radius: 3px;><br>
			<label>省专业：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="cap_course" name="" border-radius: 3px;><br>
			<label>启用：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="used" name="" border-radius: 3px;><br>
			<label>教材编号：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="bookID" name="" border-radius: 3px;><br>
			
		</div>
		<footer class="modal-footer">
			<button id="sure1" onclick="add_course()">确定</button>
			<button id="cancel1">取消</button>
		</footer>
	</div>        
	</div>
			</ul>	
		</div>
	</div>
	<div>
		<center>
			<a class="biankuang" href='#' class='button pill'
				style='font-size: 18px;'><i class="iconfont icon-kecheng-"></i>
				<button onclick="chakanquanguokecheng()">查看全国课程</button> </a> <a
				class="biankuang" href='#' class='button pill'
				style='font-size: 18px;'><i class="iconfont icon-kecheng-"></i>
				<button onclick="chakansichuanshengsidingyikecheng()">查看四川自定义课程</button>
			</a> 
		</center>
	</div>
	<ul>
		<table class="table table-hover table-striped" align='center'
			cellspacing="0" cellpadding="20" border="1">
			<thead>
				<tr>
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th>课程代码</th>
					<th>课程名称</th>
					<th>课程学分</th>
					<th>课程性质</th>
					<th>省专业</th>
					<th>启用</th>
					<th>教材名</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="course" items="${courses }">
					<tr>
						<th width="25"><input type="checkbox" name="test" value="${course.courseID}"></th>
						<td>${course.courseID}</td>
						<td>${course.course_name}</td>
						<td><input type="text" style="width: 50px; height: 20px; border-radius: 3px; border: 2px solid #CCC"
						id="credit${course.courseID}" value= ${course.course_credit}></td>
						<td>${course.course_chara}</td>
						<td>${course.cap_course}</td>
						<td>${course['used']}</td>
						<td>${course.book_name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</ul>


	<div>
		<ul class="pagination" id="page2">
		</ul>
		<div class="pageJump">
			<span>跳转到</span> <input type="text" /> <span>页</span>
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
    var bt = document.getElementById('addModal');
    var close1 = document.getElementsByClassName('close1')[0];
    var cancel1 = document.getElementById('cancel1');
    var add = document.getElementById('add');
    bt.addEventListener('click', function(){
        add.style.display = "block";
    });
    close1.addEventListener('click', function(){
        add.style.display = "none";
    });
    cancel1.addEventListener('click', function(){
       add.style.display = "none";
       
    });</script>
     
</body>
</html>