<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${pageContext.request.contextPath}/css/cheng-style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- jQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/css/cheng-magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
   <script src="${pageContext.request.contextPath}/js/jquery.hoverdir.js"></script>
		<script type="text/javascript">
			$(function() {
			
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir({
					hoverDelay : 50,
					inverse : true}); 
				});
			});
			function linkThis(){
				// $('#myiframe').attr('src','./首页.jsp');
			}
			function linkThis1(){
				$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/biyetiaojian?type=0');
			}
			function linkThis2(){
				$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kecheng?type=0');
			}	
			function linkThis3(){
				$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodian?type=0');
			}	
			function linkThis4(){
				$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kaodiankaikaozhuanye?type=0');
			}	
			function linkThis5(){
				//$('#myiframe').attr('src','${pageContext.request.contextPath}/admin/kechengshoufeibiaozhun');
			}
			
			function linkThis6(){
				$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/kaocijihua0?type=0"); // 考次计划管理
			}
			function linkThis7(){
				$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyekecheng"); // 专业课程
			}
			function linkThis8(){
				$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/zhuanyeguanli?type=0"); // 专业管理
			}
			function linkThis9(){
				$('#myiframe').attr('src',"${pageContext.request.contextPath}/admin/score"); //  考生成绩管理
			}
    </script>
</head>
<body>
  <div class="header">	
      <div class="wrap"> 
          <div class="logo">
			 <a href="index.html"><img src="images/logo1.png" alt=""/></a>
		  </div>
		  <div class="header-right">
			 <div id='cssmenu'>
				<ul>
				   <li class="first"><a href='#' onClick="linkThis6()"><span>考次计划</span></a></li> |
				   <li class='active'>专业计划
				     <ul>
				         <li class='has-sub' ><a href='#'  onClick="linkThis1()"><span>毕业条件</span></a></li>
				         <li class='has-sub' ><a href='#' onClick="linkThis2()"><span>课程</span></a></li>
                         <li class='has-sub' ><a href='#' onClick="linkThis3()"><span>考点</span></a></li>
                         <li class='has-sub' ><a href='#' onClick="linkThis4()"><span>考点开考专业</span></a></li>
                         <li class='has-sub' ><a href='#' onClick="linkThis5()"><span>课程收费标准</span></a></li>
				      </ul>
				   </li> |
				   <li class='has-sub'><a href='#' onClick="linkThis7()"><span>专业课程</span></a></li> |
				   <li class='has-sub'><a href='#' onClick="linkThis8()"><span>专业管理</span></a></li> |
				   <li class='last'><a href='#' onClick="linkThis9()"><span>考生成绩</span></a></li>
				</ul>
			 </div>
			 <div class="search_box">
				<form>
				   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
			    </form>
			 </div>
		   </div>
		   <div class="clear"></div>
      </div>
	</div>

	<div class="index-banner" >
		<iframe id="myiframe" name="frame" src="${pageContext.request.contextPath}/admin/kaocijihua0?type=0">
          
		</iframe>
	</div>
	  	
	
</body>
</html>