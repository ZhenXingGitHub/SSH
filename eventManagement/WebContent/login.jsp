<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="fullscreen-bg">

<head>
	<title>BL 事件管理系统</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/vendor/linearicons/style.css">
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
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div id="toastr-demo" class="header">
								<div class="logo text-center"><img src="${pageContext.request.contextPath }/assets/img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">登录到您的帐户</p>
							</div>
							<form class="form-auth-small" action="tUserAction_login" method="post">
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">Email</label>
									<input name="user.userName" type="text" class="form-control" id="signin-email"   placeholder="账号">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">Password</label>
									<input name="user.userPassword" type="password" class="form-control" id="signin-password" placeholder="密码">
								</div>
								<div class="form-group clearfix">
									<!-- <label class="fancy-checkbox element-left">
										<input type="checkbox">
										<span>记住密码</span>
									</label> -->
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">登陆</button>
								<div class="bottom">
									<!-- <span class="helper-text"><i class="fa fa-lock"></i> 
									<a href="#">忘记密码</a></span> -->
								</div>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">黑叶 事件管理系统---XLZ</h1>
							<br/>
							<p>管理员： admin admin</p>
							<p>客服： 2 2</p>
							<p>用户： 3 3</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>
	
</html>
