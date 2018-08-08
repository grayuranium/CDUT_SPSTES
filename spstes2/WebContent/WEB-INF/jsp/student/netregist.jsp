<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
">
<html>
<head>
<meta charset="utf-8">
<title>网上报名</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--bootstrap核心javascript文件-->
<script
	src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

<style type="text/css">
body {
	background: #9CC;
	background-size: cover
}
</style>

<script type="text/javascript">
	var type1 = 5;
	function typeChange1() {
		var major = document.getElementById("major");
		type1 = major.options[major.selectedIndex].value;
	}
	var type2 = 5;
	function typeChange2() {
		var address = document.getElementById("address");
		type2 = address.options[address.selectedIndex].value;
	}
	function add_user_info(){
		var tex_exaID = $("select[id='tex_exaID'] option:selected").val();
		var exa_majorID = $("select[id='exa_majorID'] option:selected").val();
		var exa_num = $("#exa_num").val();
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/student/enroll",
			data : {
				"welcome":2,
				"tex_exaID":tex_exaID,
				"exa_majorID":exa_majorID,
				"exa_num":exa_num,
			},
			async : true,
			success : function() {
				alert("添加成功");
				parent.$('#myiframe').attr('src','${pageContext.request.contextPath}/student/right');
			}
		});
	}
</script>
</head>
<body>
	<form class="form-horizontal" role="form"
		style="padding: 30px 100px 10px;">
		<div class="form-group">
			<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网上报名</h1>
			<p>&nbsp;</p>
			<p>
				<label for="useraccount" class="col-sm-2 control-label">用户账号：</label>
				<span class="col-sm-4"> <input type="text"
					class="form-control" id="useraccount" value="${user.login_name}">
				</span>
			</p>
			<div class="col-sm-4"></div>
		</div>

		<div class="form-group">
			<label for="registID" class="col-sm-2 control-label">报名考次：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="exa_num"
					value="${examinfo.exa_num}">
			</div>
		</div>

		<div class="form-group">
			<label for="examstart" class="col-sm-2 control-label">考试开始时间：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="examstart"
					value="${examinfo.estart_time}">
			</div>
		</div>

		<div class="form-group">
			<label for="examend" class="col-sm-2 control-label">考试结束时间：</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="examend"
					value="${examinfo.estop_time}">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">请选择报考专业：</label> <select
				class="col-lg-1 input-sm" id="exa_majorID" style="margin-left: 15px">
				<c:forEach var="major" items="${majors }">
					<option value="${major.majorID }">${major.major_name }</option>
				</c:forEach>
			</select>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">请选择考点：</label> <select
				class="col-lg-1 input-sm" id="tex_exaID" style="margin-left: 15px">
				<c:forEach var="testplace" items="${testplaces }">
					<option value="${testplace.exaID }">${testplace.test_addr }</option>
				</c:forEach>
			</select>
		</div>
	</form>

<div class="col-sm-offset-2 col-sm-4">
				<button id="addInfomation" class="btn btn-warning" onclick="add_user_info()"
					style="width: 340px;">确认</button>
			</div>

</body>
</html>