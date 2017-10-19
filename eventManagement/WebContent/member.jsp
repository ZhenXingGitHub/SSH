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
							<a href="#wddfk" data-toggle="collapse" class="collapsed"><i class="fa fa-credit-card"></i> <span>我的待反馈事件</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
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
		<div  class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" >
							
							<a href="${pageContext.request.contextPath }/tUserAction_getTypeList.action?user.userPriviliage=2"><button type="button" class="btn btn-success">组长列表</button></a>			
							<a href="${pageContext.request.contextPath }/tUserAction_getTypeList.action?user.userPriviliage=1"><button type="button" class="btn btn-primary">客服列表</button></a>
							<a href="${pageContext.request.contextPath }/tUserAction_getTypeList.action?user.userPriviliage=0"><button type="button" class="btn btn-info">用户列表</button></a>
							<s:if test="#session.login.userPriviliage>1">
							<button id="tjButton"  href="#k" data-toggle="collapse" type="button" class="btn btn-primary"  style="float: right;" >添加</button></s:if>
						</div>
						</div>
				    </div>
				    <br/>
				   <!-- 组长 管理员-->
				   <s:if test="#zzlist.size>0">
				  <h3 class="text-primary" style="text-align: center;">组长列表</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel" >
								<div class="panel-body">
									<table class="table" >
										<thead>
											<tr>
												<th>ID</th>
												<th>姓名</th>
												<th>职位</th>
												<th>邮箱</th>
												<th>手机号</th>
											<s:if test="#session.login.userPriviliage>1">
												<th>操作</th></s:if>	
											</tr>
										</thead>
										<tbody>
										<s:iterator value="#zzlist">
											<tr>
												<td><s:property value="userId"/></td>
												<td><s:property value="userRealname"/></td>
												<td><s:property value="userPriviliage"/></td>
												<td><s:property value="userEmail"/></td>
												<td><s:property value="userPhone"/></td>
												<td>
												<s:if test="#session.login.userId==userId||#session.login.userPriviliage>2">
													<a href="${pageContext.request.contextPath }/tUserAction_findById.action?user.userId=<s:property value="userId"/>">
													<button type="button" class="btn label label-primary btn-xs">编辑</button></a></s:if>
												<s:if test="#session.login.userPriviliage>2">
													<a href="${pageContext.request.contextPath }/tUserAction_deleteEnty.action?user.userId=<s:property value="userId"/>">
													<button type="button" class="btn label label-default btn-xs">删除</button></a>
												</s:if>
												</td>
											</tr>
										</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						
					</div>
					</s:if>
					 <!-- 客服-->
				   <s:if test="#kflist.size>0">
				    <h3 class="text-primary" style="text-align: center;">客服列表 </h3>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-body">
									<table class="table" >
										<thead>
											<tr>
												<th>ID</th>
												<th>姓名</th>
												<th>职位</th>
												<th>邮箱</th>
												<th>手机号</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<s:iterator value="#kflist">
											<tr>
												<td><s:property value="userId"/></td>
												<td><s:property value="userRealname"/></td>
												<td><s:property value="userPriviliage"/></td>
												<td><s:property value="userEmail"/></td>
												<td><s:property value="userPhone"/></td>
												<td>
												<s:if test="#session.login.userId==userId||#session.login.userPriviliage>1">
													<a href="${pageContext.request.contextPath }/tUserAction_findById.action?user.userId=<s:property value="userId"/>">
													<button type="button" class="btn label label-primary btn-xs">编辑</button></a></s:if>
												<s:if test="#session.login.userPriviliage>1">
													<a href="${pageContext.request.contextPath }/tUserAction_deleteEnty.action?user.userId=<s:property value="userId"/>">
													<button type="button" class="btn label label-default btn-xs">删除</button></a>
												</s:if>
												</td>
											</tr>
										</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						
					</div>
					</s:if>
					 <!-- 用户-->
				   <s:if test="#yhlist.size>0">
				   <h3 class="text-primary" style="text-align: center;">用户列表</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel">

								
								<div class="panel-body">
									<table class="table" >
										<thead>
											<tr>
												<th>ID</th>
												<th>姓名</th>
												<th>职位</th>
												<th>邮箱</th>
												<th>手机号</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<s:iterator value="#yhlist">
											<tr>
												<td><s:property value="userId"/></td>
												<td><s:property value="userRealname"/></td>
												<td><s:property value="userPriviliage"/></td>
												<td><s:property value="userEmail"/></td>
												<td><s:property value="userPhone"/></td>
												<td>
												<s:if test="#session.login.userPriviliage>1">
													<a href="${pageContext.request.contextPath }/tUserAction_deleteEnty.action?user.userId=<s:property value="userId"/>">
													<button type="button" class="btn label label-default btn-xs">删除</button></a></s:if>
												</td>
											</tr>
										</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						
					</div>
					</s:if>
					<!-- 个人列表 -->
					<s:if test="#tuser!=null">
				    <h3 class="text-primary" style="text-align: center;">列表</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel">

								
								<div class="panel-body">
									<table class="table" >
										<thead>
											<tr>
												<th>ID</th>
												<th>姓名</th>
												<th>邮箱</th>
												<th>手机号</th>
												<th>职位</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><s:property value="#tuser.userId"/></td>
												<td><s:property value="#tuser.userRealname"/></td>
												<td><s:property value="#tuser.userEmail"/></td>
												<td><s:property value="#tuser.userPhone"/></td>
												<td><s:property value="#tuser.userPriviliage"/></td>
												<td>
												<s:if test="#session.login.userPriviliage>1">
													<a href="${pageContext.request.contextPath }/tUserAction_deleteEnty.action?user.userId=<s:property value="#tuser.userId"/>">
													<button type="button" class="btn label label-default btn-xs">删除</button></a></s:if>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						
					</div>
					</s:if>
					<div class="row">
					   	<s:if test="#tuser!=null">
						<div class="col-md-6" >
							<!-- RECENT PURCHASES -->
							<div class="panel" >
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>编辑</b></h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								
								<form action="${pageContext.request.contextPath }/tUserAction_updateEnty.action?user.userId=<s:property value="#tuser.userId"/>" method="post">
								<div class="panel-body">
									<input name="user.userRealname" minlength="2" type="text" class="form-control" placeholder="姓名">
									<br>
									<input name="user.userEmail"  minlength="3" maxlength="5" type="text" class="form-control" placeholder="邮箱">
									<br>
									<input name="user.userPhone"  minlength="3" type="text" class="form-control" placeholder="手机号">
									<br>
									<s:if test="#session.login.userPriviliage>2">
									<select class="form-control" name="user.userPhone" >
										<option value="1">权限</option>
										<option value="1">客服</option>
										<option value="2">组长</option>
									</select></s:if>
									<br/>
									<s:if test="#session.login.userPriviliage>1">
									<select class="form-control" name="user.userZt" >
										<option value="上班">当前状态</option>
										<option value="上班">上班</option>
										<option value="休班">休班</option>
										<option value="离职">离职</option>
									</select></s:if>
									<br>
									<button type="submit" class="btn btn-primary" style="float: right;">确定</button>
								</div>
								</form>
							</div>						
							<!-- END RECENT PURCHASES -->
						</div>		
						</s:if>
						<s:if test="#session.login.userPriviliage>1">
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel" id="tjia" style="display: none;">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>员工添加</b></h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" id="closeButton"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								
								<form action="${pageContext.request.contextPath }/tUserAction_addEnty.action" method="post">
								<div class="panel-body">
									<input type="text" name="user.userName"  class="form-control" placeholder="用户名">
									<br>
									<input type="text" name="user.userPassword" class="form-control" placeholder="密码">
									<br>
									<input type="text" name="user.userRealname" class="form-control" placeholder="姓名">
									<br>
									<s:if test="#session.login.userPriviliage>1">
									<select name="user.userPriviliage" class="form-control" >
										<option value="1">客服</option>
										<option value="1">权限</option>
										<s:if test="#session.login.userPriviliage>2"><option value="2">组长</option></s:if>
									</select></s:if>
									<br/>
									<select name="user.userZt" class="form-control" >
										<option value="上班">当前状态</option>
										<option value="上班">上班</option>
										<option value="休班">休班</option>
										<option value="辞职">辞职</option>
									</select>
									<br>
									<button type="submit" class="btn btn-primary" style="float: right;">确定</button>
								</div>
								</form>
							</div>						
							<!-- END RECENT PURCHASES -->
						</div>	
						</s:if>							
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
		$().ready(function(){
			$("#tjButton").click(function(){
				$("#tjia").toggle("slow");
			});
			$("#closeButton").click(function(){
				$("#tjia").hide();
			});
		});
	</script>
</body>

</html>
