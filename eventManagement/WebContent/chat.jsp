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
					<div class="panel-body">
									<table class="table" >
										<thead>
												<tr>
													<th>事件号</th>
													<th>标题</th>
													<th>内容</th>
													<th>时间</th>
													<th>状态</th>
												</tr>
										</thead>
										<s:if test="#event!=null">
										<tbody>
											<tr>
												<td><s:property value="#event.eventId"/></td>
												<td><s:property value="#event.eventTitle"/></td>
												<td><s:property value="#event.eventContent"/></td>
												<td><s:property value="#event.eventStarttime"/></td>
												<th>
													<s:if test="#event.eventStatus==0">处理中</s:if>
													<s:elseif test="#event.eventStatus==2">反馈中</s:elseif>
													<s:else>已处理 </s:else>
												</th>
											</tr>
										</tbody></s:if>
									</table>
								</div>
				    </div>
				    <br/>
					<div class="row">
						<p style="text-align: center;font-size: 40px;">聊天室</p>
						<div class="col-md-10" style="margin-left: 10%">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-body">
									<div id="panel-scrolling-demo"  class="panel" >
										<div class="panel-heading">
										</div>
										<div class="panel-body" >
											<table class="table" id="tables" style="width: 100%;">
												<tbody>
													<s:iterator value="#tRecords">
													  <s:if test="recordForm==#session.login.userRealname">
														<tr>
															<td style="width:10%;"></td>
															<td style="width:80%;color:blue;word-wrap: break-word;word-wrap: break-word; word-break: normal;"><s:property value="recordContent"/></td>
															<td style="width:10%;margin-right:5px;font-size: smaller;">
															<s:property value="recordForm"/><br/><s:property value="recordTime.toString().substring(5,16)"/></td>
														</tr>
													  </s:if>
													  <s:else>
													  	<tr>
													  		<td style="width:10%;font-size: smaller;">
													  		<s:property value="recordForm"/><br/><s:property value="recordTime.toString().substring(5,16)"/></td>
															<td style="width:80%;word-wrap: break-word; word-break: normal;"><s:property value="recordContent"/></td>
															<td style="width:10%;"></td>
														</tr>
													  </s:else>
													</s:iterator>
												</tbody>
											</table>
										</div>
									</div>
									<textarea class="form-control" placeholder="" rows="4" id="talks"></textarea>
								</div>
							</div>
							<div  style="margin-left:60%;">
								<s:if test="#session.login.userPriviliage>=1">
									<button type="button" id="handle" class="btn btn-info" style="margin-left: 5%;">事件完成</button>
									</s:if>
									<button type="button" id="feedback" class="btn btn-success" style="margin-left: 5%;" >添加反馈</button>
									<button type="button" id="fs" class="btn btn-primary" style="margin-left: 5%;" >发送</button>
							</div>
							<!-- END BASIC TABLE -->
						</div>
						
					</div>
					
					
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/scripts/klorofil-common.js"></script>
	
	<script type="text/javascript">
	$().ready(function() {
		var state = "<s:property value="#event.eventStatus"/>";
		$("#handle").click(function(){
			if(state==1){
				alert("事件已处理!")
			}else{
				$.ajax({
					   type: "POST",
					   url: "tRecordAction_EventMG",
					   data: "id=<s:property value="#event.eventId"/>&talks=handle",
					   success: function(msg){
					    	alert("处理完毕!");
					    	state = 1;
					    	var $h = $("<p/>").attr("style","font-size: smaller;");
					    	$h.text("-------已处理-------");
					    	$(".panel-heading").css("style","text-align:center");
					    	$(".panel-heading").append($h);
					   }
				});}
		});
		$("#feedback").click(function(){
			if(state==2){
				alert("事件已反馈!")
			}else{
				$.ajax({
					   type: "POST",
					   url: "tRecordAction_EventMG",
					   data: "id=<s:property value="#event.eventId"/>&talks=feedback",
					   success: function(msg){
					    	alert("反馈完毕!");
					    	state = 2;
					    	var $h = $("<p/>").attr("style","font-size: smaller;");
					    	$h.text("-------已反馈-------");
					    	$(".panel-heading").css("style","text-align:center");
					    	$(".panel-heading").append($h);
					    	
					   }
				});
			}
		});
		$("#fs").click(function(){
			var text = $("#talks").val();
			var time = new Date();
			var month=time.getMonth()+1;
			var date=time.getDate(); 
			var h=time.getHours();       //获取当前小时数(0-23)
			var m=time.getMinutes();
			var times = month+"-"+date+" "+h+":"+m;
			
			$.post("tRecordAction_addTalks",{
				id:"<s:property value="#event.eventId"/>",
				talks:text
			},function(data){
				var $td1 = $("<td/>");
				var $td2 = $("<td/>").attr("style","width:80%;color:blue;word-wrap: break-word; word-break: normal;");
				$td2.text(text);
				var $td3 = $("<td/>").attr("style","font-size: smaller;");
				$td3.text("<s:property value="#session.login.userRealname"/>");
				var b = $("<td/>")
				$td3.append(b).append(times);
				var $tr = $("<tr/>").append($td1).append($td2).append($td3);
				$("#talks").val("");
				$("#tables tbody").append($tr);
			}); 
		});
	});
	</script>
</body>

</html>
		