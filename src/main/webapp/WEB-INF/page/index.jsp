<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<!-- Main CSS-->
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>/bootstrap-vali-admin/css/main.css">
  	<!-- Font-icon css-->
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>/bootstrap-vali-admin/css/font-awesome.min.css">
  	<title>我的官网</title>
</head>
<body>
	<section class="material-half-bg">
      	<div class="cover"></div>
    </section>
    <section class="login-content">
		<div class="logo">
        	<h1>我的官网2035</h1>
      	</div>
      	<div class="login-box">
        	<form class="login-form" action="<%=basePath%>/login.action">
          		<h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>登录</h3>
         		<div class="form-group">
            		<label class="control-label">用户名</label>
            		<input class="form-control" type="text" placeholder="用户名" autofocus>
          		</div>
          		<div class="form-group">
            		<label class="control-label">密码</label>
            		<input class="form-control" type="password" placeholder="密码">
          		</div>
          		<div class="form-group">
           			<div class="utility">
              			<div class="animated-checkbox">
			                <label>
			                  	<input type="checkbox"><span class="label-text">记住密码</span>
			                </label>
              			</div>
              			<p class="semibold-text mb-2"><a href="#" data-toggle="flip">忘记密码？</a></p>
           			</div>
          		</div>
          		<div class="form-group btn-container">
            		<button class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>登录</button>
          		</div>
        	</form>
        	<form class="forget-form" action="index.html">
          		<h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock"></i>忘记密码？</h3>
          		<div class="form-group">
		            <label class="control-label">用户名</label>
		            <input class="form-control" type="text" placeholder="userName">
          		</div>
          		<div class="form-group btn-container">
            		<button class="btn btn-primary btn-block"><i class="fa fa-unlock fa-lg fa-fw"></i>重置</button>
          		</div>
          		<div class="form-group mt-3">
            		<p class="semibold-text mb-0"><a href="#" data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i>返回登录</a></p>
          		</div>
        	</form>
      	</div>
    </section>
	<!-- Essential javascripts for application to work-->
    <script src="<%=basePath%>/bootstrap-vali-admin/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/popper.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<%=basePath%>/bootstrap-vali-admin/js/plugins/pace.min.js"></script>
    <script type="text/javascript">
		// Login Page Flipbox control
		$('.login-content [data-toggle="flip"]').click(function() {
			$('.login-box').toggleClass('flipped');
			return false;
		});
    </script>
  </body>
</html>