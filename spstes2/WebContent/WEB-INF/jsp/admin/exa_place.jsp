<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>考点管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pager.css" />
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/pager.js">
	
</script>
<script src="main.js"></script>
<style type="text/css">
h1 {
	align-content: center;
	color: bisque;
	font-family: Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑',
		Arial, sans-serif;
}

tr {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	color: aliceblue;
}

.r {
	color: rgb(228, 235, 129);
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
	color: #333;
	text-decoration: none;
}

a:hover {
	color: #f60;
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

.guide .btn btn-danger radius {
	background-position: -84px -236px;
}

.guide .btn btn-primary radius {
	background-position: -146px -236px;
}

.guide .qiyong {
	background-position: -83px -185px;
}

.guide .tingyong {
	background-position: -145px -185px;
}

.guide .top {
	background-position: -82px -134px;
}

h4{
    margin-left: 20px;
}
p{
    text-align: center;
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
function member_qiyong(){
	var checkedItems = $("input[name='test']:checked");
	var arrayData = new Array();
	for(var i = 0; i < checkedItems.length; i++)
		arrayData[i] = checkedItems.eq(i).val();
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath}/admin/kaodian",
		data:{"type":1,
			"freeze":"是",
			"idset":JSON.stringify(arrayData)
			},
		async:true,
		success:function(){
			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodian?type=0');
		}
	});
}
function member_tingyong(){
	var checkedItems = $("input[name='test']:checked");
	var arrayData = new Array();
	for(var i = 0; i < checkedItems.length; i++)
		arrayData[i] = checkedItems.eq(i).val();
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath}/admin/kaodian",
		data:{"type":1,
			"freeze":"否",
			"idset":JSON.stringify(arrayData)
			},
		async:true,
		success:function(){
			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodian?type=0');
		}
	});
}
function add_testplace(){
	var test_name=$("#test_name").val();
	var test_addr=$("#test_addr").val();
	var test_num=$("#test_num").val();
	var linkman_name=$("#linkman_name").val();
	var linkman_tel=$("#linkman_tel").val();
	var test_use=$("#test_use").val();
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath}/admin/kaodian",
		data:{"type":2,
			"test_name":test_name,
			"test_addr":test_addr,
			"test_num":test_num,
			"linkman_name":linkman_name,
			"linkman_tel":linkman_tel,
			"test_use":test_use,
			},
		async:true,
		success:function(){
			parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodian?type=0');
		}
	});
}
</script>
</head>
<body>
	<h1 align="center">考 点 管 理</h1>
	<div class="guide">
		<div class="guide-wrap">
			<ul>

				<li type="button"  class="bt" id="addModal"><a href="#"   title="添加用户" >
            <i class="iconfont icon-zengjia"></i> <span>添加</span></a> <br></li>
            	

				<li><a style="text-decoration: none"
					onClick="member_qiyong()" href="javascript:;"
					title="启用" class="qiyong"><i class="iconfont icon-qiyong1"></i><span>启用</span></a>
					<br></li>
				<li><a style="text-decoration: none"
					onClick="member_tingyong()" href="javascript:;" title="停用"
					class="tingyong"><i class="iconfont icon-tingyong"></i><span>停用</span></a><br></li>
				<li><a href="javascript:window.scrollTo(0,0)" class="top"
					title="回顶部"><i class="iconfont icon-shouye"></i><span>回顶部</span></a></li>
					
					
		<div id="add" class="modal">
<div class="modal-content">
		<header class="modal-header">
			<h4>添加</h4>
			<span class="close">×</span>
		</header>
		<div class="modal-body">
		    <label>考点名称：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="test_name" name="" border-radius: 3px;><br>
			<label>考点地址：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="test_addr" name="" border-radius: 3px;><br>
			<label>考点数量：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="test_num" name="" border-radius: 3px;><br>
			<label>考场联系人姓名：：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="linkman_name" name="" border-radius: 3px;><br>
			<label>考场联系人电话：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="linkman_tel" name="" border-radius: 3px;><br>
			<label>启用：</label>
			<input type="Text" class="input-text" style="width:250px" placeholder="" id="test_use" name="" border-radius: 3px;><br>
		</div>
		<footer class="modal-footer">
			<button id="sure" onclick="add_testplace()">确定</button>
			<button id="cancel">取消</button>
		</footer>
	</div>
	</div>        

					
			</ul>
		</div>
	</div>





	<table class="table table-hover table-striped" align='center'
		cellspacing="0" cellpadding="15" border="1">

		<thead>
			<tr>
				<th></th>
				<th>开考文号</th>
				<th>考点名称</th>
				<th>考点地址</th>
				<th>考场数量</th>
				<th>考场联系人姓名</th>
				<th>考场联系人电话</th>
				<th>启用</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="testplace" items="${testplaces }">
				<tr>
					<th width="25"><input type="checkbox" name="test" value="${testplace.exaID }"></th>
					<th>${testplace.exaID }</th>
					<th>${testplace.test_name }</th>
					<th>${testplace.test_addr }</th>
					<th>${testplace.test_num }</th>
					<th>${testplace.linkman_name }</th>
					<th>${testplace.linkman_tel }</th>
					<th>${testplace.test_use }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>



	<div>
		<ul class="pagination" id="page2">
		</ul>
		<div class="pageJump">
			<span>跳转到</span> <input type="text" /> <span>页</span>
			<button type="button" class="button">确定</button>
		</div>



		<script>
			Page({
				num : 20, //页码数
				startnum : 1, //指定页码
				elem : $('#page2'), //指定的元素
				callback : function(n) { //回调函数
					console.log(n);
				}
			});
		</script>

<!-- 		<script>
			$(function() {
				$("li[type='button']").click(function() {
					$("input[name='test']:checked").each(function() { // 遍历选中的checkbox
						$(this).parents("tr").remove(); // 获取checkbox所在行的顺序

					});
				});
			});
		</script> -->
			<script>
    var btn = document.getElementById('addModal');
    var close = document.getElementsByClassName('close')[0];
    var cancel = document.getElementById('cancel');
    var modal = document.getElementById('add');
    btn.addEventListener('click', function(){
        modal.style.display = "block";
    });
    close.addEventListener('click', function(){
        modal.style.display = "none";
    });
    cancel.addEventListener('click', function(){
        modal.style.display = "none";
       
    });
    </script>
</body>
</html>