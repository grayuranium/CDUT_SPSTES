<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>四川省自学考试系统</title>
<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
    <link href="css/IndexCover.css" rel="stylesheet">
</head>
<body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h1 class="masthead-brand ">Welcome to SPSTES.</h1>
            </div>
          </div>

          <div class="inner cover">
            <p class="lead">
              <a href="${pageContext.request.contextPath}/adminLogin" class="btn btn-lg btn-default">管理员入口</a>
            </p>
            <p class="lead">
              <a href="${pageContext.request.contextPath}/studentLogin" class="btn btn-lg btn-default">学生入口</a>
            </p>
            <p class="lead">
              <a href="${pageContext.request.contextPath}/passenger" class="btn btn-lg btn-default">游客入口</a>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-2.1.0.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-2.1.0.js"><\/script>')</script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>