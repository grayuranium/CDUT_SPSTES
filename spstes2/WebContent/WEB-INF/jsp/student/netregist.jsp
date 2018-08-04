<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
">
<html>
<head>
	<meta charset="utf-8">
	<title>网上报名</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--bootstrap核心javascript文件-->
    <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>

    <style type="text/css">
	body{
		background:#9CC; 
		background-size:cover
	}
	</style>
				
</head>
<body >
<form class="form-horizontal" role="form" style="padding:30px 100px 10px;">
 <div class="form-group">
   <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网上报名</h1>
   <p>&nbsp;    </p>
   <p>
     <label for="useraccount" class="col-sm-2 control-label">用户账号：</label>
     <span class="col-sm-4">
     <input type="text" class="form-control" id="useraccount">
    </span></p>
   <div class="col-sm-4"></div>
    </div>
   
   <div class="form-group">
   <label for="registID" class="col-sm-2 control-label">报名考次：</label>
   <div class="col-sm-4">
    <input type="text" class="form-control" id="registID">
    </div>
    </div>
    
     <div class="form-group">
   <label for="examstart" class="col-sm-2 control-label">考试开始时间：</label>
   <div class="col-sm-4">
    <input type="text" class="form-control" id="examstart">
    </div>
    </div>
    
     <div class="form-group">
   <label for="examend" class="col-sm-2 control-label">考试结束时间：</label>
   <div class="col-sm-4">
    <input type="text" class="form-control" id="examend">
    </div>
    </div>
    
     <div class="form-group">
   <label class="col-sm-2 control-label">请选择报考专业：</label>
     <select class="col-lg-1 input-sm" id="major" style="margin-left:15px">
      <option>-请选择-</option>
      
      <option>计算机科学与技术</option>
      <option>软件工程</option>
      <option>通信工程</option>
      <option>土木工程</option>
      <option>商务英语</option>
      <option>电子信息科学与技术</option>
      </select>
    </div>
    
     <div class="form-group">
   <label class="col-sm-2 control-label">请选择考点：</label>
     <select class="col-lg-1 input-sm" id="address" style="margin-left:15px">
      <option>-请选择-</option>
      
      <option>成都理工大学</option>
      <option>电子科技大学</option>
      <option>四川大学</option>
      <option>西南交通大学</option>
      <option>西南石油大学</option>
      <option>四川师范大学</option>
      </select>
    </div>
    
    <div class="form-group">
     <div class="col-sm-offset-2 col-sm-4">
      <button type="submit" class="btn btn-warning" style="width:340px;">确认</button>
      </div>
      </div>
      </form>
     
     

</body>
</html>