<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.mysql.cj.exceptions.RSAException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>WGSBS</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" >
    <span class="navbar-toggler-icon"></span>
  </button>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index2.jsp"><b>Home </b><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><b>services</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#footer"><b>About us</b></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="log.jsp"><b>Admin</b></a>
      </li>
      
     <!--  <li class="nav-item">
        <a class="nav-link disabled" href="#">Admin</a>
      </li> -->
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="margin-left:70%;">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
 
 <!--  Image slider -->
<div class="container">
  <h2 style="text-color:whitesmoke;">WEDDING GOWNS AND SUIT BOOKING SYSTEM</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="WEEDING/image1.jpeg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>Los Angeles</h3>
          <p>Best from LA!</p>
        </div>
      </div>
      
      
            <div class="item">
        <img src="WEEDING/cpl.jpg" alt="ITALIAN" style="width:100%;">
        <div class="carousel-caption">
          <h3>Italian</h3>
          <p>Best from Italy!</p>
        </div>
      </div>

      <div class="item">
        <img src="WEEDING/image6.jpg" alt="PARIS" style="width:100%;">
        <div class="carousel-caption">
          <h3>Paris</h3>
          <p>Best from Paris!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="WEEDING/image7.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>Best from New York!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
 
  </div>
</div>

<!-- gallery -->

<!-- Carousel wrapper -->
<% 

//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "clothbooking";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


//rs.setBlob("img")
%>
<div
  id="carouselMultiItemExample"
  class="carousel slide carousel-dark text-center"
  data-mdb-ride="carousel"
>
  <!-- Controls -->

  <!-- Carousel wrapper -->
<div
  id="carouselMultiItemExample"
  class="carousel slide carousel-dark text-center"
  data-mdb-ride="carousel"
>
  <!-- Controls -->

  <!-- Inner -->
  
  <div class="carousel-inner py-4">
    <!-- Single item -->
    
 
    
    <div class="carousel-item active">
      <div class="container">
        <div class="row">
           <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from clothes";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
          <div class="col-lg-4">
            <div class="card">
              <img
                src="images/<%=resultSet.getString("clothes_image") %>"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title"><%=resultSet.getString("clothes_type") %></h5>
                <p class="card-text">
                  <%=resultSet.getString("clothes_description") %>
                </p>
                <%
                if(session.getAttribute("customer_username") != null)
                {
                	%>
                	 <a href="Booking.jsp?id=<%=resultSet.getString("clothes_id") %>" class="btn btn-primary">Book</a>
                <%
                }
                
                else
                {
                	%>
                	<a href="customer_login.jsp" class="btn btn-primary">Book</a>
                	<%
                }
                %>
                
              </div>
             <%File f = new File("/images/");

             File[] list = f.listFiles();%>
            </div>

          </div>

                     <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        </div>
      </div>
    </div>

  
</div>
<!-- Carousel wrapper -->


<footer class="page-footer font-small  bg-light" id="footer">

  <div style="background-color: #6351ce;">
    <div class="container">

      <!-- Grid row-->
      <div class="row py-4 d-flex align-items-center">

        <!-- Grid column -->
        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
          <h6 class="mb-0">Get connected with us on social networks!</h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6 col-lg-7 text-center text-md-right">

          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f white-text mr-4"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter white-text mr-4"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g white-text mr-4"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in white-text mr-4"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram white-text"> </i>
          </a>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
  </div>

  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5" style="">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Company name</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>BERWA SHOP</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Products</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">Suits </a>
        </p>
        <p>
          <a href="#!">Wedding Gowns</a>
        </p>
        <p>
          <a href="#!">Best suits</a>
        </p>
        <p>
          <a href="#!">Best Gowns</a>
        </p>

      </div>


      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">Your Account</a>
        </p>
        <p>
          <a href="#!">Become an Affiliate</a>
        </p>
        <p>
          <a href="#!">Shipping Rates</a>
        </p>
        <p>
          <a href="#!">Help</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> Huye, Huye 10012, Rwanda</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> berwashop@gmail.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> +250 789 283 918</p>
        <p>
          <i class="fas fa-print mr-3"></i> +250 798 103 300</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2021 Copyright:

    <button onclick="topFunction()" id="myBtn" title="Go to top" style="position:right;">Top</button>
    <script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
<Style>
  
  body{
		background-color:transparent;
		
	}

</Style>
</html>