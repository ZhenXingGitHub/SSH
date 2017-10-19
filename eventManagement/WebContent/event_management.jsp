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
							<s:if test="#AllHistoryEvent.size>0">总历史事件</s:if>
							<s:elseif test="#AllNotHandleEvent.size>0">总未处理事件</s:elseif>
							<s:else>事件管理</s:else>
							</b></span>
							<s:if test="#session.login.userPriviliage!=1">
							<button  id="sjButton"  type="button" class="btn btn-primary"  style="float: right;" >添加事件</button></s:if>
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
									 <s:if test="#eventList.size>0">
										<thead>
											<tr>
												<th>工号</th>
												<th>姓名</th>
												<th>标题</th>
												<th>电话</th>
												<th>状态</th>
												<th>时间</th>
												<th>操作</th>
											</tr>
										 </thead>
									  </s:if>
									   <s:else>
										   <thead>
												<tr>
													<th>事件号</th>
													<th>姓名</th>
													<th>标题</th>
													<th>执行人</th>
													<th>状态</th>
													<th>时间</th>
													<th>操作</th>
												</tr>
											 </thead>
									   </s:else>
										<tbody>
									   <s:iterator value="#eventList" >
									   	<s:if test="eventStatus==0 || eventStatus==2">
											<tr>
												<td><s:property value="TUserByEventCommitId.userId"/></td>
												<td><s:property value="TUserByEventCommitId.userRealname"/></td>
												<td><s:property value="eventTitle"/></td>
												<td><s:property value="TUserByEventCommitId.userPhone"/></td>
												<td>
													<s:if test="eventStatus==0">
														<s:if test="TUserByKefuId.userId">处理中</s:if>
														<s:else>未分配 </s:else>
													</s:if>
													<s:else>反馈中</s:else>
												</td>
												<td><s:property value="eventStarttime"/></td>
												<th>
												  <s:if  test="#session.login.userPriviliage>0">
													 <a href="${pageContext.request.contextPath }/tEventAction_HandleEvent.action?tEvent.eventId=<s:property value="eventId"/>">
														<button type="button" class="btn label label-info btn-xs">处理</button></a>
											       </s:if>
												    <s:if test="#session.login.userPriviliage==1">
												     <a href="${pageContext.request.contextPath }/tRecordAction_FindTalk.action?id=<s:property value="eventId"/>">
												    	<button type="button" class="btn label label-success btn-xs" 
														value='<s:property value="eventId"/>'>聊天</button></a></s:if>
												    <a href="${pageContext.request.contextPath }/tEventAction_FeedbackEvent.action?tEvent.eventId=<s:property value="eventId"/>">
														<button  type="button" class="btn label label-primary btn-xs" 
														value='<s:property value="eventId"/>'>反馈</button></a>
												    <s:if test="#session.login.userPriviliage>1 && eventStatus!=1">
														<button id="fpButton" type="button" class="btn label label-primary btn-xs" 
														value='<s:property value="eventId"/>'>分配</button></s:if>
													<s:if test="#session.login.userPriviliage>1">
												    <a href="${pageContext.request.contextPath }/tEventAction_DeleteEvent.action?tEvent.eventId=<s:property value="eventId"/>">
														<button  type="button" class="btn label label-default btn-xs" 
														value='<s:property value="eventId"/>'>删除</button></a></s:if>
												</th>
											</tr>
										 </s:if>
										</s:iterator>
										
										<s:iterator value="#AllNotHandleEvent" >
									   	<s:if test="eventStatus==0">
											<tr>
												<td><s:property value="TUserByEventCommitId.userId"/></td>
												<td><s:property value="TUserByEventCommitId.userRealname"/></td>
												<td><s:property value="eventTitle"/></td>
												<td><s:property value="TUserByKefuId.userId"/></td>
												<td>
												<s:if test="TUserByKefuId.userId">处理中</s:if>
												<s:else>未分配</s:else>
												</td>
												<td><s:property value="eventStarttime"/></td>
												<th>
												 <s:if  test="#session.login.userPriviliage>0">
												 <a href="${pageContext.request.contextPath }/tEventAction_HandleEvent.action?tEvent.eventId=<s:property value="eventId"/>&total=2">
													<button type="button" class="btn label label-info btn-xs">处理</button></a>
											    </s:if>
											    <s:if test="#session.login.userPriviliage>1">
													<button id="fpButton" type="button" class="btn label label-primary btn-xs" 
													value='<s:property value="eventId"/>'>分配</button></s:if>
												 <s:if test="#session.login.userPriviliage>=0">
												 <a href="${pageContext.request.contextPath }/tEventAction_DeleteEvent.action?tEvent.eventId=<s:property value="eventId"/>&total=2">
													<button type="button" class="btn label label-default btn-xs">删除</button></a></s:if>
												</th>
											</tr>
											</s:if>
										</s:iterator>
										
										<s:iterator value="#AllHistoryEvent" >
									   	<s:if test="eventStatus!=0">
											<tr>
												<td><s:property value="TUserByEventCommitId.userId"/></td>
												<td><s:property value="TUserByEventCommitId.userRealname"/></td>
												<td><s:property value="eventTitle"/></td>
												<td><s:property value="TUserByKefuId.userId"/></td>
												<td>
												<s:if test="eventStatus==1">已处理</s:if>
												<s:else>待反馈</s:else>
												</td>
												<td><s:property value="eventStarttime"/></td>
												<th>
											    <s:if test="#session.login.userPriviliage>1">
													<button id="cpButton" type="button" class="btn label label-primary btn-xs" 
													value='<s:property value="eventId"/>'>重配</button></s:if>
												 <s:if test="#session.login.userPriviliage>=0">
												 <a href="${pageContext.request.contextPath }/tEventAction_DeleteEvent.action?tEvent.eventId=<s:property value="eventId"/>&total=1">
													<button type="button" class="btn label label-default btn-xs">删除</button></a></s:if>
												</th>
											</tr>
											</s:if>
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
							<div class="panel" id="k">
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
					<div class="fpDiv"  style="display: none;">
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel" id="k">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>分配事件TO客服</b></h3>
									<div class="right">
										<button  type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button id="fpClose" type="button" ><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								
								<div class="panel-body">
								<form action="${pageContext.request.contextPath }/tEventAction_UpdateEvent.action" method="post">
									<s:iterator value="#kfList" >
									<label class="facy-radio">
										<input name="kfID" value="<s:property value="userId"/>" type="radio">
										<span><i></i><s:property value="userId"/>(<s:property value="userRealname"/>)</span>
									</label></br>
									</s:iterator>
									<input id="eventId" hidden="hidden" name="tEvent.eventId" value="">
									<button type="submit" class="btn btn-primary"  style="margin-left:100px; " >确定</button>
							    </form> 
								</div>
							</div>						
							<!-- END RECENT PURCHASES --> 
						</div>								
					</div>
					<div class="cpDiv"  style="display: none;">
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel" id="k">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>重新分配事件TO客服</b></h3>
									<div class="right">
										<button  type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button id="fpClose" type="button" ><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								
								<div class="panel-body">
								<form action="${pageContext.request.contextPath }/tEventAction_UpdateEvent.action" method="post">
									<s:iterator value="#kfList" >
									<label class="facy-radio">
										<input name="kfID" value="<s:property value="userId"/>" type="radio">
										<span><i></i><s:property value="userId"/>(<s:property value="userRealname"/>)</span>
									</label></br>
									</s:iterator>
									<input id="eventID" hidden="hidden" name="tEvent.eventId" value="">
									<input hidden="hidden" name="total" value="1">
									<button type="submit" class="btn btn-primary"  style="margin-left:100px; " >确定</button>
							    </form> 
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
				  
				  $("button[id='fpButton']").click(function(){
					  $(".fpDiv").toggle("slow");
					  var v = $(this).val();
					  $("#eventId").attr("value",v);
					  });
				  $("button[id='fpClose']").click(function(){
					  $(".fpDiv").hide();
					  });
				  
				  $("button[id='cpButton']").click(function(){
					  $(".cpDiv").toggle("slow");
					  var vv = $(this).val();
					  $("#eventID").attr("value",vv);
					  });
				  $("button[id='cpClose']").click(function(){
					  $(".cpDiv").hide();
					  });
				});
		</script>
</body>

</html>
