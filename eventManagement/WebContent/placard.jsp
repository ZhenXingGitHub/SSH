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
						<div class="col-md-12" >
							<span class="" style="font-size: 20px;color:#708090;"><b>
							公告
							</b></span>
							<s:if test="#pageBean.list">
								<button  id="ggButton"  type="button" class="btn btn-primary"  style="float: right;" >添加公告</button>
							</s:if>
						</div>
				    </div>
						
				    <br/>
					<div class="row">
						<div class="col-md-12">
							<!-- BASIC TABLE -->
							<div class="panel">
							<s:if test="#pageBean.list">
								<div class="panel-body">
									<table class="table" >
										<thead>
												<tr>
													<th>序号</th>
													<th>标题</th>
													<th>图片</th>
													<th>发布时间</th>
													<th>发布人</th>
													<th>操作</th>
												</tr>
										</thead>
										<tbody>
										<script type="text/javascript">
														var  index = 1;
										</script>
										<s:iterator value="#pageBean.list">
											<tr>
												<td>
													<script type="text/javascript">
														document.write(index++);
													</script>
												</td>
												<td><s:property value="placardTitle"/></td>
												<td><img alt="图片" src="${pageContext.request.contextPath }\upload\Placard\<s:property value="placardUrl"/>" style="width:40px; height: 40px;"></td>
												<td><s:property value="placardTime.toString().substring(0,10)"/></td>
												<td><s:property value="userName"/></td>
												<td>
												<a href="${pageContext.request.contextPath }/tPlacardAction_UpdatePlacard.action?tPlacard.placardId=<s:property value="placardId"/>&pageBean.currentPage=0">
													<button type="button" class="btn label label-info btn-xs">置顶</button></a>
												 <a href="${pageContext.request.contextPath }/tPlacardAction_DeletePlacard.action?tPlacard.placardId=<s:property value="placardId"/>&pageBean.currentPage=<s:property value="#pageBean.currentPage"/>">
													<button type="button" class="btn label label-default btn-xs" id="deleteEvent">删除</button></a>
												</td>
											</tr></s:iterator>
										</tbody>
									</table>
									<hr>
									
										<div style="float:left;margin-left:25px;"><s:property value="#pageBean.allRow"/>条/<s:property value="#pageBean.totalPage"/>页</div>
										<div style="float:right;margin-right: 25px;">
										<a href="${pageContext.request.contextPath }/tPlacardAction_AllPlacard.action?pageBean.currentPage=0">
											<button  id="ggButton"  type="button" class="btn label label-info btn-xs" >首页</button></a>
										<s:if test="#pageBean.currentPage<=0"><button  id="ggButton"  type="button" class="btn label label-info btn-xs" > << </button></a></s:if>
										<s:else>
										<a href="${pageContext.request.contextPath }/tPlacardAction_AllPlacard.action?pageBean.currentPage=<s:property value="#pageBean.currentPage-1"/>">
											<button  id="ggButton"  type="button" class="btn label label-info btn-xs" > << </button></a>
										</s:else>
										
										<a href="${pageContext.request.contextPath }/tPlacardAction_AllPlacard.action?pageBean.currentPage=<s:property value="#pageBean.currentPage"/>">
											<button  id="ggButton"  type="button" class="btn label label-info btn-xs">
											<s:property value="#pageBean.currentPage+1"/></button></a>
										
										<s:if test="#pageBean.currentPage+1>=#pageBean.totalPage"><button  id="ggButton"  type="button" class="btn label label-info btn-xs" > >> </button></a></s:if>
										<s:else>
										<a href="${pageContext.request.contextPath }/tPlacardAction_AllPlacard.action?pageBean.currentPage=<s:property value="#pageBean.currentPage+1"/>">
											<button  id="ggButton"  type="button" class="btn label label-info btn-xs" > >> </button></a>
										</s:else>
									</div>
							</div></s:if>
							<!-- END BASIC TABLE -->
						</div>
					</div>
					
					
					<div class="row">
					<div class="ggDiv"  style="display:none;margin-left: 250px">
						<div class="col-md-8">
							<!-- RECENT PURCHASES -->
							<div class="panel" id="k">
								<div class="panel-heading">
									<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b>添加公告</b></h3>
									<div class="right">
										<button  type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button id="ggClose" type="button" ><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body">
								<form action="${pageContext.request.contextPath }/tPlacardAction_AddPlacard.action"  method="post" enctype="multipart/form-data">
									<input type="text" class="form-control" placeholder="标题" name="tPlacard.placardTitle">
									<br>
									<input type="text" class="form-control" placeholder="内容" name="contents">
									<br>
									<input type="file" id="file" class="form-control" name="files">
									<br>
									<button type="sumbit" class="btn btn-primary" style="float: right;">确定</button></form>
								</div>
							</div>						
							<!-- END RECENT PURCHASES -->
						</div>								
					</div>
					
					<s:iterator value="#tPList">
						<div>
						<div class="row">
							<div class="en"  style="margin-left: 250px">
							<div class="col-md-8">
								<!-- RECENT PURCHASES -->
								<div id="panel-scrolling-demo" class="panel">
									<div class="panel-heading">
										<h3 class="panel-title" style="font-size: 18px;color:#708090;"><b><s:property value="placardTitle"/></b></h3>
										<div class="right">
											<button  type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
											<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
										</div>
									</div>
									<div class="panel-body">
										<p><img alt="图片" src="${pageContext.request.contextPath }\upload\Placard\<s:property value="placardUrl"/>" style="width:60px; height: 60px;"></p>
										<p style="word-wrap: break-word; word-break: normal;"><s:property value="placardContents"/></p>
									</div>
									<div class="panel-footer">
										<h5><s:property value="placardTime.toString().substring(0,16)"/></h5>
									</div>
								</div>
									</div>
								</div>						
								<!-- END RECENT PURCHASES -->
							</div>								
						</div>
					</s:iterator>
					<div class="row">
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
				<hr/>
					<div style="text-align: center;">底</div>
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script type="text/javascript">
		$().ready(function(){
			$("#deleteEvent").click(function(){
				if(confirm("确定删除？")){
					var id = $(this).parent().parent().siblings("td:eq(0)").text();
					location.href = "${pageContext.request.contextPath }/tEventAction_DeleteEvent.action?tEvent.eventId="+id+"&total=3";
				}
			});
			$("#ggButton").click(function(){
				 $(".ggDiv").toggle("slow");
			});
			$("#ggClose").click(function(){
				$(".ggDiv").hide();
			});
		});
	</script>
</body>

</html>
