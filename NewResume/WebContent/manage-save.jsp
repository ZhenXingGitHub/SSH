<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>New 简历后台--管理员编辑</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>  
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>NEW 简历</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">  
          <div class="profile-photo-overlay"></div>
        </div>      
        <!-- Search box -->
        <form class="templatemo-search-form" role="search">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="用户名" name="srch-term" id="srch-term">           
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
          </div>
        <nav class="templatemo-left-nav">          
          <ul>
        
             <li><a href="index.html" ><font size="+0.8"><i class="fa fa-home fa-fw"></i>首&nbsp;&nbsp;页</font></a></li>
            <li><a href="manage.html">
              <font size="+0.8"><i class="fa fa-users fa-fw"></i>管&nbsp;理&nbsp;员</font></a></li>
            <li><a href="user.html"> 
             <font size="+0.8"><i class="fa fa-database fa-fw"></i>用&nbsp;户&nbsp;管&nbsp;理</font></a></li>
            <li><a href="company.html"> 
             <font size="+0.8"><i class="fa fa-database fa-fw"></i>公&nbsp;司&nbsp;管&nbsp;理</font></a></li>
           
            <li><a href="#">
             <font size="+0.8"><i class="fa fa-users fa-fw"></i>反&nbsp;馈&nbsp;管&nbsp;理</font></a></li>
            <li><a href="personal.html"  >
             <font size="+0.8"><i class="fa fa-sliders fa-fw"></i>个&nbsp;人&nbsp;管&nbsp;理</font></a></li>
            <li><a href="login.html">
            <font size="+0.8"><i class="fa fa-eject fa-fw"></i>注&nbsp;&nbsp;销</font></a></li>
          </ul>  
        </nav>
      </div>
      <!-- Main content --> 
       <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="">管理面板</a></li>
                <li><a href="">反&nbsp; 馈</a></li>
                <li><a href="">网站概述</a></li>
                <li><a href="login.html">注 &nbsp;销</a></li>
                <li><a href="manage-save.jsp">添&nbsp;加</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
               <br/> <br/> 
        
          <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
              <i class="fa fa-times"></i>
              <div class="media margin-bottom-30">
                <div class="media-left padding-right-25">
                  <a href="#">
                    <img class="media-object img-circle templatemo-img-bordered" src="images/person.jpg" alt="Sunset">
                  </a>
                </div>
                <div class="media-body">
                  <h2 class="media-heading text-uppercase blue-text"></h2>
                  <p>&nbsp;&nbsp;&nbsp;</p>
                </div>        
              </div>
              <div class="table-responsive">
                <table class="table">
                  <tbody>
                   <tr>
                      <td><div class="circle blue-bg"></div></td>
                      <td>性别</td>
                      <td></td>                    
                    </tr>  
                    <tr>
                      <td><div class="circle green-bg"></div></td>
                      <td>Tel.</td>
                      <td></td>                    
                    </tr> 
                    <tr>
                      <td><div class="circle pink-bg"></div></td>
                      <td>E-mail</td>
                      <td></td>                    
                    </tr>  
                   
                    <tr>
                      <td><div class="circle yellow-bg"></div></td>
                      <td>住址</td>
                      <td></td>                    
                    </tr>                                      
                  </tbody>
                </table>
              </div>             
            </div>
           
            <div class="templatemo-content-widget white-bg col-1 templatemo-position-relative templatemo-content-img-bg">
              <img src="images/sunset-big.jpg" alt="Sunset" class="img-responsive content-bg-img">
              <i class="fa fa-heart">荣誉墙</i>
              <h2 class="templatemo-position-relative white-text"></h2>
              <div class="view-img-btn-wrap" >
               
              </div>              
            </div>
          </div>


          <div class="templatemo-content-widget white-bg">
          
            <h2 class="margin-bottom-10">信息修改</h2>
          
            <form action="Adminsave" class="templatemo-login-form" method="post" enctype="multipart/form-data" >
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">用户名</label>
                    <input type="text" class="form-control" id="inputFirstName" name="admin.a_username" placeholder="用户名"  >                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">真实姓名</label>
                    <input type="text" class="form-control" id="inputLastName" name="admin.a_name" placeholder="姓名">                  
                </div> 
              </div>
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">密码</label>
                    <input type="password" class="form-control" id="inputUsername" name="admin.a_password" placeholder="***">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">Tel</label>
                    <input type="text" class="form-control" id="inputEmail" name="admin.a_tel" placeholder="手机号">                  
                </div> 
              </div>
               <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">E-mail.</label>
                    <input type="email" class="form-control" id="inputEmail" name="admin.a_email" placeholder="邮箱">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">住址</label>
                    <input type="text" class="form-control" id="inputUsername" placeholder="地址">                  
                </div> 
              </div>
  			   <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group"> 
                  <label class="control-label templatemo-block">职位</label>                 
                  <select class="form-control" name="admin.a_proview" >
                    <option value="管理组长">管理组长</option>
					<option value="管理员">管理员</option>
                  </select>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-lg-12">
                  <label class="control-label templatemo-block">上传头像</label> 
                  <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                  <input type="file" name="file.file" id="fileToUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false">
                  <p>限定格式.</p>                  
                </div>
              </div>
              <div class="form-group text-right">
                <button type="submit" class="templatemo-blue-button"><font size="+0.8">修改</font></button>
              </div>                           
           	 </form>
          </div>
             <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name 
            | More Templates <a href="#" target="_blank" title="#">NEW简历</a> - Collect from <a href="#" title="#" target="_blank">后台管理</a></p>
          </footer>   
        </div>
      </div>
    </div>
    
    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script>
      $(document).ready(function(){
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();        
      });
    </script>
  </body>
</html>