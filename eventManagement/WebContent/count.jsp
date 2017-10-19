<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>BL 事件管理系统</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath }/assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="${pageContext.request.contextPath }/tUserAction_getTypeList.action?user.userPriviliage=2"><img src="${pageContext.request.contextPath }/assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="${pageContext.request.contextPath }/assets/img/user.png" class="img-circle" alt="Avatar">
								 <span> <s:property value="#session.login.userRealname"/> </span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="updatePassword.jsp"><i class="lnr lnr-user"></i> <span>更改密码</span></a></li>
								<li><a href="${pageContext.request.contextPath }/tUserAction_logOff.action"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
					  <s:if test="#session.login.userPriviliage>0">
						<li>
							<a href="#xtht"  data-toggle="collapse" class="collapsed"><i class="lnr lnr-apartment"></i> <span>系统后台</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="xtht" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tUserAction_getTypeList.action?user.userPriviliage=2" class="">成员管理</a></li>
								</ul>
							</div>
						</li></s:if>
						<li>
							<a href="#kh" data-toggle="collapse" class="collapsed"><i class="lnr lnr-user"></i> <span>事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="kh" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tEventAction_Event.action">事件管理</a></li>
								</ul>
							</div>
						</li>
					  <s:if test="#session.login.userPriviliage>1">
						<li>
							<a href="#zwcl" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>总未处理事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="zwcl" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tEventAction_TotalEvent.action?total=2">未处理事件</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#zls" data-toggle="collapse" class="collapsed"><i class="lnr lnr-map"></i> <span>总历史处理事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="zls" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tEventAction_TotalEvent.action?total=1">历史事件</a></li>
								</ul>
							</div>
						</li></s:if>
					  <s:if test="#session.login.userPriviliage>0">
						<li>
							<a href="#wdcl" data-toggle="collapse" class="collapsed"><i class="lnr lnr-inbox"></i> <span>处理事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="wdcl" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tEventAction_MyHandleEvent.action">处理事件</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#wddfk" data-toggle="collapse" class="collapsed"><i class="fa fa-credit-card"></i> <span>待反馈事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="wddfk" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tEventAction_AllFeedbackEvent.action">待部门反馈事件</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#tj" data-toggle="collapse" class="collapsed"><i class="fa fa-database"></i> <span>统计</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="tj" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tCountAction_Count.action" class="">统计</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#gg" data-toggle="collapse" class="collapsed"><i class="fa fa-calendar"></i> <span>公告</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="gg" class="collapse ">
								<ul class="nav">
									<li><a href="${pageContext.request.contextPath }/tPlacardAction_AllPlacard.action?pageBean.currentPage=0">公告</a></li>
							
								</ul>
							</div>
						</li></s:if>

					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">统计数据(近七天)</h3>
							<p class="panel-subtitle"><%=new Date() %></p>
						</div>
						<div class="panel-body">
							<div class="row" >
								<div class="col-md-2">
									<div class="metric" >
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.eventNum"/></span>
											<span class="title">事件总数</span>
										</p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="metric">
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.unHandle"/></span>
											<span class="title">未处理总数</span>
										</p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="metric">
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.feedbackEventNum"/></span>
											<span class="title">反馈总数</span>
										</p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="metric">
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.placardNum"/></span>
											<span class="title">公告总数</span>
										</p>
									</div>
								</div>
								<div class="col-md-2">
									<div class="metric">
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.khNum"/></span>
											<span class="title">用户总数</span>
										</p>
									</div>
								</div>
									<div class="col-md-2">
									<div class="metric" >
										<p style="text-align: center;">
											<span class="number"><s:property value="#countNum.kfNum"/></span>
											<span class="title">客服总数</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-9">
									<div id="headline-chart" class="ct-chart"></div>
								</div>
								<div class="col-md-3">
									<div class="weekly-summary text-right">
										<span class="number"><s:property value="#countNum.handleEvent"/>||</span> 
										<span class="percentage">
										 	<s:property value="#countNum.sjcll"/>%</span>
										<span class="info-label">处理事件</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">待做</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 23%</span>
										<span class="info-label">事件添加率</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">待做</span> <span class="percentage"><i class="fa fa-caret-down text-danger"></i> 8%</span>
										<span class="info-label">反馈率</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	$().ready(function(){
		
		var data, options;
		var timelist = "<s:property value="#timelist"/>";
		var handleEvent = "<s:property value="#handleEvent"/>";
		var unHandle = "<s:property value="#unHandle"/>";
		var tt = timelist.substring(1,timelist.length-1).split(',');
		var handleEvent = handleEvent.substring(1,handleEvent.length-3).split(',');
		var unHandle = unHandle.substring(1,unHandle.length-3).split(',');
		/*var handleNum;
		 var unHandle;
		$.ajax({
			   type: "POST",
			   url: "tCountAction_EventCount",
			   data: "state=1",
			   success: function(date){
				   handleNum = date.substring(1,date.length-1).split(',');
			   }
		});
		$.ajax({
			   type: "POST",
			   url: "tCountAction_EventCount",
			   data: "state=2",
			   success: function(date){
				   alert(date);
				   date = date.substring(1,date.length-3);
				   unHandle = date.split(',');
				   alert(unHandle);
			   }
		}); */
	   /*  $.post("tCountAction_EventCount",{
			state:1
		},function(data){
			handleNum = eval("("+data+")");
			for(var i=0; i<handleNum.length; i++){
				alert(handleNum[i]);
				alert(handleNum[i]);
			}
		});  */
		 data = {
					labels: [tt[0].replace(" ", "").substring(2),tt[1].replace(" ", "").substring(2),
					         tt[2].replace(" ", "").substring(2),tt[3].replace(" ", "").substring(2),
					         tt[4].replace(" ", "").substring(2),tt[5].replace(" ", "").substring(2),
					         tt[6].replace(" ", "").substring(2)],
					series: [
						[unHandle[0].replace(" ", ""),unHandle[1].replace(" ", ""),unHandle[2].replace(" ", ""),
						 unHandle[3].replace(" ", ""),unHandle[4].replace(" ", ""),
						 unHandle[5].replace(" ", ""),unHandle[6].replace(" ", ""),],
						 [handleEvent[0].replace(" ", ""),handleEvent[1].replace(" ", ""),handleEvent[2].replace(" ", ""),
						  handleEvent[3].replace(" ", ""),handleEvent[4].replace(" ", ""),
						  handleEvent[5].replace(" ", ""),handleEvent[6].replace(" ", ""),]
					]
				}
			options = {
				height: 300,
				showArea: true,
				showLine: false,
				showPoint: false,
				fullWidth: true,
				axisX: {
					showGrid: false
				},
				lineSmooth: false,
			};
			new Chartist.Line('#headline-chart', data, options);
	
		
	});
	</script>
</body>

</html>
