<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport"/>
	<title>后台管理系统</title>
	
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
	<%-- <link href="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/> --%>
	<%-- <link href="<%=request.getContextPath()%>/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/> --%>
	<%-- <link href="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/> --%>
	<!-- END PAGE LEVEL PLUGIN STYLES -->
	<!-- BEGIN PAGE STYLES -->
	<%-- <link href="<%=request.getContextPath()%>/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/> --%>
	<!-- END PAGE STYLES -->
	<!-- BEGIN THEME STYLES -->
	<link href="<%=request.getContextPath()%>/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="<%=request.getContextPath()%>/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css">
	<link rel="shortcut icon" href="favicon.ico"/>
	
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/respond.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/excanvas.min.js"></script> 
	<![endif]-->
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<%-- <script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script> --%>
	<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
	<%-- <script src="<%=request.getContextPath()%>/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script> --%>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="<%=request.getContextPath()%>/assets/global/scripts/metronic.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
	<%-- <script src="<%=request.getContextPath()%>/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/admin/pages/scripts/index.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script> --%>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="layout.jsp" style="font-size:27px;margin-top:6px;">
			<%-- <img src="<%=request.getContextPath()%>/assets/admin/layout/img/logo.png" alt="logo" class="logo-default"> --%>
			后台管理系统
			</a>
			<div class="menu-toggler sidebar-toggler hide">
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" class="img-circle" src="<%=request.getContextPath()%>/assets/admin/layout/img/avatar3_small.jpg">
					<span class="username username-hide-on-mobile">	Nick </span>
					<!-- <i class="fa fa-angle-down"></i>-->
					</a>
					<!-- <ul class="dropdown-menu dropdown-menu-default">
						<li>
							<a href="login.html">
							<i class="icon-key"></i> Log Out </a>
						</li>
					</ul> -->
				</li>
				<!-- END USER LOGIN DROPDOWN -->
				<!-- BEGIN QUICK SIDEBAR TOGGLER -->
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-quick-sidebar-toggler">
					<a href="javascript:;" class="dropdown-toggle">
					<i class="icon-logout"></i>
					</a>
				</li>
				<!-- END QUICK SIDEBAR TOGGLER -->
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR1 -->
	<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU1 -->
			<ul class="page-sidebar-menu" data-slide-speed="200" data-auto-scroll="true" data-auto-scroll="true" data-slide-speed="200">
				<%-- <li class="start">
					<a class="ajaxify start" href="<%=request.getContextPath()%>/login.jsp">
						<i class="fa fa-home"></i>
						<span class="title">Dashboard </span>
						<span class="selected"></span>
					</a>
				</li> --%>
				<li>
					<a href="javascript:;">
						<i class="fa fa-cogs"></i>
						<span class="title">员工管理 </span>
						<span class="selected"></span>
						<span class="arrow open"></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/emp/add.jsp">新增员工 </a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/emp/query.jsp">编辑员工 </a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/cust/queryByEmp.jsp">按员工查客户</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
						<i class="fa fa-cogs"></i>
						<span class="title">客户查询</span>
						<span class="selected"></span>
						<span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/cust/query.jsp?type=1">收单客户查询 </a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/cust/query.jsp?type=2">注册客户查询</a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/cust/query.jsp?type=3">上大会客户查询</a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/cust/query.jsp?type=4">出单客户查询</a>
						</li>
					</ul>
				</li>
				<li class="last">
					<a href="javascript:;">
						<i class="fa fa-cogs"></i>
						<span class="title">客户统计</span>
						<span class="selected"></span>
						<span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/stats/stats_today.jsp">今日客户统计 </a>
						</li>
						<li>
							<a class="ajaxify" href="${pageContext.request.contextPath}/page/stats/stats_today_emp.jsp">今日按员工客户统计</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- END SIDEBAR MENU1 -->
		</div>
	</div>
	<!-- END SIDEBAR1 -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="page-content-body">
				<jsp:include page="${param.page}"/>
			</div>
		</div>
		<!-- BEGIN CONTENT -->
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2014 &copy; Metronic by keenthemes. <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<script>
 jQuery(document).ready(function() {    
	Metronic.init(); // init metronic core componets
   	Layout.init(); // init layout
   	//QuickSidebar.init(); // init quick sidebar
	//Demo.init(); // init demo features
   	//Index.init();   
   	//Index.initDashboardDaterange();
   	//Index.initJQVMAP(); // init index page's custom scripts
   	//Index.initCalendar(); // init index page's custom scripts
   	//Index.initCharts(); // init index page's custom scripts
   	//Index.initChat();
   	//Index.initMiniCharts();
   	//Tasks.initDashboardWidget();
}); 
</script>
<!-- END JAVASCRIPTS -->
</body>
</html>