<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>major_ok</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pager.css"/>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
<script src="${pageContext.request.contextPath}/js/pager.js">  </script>  
 <style type="text/css">
	body{
		background:#9CC; 
		background-size:cover
	}
	</style>
</head>

<body>
<p ><h1 align="center">开考专业查询结果</h1>
<p align="center">&nbsp;</p>
</p>
<table class="table" width="85%" border="6px" bordercolor="#9cc">
  <tr>
    <td><div align="center">专业名称</div></td>
	 <td><div align="center">起始日期</div></td>
	  <td><div align="center">结束日期</div></td>
	   <td><div align="center">所属考次</div></td>
	    <td><div align="center">主考院校</div></td>
		 <td><div align="center">专业层次</div></td>
    <td><div align="center">专业类型</div></td>
    
  </tr>
  <tr>
    <td><div align="center">计算机科学与技术</div></td>
    <td><div align="center">2018.06.05</div></td>
	 <td><div align="center">2018.06.06</div></td>
	  <td><div align="center">1</div></td>
	   <td><div align="center">成都理工大学</div></td>
	    <td><div align="center">本科</div></td>
		 <td><div align="center">工科</div></td>
    
  </tr>
</table>

<div align="center">
	<ul class="pagination" id="page2">
    </ul>
	<div class="pageJump">
		<span>跳转到</span>
		<input type="text"/>
		<span>页</span>
		<button type="button" class="button-warning">确定</button>
	</div>
	</div>
    
    <script>
		Page({
			num:7,					//页码数
			startnum:6,				//指定页码
			elem:$('#page2'),		//指定的元素
			callback:function(n){	//回调函数
				console.log(n);
			}
		});
	</script>
</body>
</html>
