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
					<div class="row">
						<div class="col-md-12">
								<span class="" style="font-size: 20px;color:#708090;"><b>
								事件管理
							</b></span>
							<button  id="sjButton"  type="button" class="btn btn-primary"  style="float: right;" >添加事件</button>
						</div>
						</div>
				    </div>
				    <br/>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-body">
									<table class="table" >
										<thead>
											<tr>
												<th>序号</th>
												<th>标题</th>
												<th>内容</th>
												<th>时间</th>
												<th>状态</th>
												<th>执行人</th>
												<th>操作</th>
											</tr>
										 </thead>
									  	<script type="text/javascript">
														var  index = 1;
										</script>
										<tbody>
									   <s:iterator value="#kheventList" >
											<tr>
												<td>
													<script type="text/javascript">
													document.write(index++);
													</script>
													</td>
												<td><s:property value="eventTitle"/></td>
												<td><s:property value="eventContent"/></td>
												<td><s:property value="eventStarttime"/></td>
												<td>
												<s:if test="eventStatus==0">
													<s:if test="TUserByKefuId.userId==null">提交中</s:if>
													<s:else>处理中</s:else>
												</s:if>
												<s:elseif test="eventStatus==1">处理成功</s:elseif>
												<s:else>反馈中</s:else>
												</td>
												<td>客服：<s:property value="TUserByKefuId.userId"/></td>
												<th>
												 <s:if test="TUserByKefuId.userId">
											     <a href="${pageContext.request.contextPath }/tRecordAction_FindTalk.action?id=<s:property value="eventId"/>">
											    	<button type="button" class="btn label label-success btn-xs" 
													value='<s:property value="eventId"/>'>聊天</button></a></s:if>
											    <a href="${pageContext.request.contextPath }/tEventAction_FeedbackEvent.action?tEvent.eventId=<s:property value="eventId"/>">
													<button type="button" class="btn label label-primary btn-xs" 
													value='<s:property value="eventId"/>'>反馈</button></a>
												 <a href="${pageContext.request.contextPath }/tEventAction_DeleteEvent.action?tEvent.eventId=<s:property value="eventId"/>">
													<button type="button" class="btn label label-default btn-xs">删除</button></a>
												</th>
											</tr>
										</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
					</div>
					<div class="row">
					<div class="sjDiv"  style="display: none;">
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel" id="">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>添加事件</b></h3>
									<div class="right">
										<button  type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button id="sjClose" type="button" ><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body">
								<form action="${pageContext.request.contextPath }/tEventAction_AddEvent.action" method="post">
									<input type="text" class="form-control" placeholder="标题" name="tEvent.eventTitle">
									<br>
									<textarea class="form-control" placeholder="内容" rows="4" name="tEvent.eventContent"></textarea>
									<br>
									<button type="sumbit" class="btn btn-primary" style="float: right;">确定</button></form>
								</div>
							</div>						
							<!-- END RECENT PURCHASES -->
						</div>								
					</div>
					
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/scripts/klorofil-common.js"></script>
	<script type="text/javascript">
			$(document).ready(function(){
				  $("#sjButton").click(function(){
				  $(".sjDiv").toggle("slow");
				  });
				  $("#sjClose").click(function(){
					  $(".sjDiv").hide();
					  });
				});
		</script>
</body>

</html>
