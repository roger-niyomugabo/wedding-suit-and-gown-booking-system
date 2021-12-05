<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
%>
    <%
response.setHeader("progma","no-cache");
    response.setHeader("Expires","0");
    
  
if(session.getAttribute("manager_username")==null)
{
	response.sendRedirect("log.jsp");
}

%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>register</title>




</head>
<body >

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
  <form action="UpdateClothes" method ="post" enctype="multipart/form-data">
  
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from clothes where clothes_id='"+id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  
  <div class="container contact">
	<div class="row">
		<div class="col-md-3">
			<div class="contact-info">
				<img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
				<h2>Contact Us</h2>
				<h4>We would love to hear from you !</h4>
			</div>
		</div>
		<div class="col-md-9">
			<div class="contact-form">
			<div class="form-group">
				          
				<input type="hidden" placeholder="First Name" name="id" value="<%=id %>" required>

				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">clothes_type&nbsp;<h9 style="color:red;">*</h9></label>
				  <div class="col-sm-10">          
					 <input type="text" placeholder="clothes type" name="clothes_type" value="<%=resultSet.getString("clothes_type") %>" required>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname" ></label>
				  <div class="col-sm-10">          
					<input type="file" placeholder="Last Name" name="clothes_image"  required>
				  </div>
				</div>
			<!--	<div class="form-group">
				  <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10">
					<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
				  </div>    -->
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">clothes_description:</label>
				  <div class="col-sm-10">          
					<input type="text" placeholder="Enter clothes description" name="clothes_description" value="<%=resultSet.getString("clothes_description") %>"  required >
				  </div>
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">clothes_price:</label>
				  <div class="col-sm-10">          
					<input type="text" placeholder="Enter clothes price" name="clothes_price" value="<%=resultSet.getString("clothes_price") %>"  required>
				  </div>
				</div>
				
				
		<!--  		<div class="form-group">
				  <label class="control-label col-sm-2" for="comment">Comment:</label>
				  <div class="col-sm-10">
					<textarea class="form-control" rows="5" id="comment"></textarea>
				  </div>
				</div>        -->
				
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="button">Update</button>
				  </div>
				</div>
				

			</div>
		</div>
	</div>

  </form>
  <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
<Style>
  
  body{
		background-color: transparent;
	}
	.contact{
		padding: 4%;
		height: 400px;
		
	}
	.col-md-3{
		background: #ff9b00;
		padding: 4%;
		border-top-left-radius: 0.5rem;
		border-bottom-left-radius: 0.5rem;
	}
	.contact-info{
		margin-top:10%;
	}
	.contact-info img{
		margin-bottom: 15%;
	}
	.contact-info h2{
		margin-bottom: 10%;
	}
	.col-md-9{
		background: #e6e6e6;
		padding: 3%;
		border-top-right-radius: 0.5rem;
		border-bottom-right-radius: 0.5rem;
	}
	.contact-form label{
		font-weight:600;
	}
	.contact-form button{
		background: #25274d;
		color: #fff;
		font-weight: 600;
		width: 25%;
	}
	.contact-form button:focus{
		box-shadow:none;
	}
	.contact-form{
		background:#e6e6e6;
	}
	.button{

    width: 200px;
    padding: 15px;
    text-align: center;
    margin: 20px 10px;
    border-radius: 25px;
    font-weight: bold;
    border: 2px solid #009688;
    background: #25274d;
    color: #fff;
    cursor: pointer;
    position: relative;
    overflow: hidden;
}
</Style>
</html>