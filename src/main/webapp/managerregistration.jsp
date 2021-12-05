<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

  <form action="Registeringmanager" method ="post">
  

  
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
				  <label class="control-label col-sm-2" for="fname">manager_names&nbsp;<h9 style="color:red;">*</h9></label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="manager_names" placeholder="Enter your Names" name="manager_names" required="required">
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname">manager_email:</label>
				  <div class="col-sm-10">          
					<input type="email" class="form-control" id="manager_email" placeholder="Enter e-mail" name="manager_email" required="required">
				  </div>
				</div>
			<!--	<div class="form-group">
				  <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10">
					<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
				  </div>    -->
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">manager_username:</label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="manager_username" placeholder="Enter phone number" name="manager_username" required="required">
				  </div>
				</div>
		
				
					<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">manager_password:</label>
				  <div class="col-sm-10">          
					<input type="password" class="form-control" id="manager_password" placeholder="Enter password" name="manager_password" required="required">
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
					<button type="submit" class="button">register manager</button>
				  </div>
				</div>
				

			</div>
		</div>
	</div>

  </form>
 
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
		background: #fff;
		padding: 3%;
		border-top-right-radius: 0.5rem;
		border-bottom-right-radius: 0.5rem;
		  background-color: rgba(0,0,0,0.1); /* Black background with opacity */
  z-index: 2; 
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
  
  
  
   
    <!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <form action="Registeringmanager" method ="post">
 <table>
<tr><td>manager_names</td><td><input type="text" name="manager_names"></td></tr>
<tr><td>manager_email</td><td><input type="text" name="manager_email"></td></tr>
<tr><td>manager_username</td><td><input type="text" name="manager_username"></td></tr>
<tr><td>manager_password</td><td><input type="password" name="manager_password"></td></tr> 
<tr><td></td><td><input type="submit" value="register manager"></td></tr> 
  </table>
  </form>
</body>
</html> -->
