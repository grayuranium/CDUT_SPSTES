<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>毕业条件管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/tubiao/2/iconfont.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pager.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reveal.css" />
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath}/js/pager.js">
	
</script>
<script src="${pageContext.request.contextPath}/js/jquery.reveal.js">
	
</script>
<script src="${pageContext.request.contextPath}/js/jquery-1.1.1.min..js">
	
</script>
<script src="main.js"></script>
<style type="text/css">
.first {
	margin: 3% 10%;
}

/* a{
        text-decoration: none;
        color:rgb(228, 235, 129);
    }
    a:hover{
            color:brown;
        } */
/* .r{
        color:rgb(228, 235, 129);
    } */
.graduate {
	margin: 5%;
	color: bisque;
	font-family: Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑',
		Arial, sans-serif;
}

tr {
	background: rgb(167, 160, 167);
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	color: rgb(10, 1, 1);
}

/* body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td{margin:0;padding:0}
fieldset,img{border:0;} */
/* :focus{outline:0;} */
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

.guide .btn-primary radius {
	background-position: -146px -236px;
}

.guide .dabian {
	background-position: -83px -185px;
}

.guide .no_dabian {
	background-position: -145px -185px;
}

.guide .change_xuefen {
	background-position: -82px -134px;
}

.guide .top {
	background-position: -144px -134px;
}
</style>

<script type="text/javascript">
	function dabian() {
		var checkedItems = $("input[name='test']:checked");
		var arrayData = new Array();
		for (var i = 0; i < checkedItems.length; i++)
			arrayData[i] = checkedItems.eq(i).val();
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/admin/biyetiaojian",
					data : {
						"type" : 1,
						"dabian" : "是",
						"idset" : JSON.stringify(arrayData)
					},
					async : true,
					success : function() {
						parent
								.$('#myiframe')
								.attr('src',
										'${pageContext.request.contextPath}/admin/biyetiaojian?type=0');
					}
				});
	}
	function member_no_dabian() {
		var checkedItems = $("input[name='test']:checked");
		var arrayData = new Array();
		for (var i = 0; i < checkedItems.length; i++)
			arrayData[i] = checkedItems.eq(i).val();
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/admin/biyetiaojian",
					data : {
						"type" : 1,
						"dabian" : "否",
						"idset" : JSON.stringify(arrayData)
					},
					async : true,
					success : function() {
						parent
								.$('#myiframe')
								.attr('src',
										'${pageContext.request.contextPath}/admin/biyetiaojian?type=0');
					}
				});
	}
	function change_xuefen() {
		var firstRowID = "#credit" + $("input[name='test']:checked").val();
		var credit = $(firstRowID).val();
		console.log($("input[name='test']:checked").val());
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/admin/biyetiaojian",
					data : {
						"type" : 2,
						"credit" : credit,
						"id" : $("input[name='test']:checked").val(),
					},
					async : true,
					success : function() {
						alert('修改学分成功');
						parent.$('#myiframe')
								.attr('src',
										'${pageContext.request.contextPath}/admin/biyetiaojian?type=0');
					}
				});
	}
</script>

</head>


<body>
	<div class="first">
		<h1 class="graduate" align="center">毕 业 条 件 管 理</h1>
		<<!-- input type="text" class="input-text" style="width: 250px"
			placeholder="输入专业名称、专业代码" id="" name=""border-radius: 3px;>
		<button type="submit" class="btn btn-success radius" id="" name=""border-radius: 3px;>
			搜索</button> -->
	</div>



	<div class="guide">
		<div class="guide-wrap">
			<ul>
				<!-- <li type="button"><a href="javascript:;" onclick="datadel()"
					class="btn btn-danger radius" title="批量删除"> <i
						class="iconfont icon-shanchu"></i> <span>删除</span></a> <br></li> -->


				<li><a style="text-decoration: none" class="dabian"
					href="javascript:;" title="答辩"> <i
						class="iconfont icon-qiyong1"></i><span><button
								onClick="dabian()">答辩</button></span></a> <br></li>

				<li><a title="不答辩" href="javascript:;" class="no_dabian"
					style="text-decoration: none"><i class="iconfont icon-tingyong"></i><span><button
								onclick="member_no_dabian()">不答辩</button></span></a><br></li>
				<li><a style="text-decoration: none" class="change-xuefen"
					href="javascript:;" title="设置学分"><i
						class="iconfont icon-xuefen"></i><span><button
								onClick="change_xuefen()">学分</button></span></a> <br></li>
				<li><a href="javascript:window.scrollTo(0,0)" class="top"
					title="回顶部"><i class="iconfont icon-shouye"></i><span>回顶部</span></a></li>


			</ul>
		</div>
	</div>


	<ul class="biye">
		<table class="table table-hover table-striped" align="left"
			cellspacing="0" cellpadding="15" border="1">

			<thead>
				<tr>
					<th></th>
					<th>专业代码</th>
					<th>自定义专业代码</th>
					<th>专业名称</th>
					<th>专业毕业学分</th>
					<th>专业层次</th>
					<th>专业类型</th>
					<th>开考方式</th>
					<th>专业性质</th>
					<th>统考</th>
					<th>主考院校</th>
					<th>专业门类</th>
					<th>答辩</th>
					<th>启用</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="major" items="${majors }">
					<tr>
						<th width="25"><input type="checkbox" name="test"
							value="${major.majorID }"></th>
						<th>${major.majorID }</th>
						<th>${major.customID }</th>
						<th>${major.major_name }</th>
						<th><input type="text"
							style="width: 50px; height: 20px; border-radius: 3px; border: 2px solid #CCC"
							id="credit${major.majorID }" value=${major.major_credit }></th>
						<th>${major.prof_level }</th>
						<th>${major.prof_type }</th>
						<th>${major.exa_type }</th>
						<th>${major.technicality }</th>
						<th>${major.uniform_exa }</th>
						<th>${major.school }</th>
						<th>${major.pro_class }</th>
						<th>${major.anser }</th>
						<th>${major.used }</th>
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
				num : 20, //页码数
				startnum : 5, //指定页码
				elem : $('#page2'), //指定的元素
				callback : function(n) { //回调函数
					console.log(n);
				}
			});
		</script>


		<!-- <script>
			$(function() {
				$("li[type='button']").click(function() {
					$("input[name='test']:checked").each(function() { // 遍历选中的checkbox
						$(this).parents("tr").remove(); // 获取checkbox所在行的顺序

					});
				});
			});
		</script> -->



		</script>
</body>
</html>