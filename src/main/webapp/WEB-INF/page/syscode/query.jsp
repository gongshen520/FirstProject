<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="cn">
<head>
   	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<!-- Main CSS-->
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>/bootstrap-vali-admin/css/main.css">
  	<!-- Font-icon css-->
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>/bootstrap-vali-admin/css/font-awesome.min.css">
  	<!-- toastr css-->
  	<link rel="stylesheet" type="text/css" href="<%=basePath%>/js/toastr.css"/>
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
	            	<li><a class="treeview-item" href="<%=basePath%>/sysModule/show.action"><i class="icon fa fa-circle-o"></i>模块管理</a></li>
	            	<li><a class="treeview-item" href="<%=basePath%>/sysRole/show.action"><i class="icon fa fa-circle-o"></i>角色管理</a></li>
	            	<li><a class="treeview-item" href="<%=basePath%>/sysUser/show.action"><i class="icon fa fa-circle-o"></i>用户管理</a></li>
	          	</ul>
	        </li>
      	</ul>
	</aside>
    <main class="app-content">
      	<div class="app-title">
        	<div>
          		<h1><i class="fa fa-database"></i>基础数据</h1>
          		<ul class="app-breadcrumb breadcrumb">
          		<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          		<li class="breadcrumb-item">系统设置</li>
          		<li class="breadcrumb-item"><a href="#">基础数据</a></li>
        	</div>
        	<div><a class="btn btn-primary btn-flat" href="<%=basePath%>/sysCode/preAdd.action"><i class="fa fa-lg fa-plus"></i></a>
        		<a class="btn btn-info btn-flat" href="#" onclick="updateSysCode();"><i class="fa fa-lg fa-pencil"></i></a>
        		<a class="btn btn-info btn-flat" href="<%=basePath%>/sysCode/show.action"><i class="fa fa-lg fa-refresh"></i></a>
        		<a class="btn btn-warning btn-flat" href="#" onclick="deleteSysCode();"><i class="fa fa-lg fa-trash"></i></a>
        	</div>
      	</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<table class="table table-hover table-bordered" id="sysCodeTable">
	              			<thead>
			                 	<tr>
			                 		<th></th>
				                    <th>基础数据类型</th>
				                    <th>基础数据值</th>
				                    <th>中文名称</th>
				                    <th>英文名称</th>
				                    <!-- <th>繁体名称</th> -->
				                    <th>有效标志</th>
				                    <th>录入人员</th>
				                    <th>录入日期</th>
				                    <th>更新人员</th>
				                    <th>更新日期</th>
		                  		</tr>
	                		</thead>
						</table>
					</div>
				</div>
			</div>
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
    <!-- Data table plugin-->
    <script type="text/javascript" src="<%=basePath%>/bootstrap-vali-admin/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/bootstrap-vali-admin/js/plugins/dataTables.bootstrap.min.js"></script>
    <!-- Common function -->
    <script src="<%=basePath%>/js/common.js"></script>
    <script type="text/javascript">
    	$.fn.dataTable.ext.errMode = 'none';
		$('#sysCodeTable').DataTable({
    		bAutoWidth: false, //自动调整列宽
    		serverSide: true,  //开启服务器模式
    		ordering: false,   //排序
    		dom: 'lrtip',      //搜索框、分页条、每页条数、条数信息设置
    		language: {
    			processing : "正在加载数据！"
    		},
    		ajax: {
    			
    			//服务器模式请求url，会带上分页、排序等信息
                url: "<%=basePath%>/sysCode/query.action", 
                type: "POST",
               	data: function(param) {
                   	//添加额外的参数传给服务器
                    	param.extra_search = {
   	                 	pubCode: 'USERTYPE',
   	                 	pubCName: '系统管理员'
                   	}
               	},
    			error: ajaxError
            },
            //每列值对应Bean生成的Json的字段
            columns: [
            	{data: "pubCode"},
            	{data: "pubCode"},
            	{data: "pubValue"},
                {data: "pubCName"},
                {data: "pubEName"},
                /* {data: "pubTName"}, */
                {data: "valid"},
                {data: "operateName"},
                {data: "operateDate"},
                {data: "updateName"},
                {data: "updateDate"}
			],
          	//对指定列显示内容做优化
            columnDefs: [
            	{
	                targets: [0],
	                data: "pubCode",
	                render: function(data, type, row) {
	                	var param = row.pubCode + ";" + row.pubValue;
	                    return "<label><input name='sysCodeRadio' type='radio' class='ace' value="+param+" /><span class='lbl'></span> </label>";
	                }
				},
				{
					targets: [5],
	                data: "valid",
	                render: function(data, type, full) {
	                	if(data == '1'){
	                		return "有效";
	                	}else{
	                		return "无效";
	                	}
	                }	
				}
			]
    	});
    </script>
    <script type="text/javascript" src="<%=basePath%>/bootstrap-vali-admin/js/plugins/bootstrap-notify.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/toastr.min.js"></script>
    <script type="text/javascript">
    	//提示框位置toast-bottom-right表示下右、toast-bottom-center表示下中、toast-top-center表示上中等
    	toastr.options.positionClass = 'toast-top-center';
    </script>
    <script type="text/javascript">
    	//修改
    	function updateSysCode() {
    		debugger;
			var radio = $("input[name=sysCodeRadio]:checked");
			if(radio.length > 0){
				var param = radio.val();
				var pubCode = param.split(";")[0];
				var pubValue = param.split(";")[1];
				window.location.href = '<%=basePath%>/sysCode/preUpdate.action'+'?pubCode='+pubCode+'&pubValue='+pubValue;
			}else{
				toastr.warning("请先选中一条数据!");
			}
			
		}
    	//删除
    	function deleteSysCode() {
    		debugger;
			var radio = $("input[name=sysCodeRadio]:checked");
			if(radio.length > 0){
				var param = radio.val();
				var pubCode = param.split(";")[0];
				var pubValue = param.split(";")[1];
				$.ajax({
					url: '<%=basePath%>/sysCode/delete.action'+'?pubCode='+pubCode+'&pubValue='+pubValue,
					type: 'POST',
					cache: false,
					async: true,
					success: function(result){
						debugger;
						if(result.status){
							window.location.href = "<%=basePath%>/sysCode/show.action";
						}else{
							document.write(result);
						}
					}
				});
			}else{
				toastr.warning("请先选中一条数据!");
			}
		}
    </script>
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
  </body>
</html>