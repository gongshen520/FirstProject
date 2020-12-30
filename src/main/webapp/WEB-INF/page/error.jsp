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
  	<style>
    	.usericon{
    		height:80px;
    		width:80px;
    	}
    </style>
</head>
<body class="app sidebar-mini rtl">
	<!-- Navbar-->
    <header class="app-header">
    	<a class="app-header__logo" href="<%=basePath%>/index.action">我的官网</a>
		<!-- Sidebar toggle button-->
		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      	<!-- Navbar Right Menu-->
      	<ul class="app-nav">
	        <li class="app-search">
	          <input class="app-search__input" type="search" placeholder="搜索">
	          <button class="app-search__button"><i class="fa fa-search"></i></button>
	        </li>
        	<!--Notification Menu-->
	        <li class="dropdown">
	        	<a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
	          	<ul class="app-notification dropdown-menu dropdown-menu-right">
	            	<li class="app-notification__title">你有4条消息通知</li>
	            		<div class="app-notification__content">
	              			<li><a class="app-notification__item" href="javascript:;">
		              			<span class="app-notification__icon"><span class="fa-stack fa-lg">
		              				<i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
		              			</span></span>
		                  		<div>
				                    <p class="app-notification__message">某某发给你的消息</p>
				                    <p class="app-notification__meta">2分钟前</p>
		                  		</div>
		                  	</a></li>
	              			<li><a class="app-notification__item" href="javascript:;">
              					<span class="app-notification__icon"><span class="fa-stack fa-lg">
              						<i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i>
              						</span></span>
	                  			<div>
				                    <p class="app-notification__message">服务器通知</p>
				                    <p class="app-notification__meta">5分钟前</p>
	                  			</div>
	                  		</a></li>
		              		<li><a class="app-notification__item" href="javascript:;">
		              			<span class="app-notification__icon"><span class="fa-stack fa-lg">
	              					<i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i>
	              				</span></span>
			                	<div>
				                    <p class="app-notification__message">下载完成</p>
				                    <p class="app-notification__meta">2天前</p>
			                  	</div>
			                </a></li>
	            		</div>
	            	<li class="app-notification__footer"><a href="#">查看所有通知</a></li>
	          	</ul>
	        </li>
	        <!-- User Menu-->
	        <li class="dropdown">
	        	<a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
	          	<ul class="dropdown-menu settings-menu dropdown-menu-right">
		            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> 用户设置</a></li>
		            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> 用户概述</a></li>
		            <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> 用户退出</a></li>
	          	</ul>
	        </li>
      	</ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      	<div class="app-sidebar__user"><img class="app-sidebar__user-avatar usericon" src="<%=basePath%>/images/tainanle.jpg" alt="User Image">
	        <div>
	          <p class="app-sidebar__user-name">dog</p>
	          <p class="app-sidebar__user-designation">单身dog</p>
	        </div>
      	</div>
      	<ul class="app-menu">
      		<!-- 我的主页 -->>
        	<li><a class="app-menu__item" href="<%=basePath%>/login.action">
        		<i class="app-menu__icon fa fa-home"></i><span class="app-menu__label">我的主页</span></a>
        	</li>
        	<!-- 系统总览 -->
	        <li><a class="app-menu__item" href="#">
	        	<i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">系统总览</span></a>
	        </li>
	        <!-- 统计与分析 -->
	        <li><a class="app-menu__item" href="#">
	        	<i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">统计与分析</span></a>
	        </li>
			<!-- 系统设置 -->
	        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-cogs"></i>
	        	<span class="app-menu__label">系统设置</span><i class="treeview-indicator fa fa-angle-right"></i></a>
	          	<ul class="treeview-menu">
	            	<li><a class="treeview-item" href="<%=basePath%>/sysCode/show.action"><i class="icon fa fa-circle-o"></i>基础数据</a></li>
	            	<li><a class="treeview-item" href="#"><i class="icon fa fa-circle-o"></i>模块管理</a></li>
	            	<li><a class="treeview-item" href="<%=basePath%>/sysRole/show.action"><i class="icon fa fa-circle-o"></i>角色管理</a></li>
	            	<li><a class="treeview-item" href="<%=basePath%>/sysUser/show.action"><i class="icon fa fa-circle-o"></i>用户管理</a></li>
	          	</ul>
	        </li>
      	</ul>
	</aside>
    <main class="app-content">
    	<div class="page-error tile">
	        <h1><i class="fa fa-exclamation-circle"></i>${title}</h1>
        	<p id="errorBtn"><a class="btn btn-danger" href="javascript:showError();">异常</a></p>
	        <p id="msgBtn" style="display: none">${msg}</p>
	        <p><a class="btn btn-primary" href="javascript:window.history.back();">返回</a></p>
    	</div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="<%=basePath%>/bootstrap-vali-admin/js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/popper.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>/bootstrap-vali-admin/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="<%=basePath%>/bootstrap-vali-admin/js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Google analytics script-->
    <script type="text/javascript">
		if(document.location.hostname == 'pratikborsadiya.in') {
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			ga('create', 'UA-72504830-1', 'auto');
			ga('send', 'pageview');
		}
    </script>
    <script type="text/javascript">
    	function showError() {
			$('#errorBtn').hide();
			$('#msgBtn').show();
		}
    </script>
  </body>
</html>