<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>New 简历后台--管理员</title>
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
        <form class="templatemo-search-form" action="Admingets" role="search">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="姓名" name="admin.a_name" id="srch-term">           
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
          </div>
       <nav class="templatemo-left-nav">          
          <ul>
     
            <li><a href="#"><font size="+0.8"><i class="fa fa-home fa-fw"></i>首&nbsp;&nbsp;页</font></a></li>
            <li><a href="manage.html" class="active">
              <font size="+0.8"><i class="fa fa-users fa-fw"></i>管&nbsp;理&nbsp;员</font></a></li>
            <li><a href="user.html"> 
             <font size="+0.8"><i class="fa fa-database fa-fw"></i>用&nbsp;户&nbsp;管&nbsp;理</font></a></li>
            <li><a href="company.html"> 
             <font size="+0.8"><i class="fa fa-database fa-fw"></i>公&nbsp;司&nbsp;管&nbsp;理</font></a></li>
           
           <li><a href="#">
             <font size="+0.8"><i class="fa fa-users fa-fw"></i>反&nbsp;馈&nbsp;管&nbsp;理</font></a></li>
            <li><a href="personal.html">
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
                <li><a href="" class="active">管理面板</a></li>
                <li><a href="">反&nbsp; 馈</a></li>
                <li><a href="">网站概述</a></li>
                <li><a href="login.html">注 &nbsp;销</a></li>
                 <li><a href="manage-save.jsp">添&nbsp;加</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
         <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
              <i class="fa fa-times"></i>
               <c:forEach var="adminalllist" items="${adminalllist }" begin="0" end="0">
		              <div class="media margin-bottom-30">
		                <div class="media-left padding-right-25">
		                  <a href="#">
		                    <img class="media-object img-circle templatemo-img-bordered" src="images/person.jpg" alt="Sunset">
		                  </a>
		                </div>
		             
		                <div class="media-body">
		                  <h2 class="media-heading text-uppercase blue-text">${adminalllist.a_name }</h2>
		                  <p>&nbsp;&nbsp;&nbsp;&nbsp;<font size="1px;">${adminalllist.a_proview }</font></p>
		                </div>    
		                    
		              </div>
		              <div class="table-responsive">
		                <table class="table">
		                  <tbody>
		                    <tr>
		                      <td><div class="circle green-bg"></div></td>
		                      <td><b>Tel.</b></td>
		                      <td>${adminalllist.a_tel }</td>                    
		                    </tr> 
		                    <tr>
		                      <td><div class="circle pink-bg"></div></td>
		                      <td><b>E-mail.</b></td>
		                      <td>${adminalllist.a_email }</td>                    
		                    </tr>  
		                                               
		                  </tbody>
		                </table>
		              </div>         
             </c:forEach>
            </div>
       
          </div>
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="white-text templatemo-sort-by">No. <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">姓名 <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">Tel. <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">E-mail. <span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">职位 <span class="caret"></span></a></td>
                    
                    <c:if test="${loginadmin.a_proview == '经理' }"> 
                   		 <td>编辑</td>
                    </c:if>
                    <c:if test="${loginadmin.a_proview !='经理' }" ><td>查看</td></c:if>
                    <td>删除</td>
                  </tr>
                </thead>
                <tbody>
               <c:forEach var="adminalllist" items="${adminalllist }">
                  <tr>
                    <td>${adminalllist.a_id }</td>
                    <td>${adminalllist.a_name }</td>
                    <td>${adminalllist.a_tel }</td>
                    <td>${adminalllist.a_email }</td>
                    <td>${adminalllist.a_proview }</td>
                   
                    <c:if test="${loginadmin.a_proview == '经理' }"> <td>
                    	 <a href="Adminedit.action?admin.a_username=${adminalllist.a_username }" class="templatemo-edit-btn">编辑</a>
                    	 </td></c:if>
                   	<c:if test="${loginadmin.a_proview !='经理' }" >
                    <td><a href="Adminedit.action?admin.a_username=${adminalllist.a_username }" class="templatemo-link">查看</a></td></c:if>
                    <td><a href="Admindelect.action?admin.a_id=${adminalllist.a_id }" class="templatemo-link">删除</a></td>
                  </tr>
                 </c:forEach>
                </tbody>
              </table>    
            </div>                          
          </div>          
          <div class="templatemo-flex-row flex-content-row">
            
                                
          </div> <!-- Second row ends -->
         
          <div class="pagination-wrap">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
              </li>
            </ul>
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