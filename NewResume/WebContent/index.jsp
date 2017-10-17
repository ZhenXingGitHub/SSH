<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>New 简历后台--首页</title>
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
     
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
    
        <nav class="templatemo-left-nav">          
          <ul>
          <br/>
            <li><a href="login.jsp" class="active"><font size="+0.8"><i class="fa fa-home fa-fw"></i>首&nbsp;&nbsp;页</font></a></li>
            <li><a href="Adminlist.action">
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
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-flex-row flex-content-row">
           
            <div class="templatemo-content-widget white-bg col-1 text-center">
              <i class="fa fa-times"></i>
              <h2 class="text-uppercase">${loginadmin.a_name }</h2>
              <h3 class="text-uppercase margin-bottom-10">${loginadmin.a_proview }</h3>
              <img src="images/bicycle.jpg" alt="Bicycle" class="img-circle img-thumbnail">
            </div>
            <div class="templatemo-content-widget white-bg col-1">
              <i class="fa fa-times"></i>
              <h2 class="text-uppercase">Dictum</h2>
              <h3 class="text-uppercase">Sedvel Erat Non</h3><hr>
              <div class="progress">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
              </div>                          
            </div>
          </div>
          <div class="templatemo-flex-row flex-content-row">
            <div class="col-1">              
              <div class="templatemo-content-widget orange-bg">
                <i class="fa fa-times"></i>                
                <div class="media">
                  <div class="media-left">
                    <a href="#">
                      <img class="media-object img-circle" src="images/sunset.jpg" alt="Sunset">
                    </a>
                  </div>
                  <div class="media-body">
                    <h2 class="media-heading text-uppercase">经理  ${admin1.a_name }</h2>
                    <p>Phasellus dapibus nulla quis risus auctor, non placerat augue consectetur.</p>  
                  </div>        
                </div>                
              </div>           
              	<br/> 
              <div class="templatemo-content-widget white-bg">
                <i class="fa fa-times"></i>
                <div class="media">
                  <div class="media-left">
                    <a href="#">
                      <img class="media-object img-circle" src="images/sunset.jpg" alt="Sunset">
                    </a>
                  </div>
                  <div class="media-body">
                    <h2 class="media-heading text-uppercase">组长  ${admin2.a_name }</h2>
                    <p>Phasellus dapibus nulla quis risus auctor, non placerat augue consectetur.</p>  
                  </div>
                </div>                
              </div>            
            </div>
            <div class="col-1">
              <div class="templatemo-content-widget white-bg col-2">
              <i class="fa fa-times"></i>
              <div class="square"></div>
              <h2 class="templatemo-inline-block">New 简历概述</h2><hr>
              <p>Works on all major browsers. IE 10+. Visual Admin is <a href="http://www.cssmoban.com/tag/admin" target="_parent">free responsive admin template</a> for everyone. Feel free to use this template for your backend user interfaces. Please tell your friends about <a href="http://www.templatemo.com" target="_parent">templatemo.com</a> website. You may <a href="http://www.cssmoban.com/contact" target="_parent">contact us</a> if you have anything to say.</p>
              <p>Nunc placerat purus eu tincidunt consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dapibus nulla quis risus auctor, non placerat augue consectetur. Fusce mi lacus, semper sit amet mattis eu.</p>              
            </div>
            </div>           
          </div> <!-- Second row ends -->
          <div class="copyrights">Collect from <a href="#" ></a></div>
          <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden"> <!-- overflow hidden for iPad mini landscape view-->
             <div class="col-1">
              <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
                <i class="fa fa-times"></i>
                <div class="panel-heading templatemo-position-relative"><h2 class="text-uppercase">管理层</h2></div>
                <div class="table-responsive">
                  <table class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <td>No.</td>
                        <td>姓名</td>
                        <td>TEL.</td>
                         <td>E-mail.</td>
                        <td>职位</td>
                      </tr>
                    </thead>
                    <tbody>
                    <c:set var="flag" value="0" />     
                    <c:forEach items="${adminalllist}" begin="0" end="4"  var="adminlist" >
                      
                    	
							
					 <tr>
                        <td>${adminlist.a_id }</td>
                        <td>${adminlist.a_name }</td>
                        <td>${adminlist.a_tel }</td>
                        <td>${adminlist.a_email }</td>
                        <td>${adminlist.a_proview }</td>
                      </tr>
						
                     </c:forEach>
                       
                    </tbody>
                  </table>    
                </div>  
                <br/>
                 <div class="form-group"  style="text-align: right;">
                      <button type="submit" class="templatemo-blue-button"><a href="Adminlist.action">查看更多</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>                        
              </div>

          </div>
        
        </div>
          <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name 
            | More Templates <a href="#" target="_blank" title="#">NEW简历</a> - Collect from <a href="#" title="#" target="_blank">后台管理</a></p>
          </footer>         
      </div>
    </div>
    
    <!-- JS -->
    <script src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    <script src="https://www.google.com/jsapi"></script> <!-- Google Chart -->
    <script>
      /* Google Chart 
      -------------------------------------------------------------------*/
      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart); 
      
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

          // Create the data table.
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Topping');
          data.addColumn('number', 'Slices');
          data.addRows([
            ['Mushrooms', 3],
            ['Onions', 1],
            ['Olives', 1],
            ['Zucchini', 1],
            ['Pepperoni', 2]
          ]);

          // Set chart options
          var options = {'title':'How Much Pizza I Ate Last Night'};

          // Instantiate and draw our chart, passing in some options.
          var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
          pieChart.draw(data, options);

          var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
          barChart.draw(data, options);
      }

      $(document).ready(function(){
        if($.browser.mozilla) {
          //refresh page on browser resize
          // http://www.sitepoint.com/jquery-refresh-page-browser-resize/
          $(window).bind('resize', function(e)
          {
            if (window.RT) clearTimeout(window.RT);
            window.RT = setTimeout(function()
            {
              this.location.reload(false); /* false to get page from cache */
            }, 200);
          });      
        } else {
          $(window).resize(function(){
            drawChart();
          });  
        }   
      });
      
    </script>
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

  </body>
</html>