<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Book here</title>
</head>


<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" >
    <span class="navbar-toggler-icon"></span>
  </button>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="#"><b>Home </b><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><b>services</b></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="index.jsp#footer"><b>About us</b></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#"><b>Customer</b></a>
      </li>
      <li>
      <form action="LogoutCustomer" method="post">
      <button class="nav-link" type="submit" >Logout</button>
      </form>
      </li>
      
     <!--  <li class="nav-item">
        <a class="nav-link disabled" href="#">Admin</a>
      </li> -->
    </ul>
   
  </div>
</nav>
 
 <!--  Image slider -->
  <h2 style="text-color:whitesmoke;">WEDDING GOWNS AND SUIT BOOKING SYSTEM</h2>
  <form action="BookingServlet" method ="post">
  

  
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
				  <label class="control-label col-sm-2" for="fname">clothes_id&nbsp;<h9 style="color:red;">*</h9></label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="clothes_id" placeholder="Enter your Names" name="clothes_id" readonly value="<%=request.getParameter("id")%>">
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname">customer_id:</label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="customer_id" placeholder="Enter e-mail" name="customer_id"  readonly value="<%= session.getAttribute("customer_id") %>">
				  </div>
				</div>
			<!--	<div class="form-group">
				  <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10">
					<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
				  </div>    -->
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">booked_date</label>
				  <div class="col-sm-10">          
					<input type="date" class="form-control" id="booked_date" placeholder="Enter phone number" name="booked_date" required="required">
				  </div>
				</div>
				
				<div class="form-group">
				  <label class="control-label col-sm-2" for="fname">currentDate:</label>
				  <div class="col-sm-10">          
					<input type="date" class="form-control" id="currentDate" placeholder="Enter address" name="currentDate"  hidden="">
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
					<button type="submit" class="button">book it</button>
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
		background: light-grey;
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