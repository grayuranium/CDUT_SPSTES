<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width initial-scale=1" />
<meta name="description" content="visitor" />
<meta name="author" content="songjihui" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="lead">查看开考专业</div>
		<table class="table table-hover table-striped">

			<tbody>
				<tr>
					<td>专业名称</td>
					<td>起始日期</td>
					<td>结束日期</td>
					<td>所属考次</td>
					<td>主考院校</td>
					<td>专业层次</td>
					<td>专业类型</td>
				</tr>				
				<c:forEach var="major" items="${majors}">
				    <tr>
						<td>${major.major_name}</td>
						<td>${major.begin_date}</td>
						<td>${major.end_date}</td>
						<td>${major.exa_num}</td>
						<td>${major.test_name}</td>
						<td>${major.prof_level}</td>
						<td>${major.prof_type}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="lead">查看开考课程</div>
		<table class="table table-hover table-striped">

			<tbody>
				<tr>
					<td>课程名称</td>
					<td>专业名称</td>
					<td>考试方式</td>
					<td>考试日期</td>
					<td>考试时间</td>
					<td>考点个数</td>
					<td>考试费用</td>
				</tr>
				<c:forEach var="course" items="${courses}">
				    <tr>
						<td>${course.course_name}</td>
						<td>${course.major_name}</td>
						<td>${course.exa_method}</td>
						<td>${course.exa_day}</td>
						<td>${course.exa_time}</td>
						<td>${course.exa_num}</td>
						<td>${course.exa_cost}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"
	charset="utf-8"></script>
</html>