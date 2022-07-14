<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList" %>
 <%@page import="com.vehicle.Booking" %>
  <%@page import="com.vehicle.Vehicle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="https://www.freeiconspng.com/thumbs/car-png/red-sports-car-png-1.png" type="image/x-icon">
</head>
<body>
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    	if(session.getAttribute("user_id") == null)
	    		response.sendRedirect("/Vehicle/login");
	  
	    	session = request.getSession();
	    	String name = (String)session.getAttribute("name");
	%>

	<style>
    	body {
             background-color: #dcd9d9; 
            font-family: 'Poppins', sans-serif;
        }
        
        .navbar {
            background-color: #0f191a !important;
        }
            
		.logout {
			color: white;
			margin-right: 2rem;
			font-size: 1.1rem;
		}
        
        .navbar-brand {
        	margin-left: 1.5rem !important;
        	font-family: 'Poppins', sans-serif !important;
        	font-size: 2.5rem !important;
        }
        
        .act-cust {
        	color: #D6E4F0!important;
        	border-bottom: 4px solid white !important;
        }
       
       .nav-item {
       		font-family: 'Poppins', sans-serif !important;
       		font-size: 1.2rem;
       		margin-left: 1rem;
       }
       
        #logo{
  		background-size: 150px;
  		width: 100px;
  		height: 100px;
  		border: solid 0px rgb(247, 247, 247);
  		border-radius: 200px;
		max-zoom: 10px;
      	margin-left: 5px;
		}
       
       .nav-link {
       		/*color: white !important;*/
       }
       
       .nav-name {
			color: #F8F3D4 !important;
		}
       
       .vehicle-vehicled {
			width: 65.5rem;
			margin-top: 2rem;
			border-radius: 10px;
			box-shadow: 0px 0px 5px 5px rgb(60, 81, 85);
			background-color: whitesmoke;
			margin-left: 15rem;
			margin-bottom: 2rem;
			padding-left: 3rem;
		}
		
		.veh-img {
			width: 500px;
			height: 300px;
			border-radius: 30px;
			margin-left: 14rem;
			margin-top: 20px;
		}
		
		.vehicled-head {
			margin-top: 20px;
			margin-left: 15rem;
		}
		
		.book-btn {
			margin-left: 30rem;
			margin-bottom: 1rem;
			padding :auto;
		}
		
		.table {
			margin-top: 20px;
		}
		
			/* Footer Section */

		#anand {
		    font-family: 'Ubuntu', sans-serif;
		    font-size: 20px;
		    padding-bottom: 15px;
		    margin-left: 6rem;
		}
		
		.fth {
		    margin-top: 70px;
		}
		
		.footer {
		    position: absolute;
		    margin-top: 2rem;
		}
		
		.footer-item {
		    padding-top: 10px;
		    margin-left: 550px;
		}
		
		.social-icon {
		    color: #000;
		    margin-left: 70px;
		    font-size: 30px;
		    padding-bottom: 20px;
		}
		
		#copyright {
		    font-family: 'Ubuntu', sans-serif;
		    font-size: 16px;
		    margin-left: 106px;
		}
		
		.nav-name {
			color: #F8F3D4 !important;
		}
		
       
    </style>
	
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
        <img id="logo" src="https://www.freeiconspng.com/thumbs/car-png/red-sports-car-png-1.png" alt="logo">
            <a class="navbar-brand" href="#">Vehicle_Trade</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                    <a class="nav-link active" href="/Vehicle/dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="/Vehicle/car">Buy a Car</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="/Vehicle/bike">Buy a Bike</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active" href="/Vehicle/sell">Sell your vehicle</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active act-cust"" href="/Vehicle/orders">My Orders</a>
                    </li>
                    <li class="nav-item">
                    	<a class="nav-link active nav-name"><%= name %></a>
                    </li>
                </ul>
                <a href="/Vehicle/logout"><Button class="btn btn-danger logout">Logout</Button></a><br /><br />
            </div>
        </div>
     </nav>
	
	<div class="vehicled">
	  <div class="vehicled-body">
	    
	    <div class="row">
	    	
	    	<div class="col-md-9">
			<% ArrayList<Booking> bookingList = (ArrayList)request.getAttribute("bookingList"); %>
			<% ArrayList<Vehicle> vehicleList = (ArrayList)request.getAttribute("vehicleList"); %>
    
    		<h2 class="vehicled-head">Your Orders <%=bookingList.size()%></h2>
			
   			<% if(!bookingList.isEmpty()) { %>
				<% for(int i=0; i<bookingList.size(); i++){ %>
					<% Booking booking = (Booking)bookingList.get(i); %>
					<% Vehicle vehicle = (Vehicle)vehicleList.get(i); %>
					<div class="vehicled vehicle-vehicled">
						<div class="vehicled-body">
							<div class="row">
								<div class="col-md-12">
									<img class="veh-img" src="<% out.println(vehicle.getImage()); %>">
								</div>
								
							</div>
							
							<table class="table table-hover table-borderless">
								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Booking_id</th>
												<th scope="col">Date</th>
												<th scope="col">User_id</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(booking.getBooking_id()); %></td>
												<td><% out.println(booking.getDate()); %></td>
												<td><% out.println(booking.getUser_id()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>
								
								
								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Vehicle_id</th>
												<th scope="col">Type</th>
												<th scope="col">Model</th>
												<th scope="col">Color</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(vehicle.getV_id()); %></td>
												<td><% out.println(vehicle.getType()); %></td>
												<td><% out.println(vehicle.getModel()); %></td>
												<td><% out.println(vehicle.getColor()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Reg. Date</th>
												<th scope="col">Price</th>
												<th scope="col">Area</th>
												<th scope="col">City</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(vehicle.getReg_date()); %></td>
												<td><% out.println(vehicle.getPrice()); %></td>
												<td><% out.println(vehicle.getArea()); %></td>
												<td><% out.println(vehicle.getCity()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>


								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">State</th>
												<th scope="col">Zip</th>
												<th scope="col">Owner_id</th>
												<th scope="col">Fuel_type</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(vehicle.getState()); %></td>
												<td><% out.println(vehicle.getZip()); %></td>
												<td><% out.println(vehicle.getOwner_id()); %></td>
												<td><% out.println(vehicle.getFuel_type()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<thead>
											<tr>
												<th scope="col">Gear</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><% out.println(vehicle.getGear()); %></td>
											</tr>
										</tbody>		
									</div>
								</div>
							</table>
							<div class="row">
								<div class="col-md-12">
									<form action="/Vehicle/orders" method="POST">
										<input type="hidden" name="vehicle_id" value="<%= booking.getVehicle_id() %>">
										<button type="submit" class="btn btn-dark book-btn" name="booking_id" value="<%= booking.getBooking_id() %>">Cancel</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				<% } %>
			<% } %>
		</div>
	    	
	    </div>
	    
	  </div>
	</div>
	
	<!-- Footer -->

	 
	 <hr size="5px">
	 <footer class="footer">
		<div class="footer-item">
		<h1 id="anand">Developed by Anand Patidar</h1>
		<a href="https://www.facebook.com/anand.patidar.5621/"><i class="social-icon fab fa-facebook-f"></i></a>
		<a href="https://twitter.com/Anandpa90626874"><i class="social-icon fab fa-twitter"></i></a>
		<a href="https://www.instagram.com/anand_p_patidar/"><i class="social-icon fab fa-instagram"></i></a>
		<a href = "mailto:anandpatidar.999@gmail.com"><i class="social-icon fas fa-envelope"></i></a>
		<p id="copyright">Copyright 2022 Vehicle_Trade</p>
		</div>
	</footer>

    <!-- jQuery and JS bundle w/ Popper.js -->
    <script src="https://kit.fontawesome.com/b6a0edf9cb.js" crossorigin="anonymous"></script>
    
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>