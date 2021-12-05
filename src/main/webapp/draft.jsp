<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.mysql.cj.exceptions.RSAException"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>


<%@ page trimDirectiveWhitespaces="true" %>
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
<title>Insert title here</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" >
    <span class="navbar-toggler-icon"></span>
  </button>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="index.jsp"><b>Home </b><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="draft.jsp"><b>clothes</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Booking_list.jsp"><b>bookings</b></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Manager_List.jsp"><b>managers</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="LogoutManager.jsp"><b>Logout</b></a>
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


<!-- gallery -->


     
<% 

//String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
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
    <%
response.setHeader("progma","no-cache");
    response.setHeader("Expires","0");
    
  
if(session.getAttribute("manager_username")==null)
{
	response.sendRedirect("log.jsp");
}

%>
<a href="clothes_registering.jsp"> <button class="btn btn-primary">ADD CLOTHES</button></a>
<br>
<br>
<table class="table table-bordered">

<tr>
<th> Clothes id</th>
<th> Clothes image</th>
<th> description</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from clothes";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("clothes_id") %></td>

<td><img src="images/<%=resultSet.getString("clothes_image") %>" width="100" height="100"></td>

<td><%=resultSet.getString("clothes_description") %></td>
<td><%=resultSet.getString("clothes_price") %></td>
<td><a href="deleteClothes.jsp?id=<%=resultSet.getString("clothes_id")%>">Delete</a></td>
<td><a href="UpdateClothForm.jsp?id=<%=resultSet.getString("clothes_id")%>">Update</a></td>
<% File f = new File("/images/");

File[] list = f.listFiles();%>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
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
  <div class="footer-copyright text-center py-3">© 2020 Copyright:

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