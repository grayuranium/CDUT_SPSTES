<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Index</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by freehtml5.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">

<!-- Owl Carousel  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">

<!-- Flexslider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flexslider.css">

<!-- Pricing -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pricing.css">

<!-- Theme style  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style_student.css">

<!-- Modernizr JS -->
<script
	src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>

<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
	<![endif]-->
<script language="javascript" type="text/javascript">
	function linkThis() {
		parent.$('#myiframe').attr('src',
				'${pageContext.request.contextPath}/student/enroll?welcome=1');
	}
	function linkThis1() {
		var url = '${pageContext.request.contextPath}/student/search?type='
				+ $("select[id='TypeSelect'] option:selected").val();
		parent.$('#myiframe').attr('src', url);
	}
	function linkThis2() {
		parent.$('#myiframe').attr('src', './chaxunkkzy.html');
	}
	function linkThis3() {
		parent.$('#myiframe').attr('src', './chaxunkkkc.html');
	}
	function linkThis4() {
		parent.$('#myiframe').attr('src', './shouye.html');
	}
	function linkThis5() {
		parent.$('#myiframe').attr('src',
				'${pageContext.request.contextPath}/index');
	}
</script>


</head>
<body>

	<div class="fh5co-loader"></div>

	<div id="page">
		<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">

						<ul class="fh5co-social">

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div id="contain" style="height: 40px;">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="fh5co-logo">
								<a href="#"><image
										src="${pageContext.request.contextPath}/img/logo1.png"></image></a><span><h5>欢迎来到学生用户界面</h5></span>
							</div>
						</div>
						<div class="col-xs-10 text-right menu-1">

							<ul>
								<li><a href="${pageContext.request.contextPath}">返回首页</a></li>
								<li><button class="btn btn-warning" style="width: 120px;"
										onClick="linkThis()">网上报名</button></li>
							</ul>

						</div>

					</div>

				</div>
			</div>
		</div>
		</nav>


		<div class="new2">

			<form id="form1" role="form">
				<ul>
					<li class="new1"><input type="text" class="form-control"
						style="width: 300px; height: 25px; border-radius: 3px; border: 2px solid #CCC"
						id="select1"></li>
					<li class="new1" id="select2"><select id="TypeSelect"
						style="width: 200px; height: 25px; border-radius: 3px; border: 2px solid #CCC">
							<option value="1" selected="selected">查询成绩</option>
							<option value="2">查询开考课程</option>
							<option value="3">查询开考专业</option>
					</select></li>
				</ul>
			</form>
			<button class="btn btn-warning"
				style="width: 80px; height: 37px; padding-bottom: 10px; text-height: 20px;"
				onclick="linkThis1()">确认</button>

		</div>




		<div id="fh5co-hero">
			<iframe id="myiframe" name="frame"
				src="${pageContext.request.contextPath}/student/right"> </iframe>
		</div>

	</div>

	<!-- jQery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="${pageContext.request.contextPath}/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="${pageContext.request.contextPath}/js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script>
		var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

		// default example
		simplyCountdown('.simply-countdown-one', {
			year : d.getFullYear(),
			month : d.getMonth() + 1,
			day : d.getDate()
		});

		//jQuery example
		$('#simply-countdown-losange').simplyCountdown({
			year : d.getFullYear(),
			month : d.getMonth() + 1,
			day : d.getDate(),
			enableUtc : false
		});
	</script>
</body>
</html>