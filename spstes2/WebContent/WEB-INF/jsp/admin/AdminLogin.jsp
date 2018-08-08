<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>管理员登录</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="${pageContext.request.contextPath}/css/jquery-confirm.min.css" rel="stylesheet">
	
	<style type="text/css">
		.form-bg{
		    background: rgba(82, 83, 85, 0.897);
		}
		.form-horizontal{
		    background: #fff;
		    padding-bottom: 40px;
		    border-radius: 15px;
		    text-align: center;
		}
		.form-horizontal .heading{
		    display: block;
		    font-size: 35px;
		    font-weight: 700;
		    padding: 35px 0;
		    border-bottom: 1px solid #f0f0f0;
		    margin-bottom: 30px;
		}
		.form-horizontal .form-group{
		    padding: 0 40px;
		    margin: 0 0 25px 0;
		    position: relative;
		}
		.form-horizontal .form-control{
		    background: #f0f0f0;
		    border: none;
		    border-radius: 20px;
		    box-shadow: none;
		    padding: 0 20px 0 45px;
		    height: 40px;
		    transition: all 0.3s ease 0s;
		}
		.form-horizontal .form-control:focus{
		    background: #e0e0e0;
		    box-shadow: none;
		    outline: 0 none;
		}
		.form-horizontal .form-group i{
		    position: absolute;
		    top: 12px;
		    left: 60px;
		    font-size: 17px;
		    color: #c8c8c8;
		    transition : all 0.5s ease 0s;
		}
		.form-horizontal .form-control:focus + i{
		    color: #00b4ef;
		}
		.form-horizontal .fa-question-circle{
		    display: inline-block;
		    position: absolute;
		    top: 12px;
		    right: 60px;
		    font-size: 20px;
		    color: #808080;
		    transition: all 0.5s ease 0s;
		}
		.form-horizontal .fa-question-circle:hover{
		    color: #000;
		}
		.form-horizontal .main-checkbox{
		    float: left;
		    width: 20px;
		    height: 20px;
		    background: #179b77;
		    border-radius: 50%;
		    position: relative;
		    margin: 5px 0 0 5px;
		    border: 1px solid #11a3fc;
		}
		.form-horizontal .main-checkbox label{
		    width: 20px;
		    height: 20px;
		    position: absolute;
		    top: 0;
		    left: 0;
		    cursor: pointer;
		}
		.form-horizontal .main-checkbox label:after{
		    content: "";
		    width: 10px;
		    height: 5px;
		    position: absolute;
		    top: 5px;
		    left: 4px;
		    border: 3px solid #fff;
		    border-top: none;
		    border-right: none;
		    background: transparent;
		    opacity: 0;
		    -webkit-transform: rotate(-45deg);
		    transform: rotate(-45deg);
		}
		.form-horizontal .main-checkbox input[type=checkbox]{
		    visibility: hidden;
		}
		.form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
		    opacity: 1;
		}
		.form-horizontal .text{
		    float: left;
		    margin-left: 7px;
		    line-height: 20px;
		    padding-top: 5px;
		    text-transform: capitalize;
		}
		.form-horizontal .btn{
		    float: right;
		    font-size: 14px;
		    color: #fff;
		    background: #179b77;
		    border-radius: 30px;
		    padding: 10px 25px;
		    border: none;
		    text-transform: capitalize;
		    transition: all 0.5s ease 0s;
		}
		@media only screen and (max-width: 479px){
		    .form-horizontal .form-group{
		        padding: 0 25px;
		    }
		    .form-horizontal .form-group i{
		        left: 45px;
		    }
		    .form-horizontal .btn{
		        padding: 10px 20px;
		    }
		}
	</style>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-confirm.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    
		// 管理员登陆
		$("#alogin").click(function(){
			var lgaccount = $("#inputEmail3").val();
			var lgpwd = $("#inputPassword3").val();
			// ajax
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/login/admin",
				data : {"username" : lgaccount,
						"password" : lgpwd},
				async : true,
				success : function(msg) {
					if (msg == "no") {
						$.alert({
					        title: '提示',
					        content: '账号或者密码错误...',
					    });
					} else {
						// 登陆成功
						// 跳转至首页
						$.alert({
					        title: '提示',
					        content: '登陆成功,正在跳转...',
					    });
						window.location.href='${pageContext.request.contextPath}/admin/index';
					}
				}
			});
		});
	});
	</script>
</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>管理员登录<span>SPSTES</span></h1>
			<div class="htmleaf-header">
				<a class="htmleaf-icon icon-htmleaf-home-outline" href="../index.html" title="返回系统首页" target="_self"><span> 返回系统首页</span></a>
			</div>
		</header>
		<div class="demo form-bg" style="padding: 20px 0;">
		        <div class="container">
		            <div class="row">
		                <div class="col-md-offset-3 col-md-6">
		                    <div class="form-horizontal">
		                        <span class="heading">管理员登录</span>
		                        <div class="form-group">
		                            <input type="text" class="form-control" id="inputEmail3" placeholder="用户名" name="username">
		                            <i class="fa fa-user"></i>
		                        </div>
		                        <div class="form-group help">
		                            <input type="password" class="form-control" id="inputPassword3" placeholder="密　码" name="password">
		                            <i class="fa fa-lock"></i>
		                            <a href="#" class="fa fa-question-circle"></a>
		                        </div>
		                        <div class="form-group">
		                            <button id="alogin" class="btn btn-default">登录</button>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
	</div>
	
</body>
</html>