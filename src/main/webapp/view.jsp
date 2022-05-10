<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <title>REGISTRATION | ALUMNI | CSE dept</title>
  </head>
  <body>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
<div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid" style="background:#8c1515;">
		<a class="navbar-brand" href="#" style=" color: white;">
			<img src="download.png" height="50px" width="50px"></a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
    	<div class="collapse navbar-collapse" id="navbarNavDropdown">
      		<ul class="navbar-nav">
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">events</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link" href="#" style=" color: white;">Gallery</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link" href="#" style=" color: white;">Research Clubs</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">MOUs</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Dept. Library</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Griviences</a>
        		</li>
        		<li class="nav-item">
          			<a class="nav-link active" aria-current="page" href="#" style=" color: white;">Circulars</a>
        		</li>
        		<li class="nav-item dropdown">
          			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false" style=" color: white;">
            			membership
          			</a>
          			<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            			<li><a class="dropdown-item" href="#">Faculty</a></li>
            			<li><a class="dropdown-item" href="#">Students</a></li>
            			<li><a class="dropdown-item" href="alumni_home_page.html">Alumni</a></li>
          			</ul>
        		</li>
      		</ul>
    	</div>
  	</div>
</nav>
</div>


<div style="padding: 100px 0px">
  <%
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_cse","root","09112001");
   PreparedStatement st = con.prepareStatement("select * from alumini_table");
	ResultSet rs = st.executeQuery();
   %> 
   <% while(rs.next()){%>
   <div class='row'>
   	<div class='col-1'>
   	</div>
   	<div class='col-10'>
   	 <div class="card mb-3">
  	<div class="row">
    	<div class="col-md-2">
      		<img src="download.png" class="img-fluid rounded-start" alt="profile pic">
    	</div>
    	<div class="col-md-10">
      		<div class="card-body">
      		    <h5 class="card-title"><%= rs.getString(3)+" "+rs.getString(4) %></h5>
        		<h6 class="card-title"><%= rs.getString(1)%> </h6>
        			<p class="card-text">
        				<div class='row'>
        					<div class='col'>
        						<b>Company</b> : <%= rs.getString(10) %>
        					</div>
        					<div class='col'>
        						<b>Designation</b> : <%= rs.getString(11) %>
        					</div>
        				</div>
        				<div class='row'>
        					<div class='col'>
        						<b>Package</b> <%= rs.getString(12)+" Rs/year" %>
        					</div>
        					<div class='col'>
        						<b>Email</b> : <%= rs.getString(5) %>
        					</div>
        				</div>
        			
        			    </p>
        			<p class="card-text">
        				<div class='row'>
        					<div class='col'>
        						<a href="<%= rs.getString(15) %>" width="20px" height="20px"><i class="bi bi-instagram"></i></a>
        					</div>
        					<div class='col'>
        						<a href="<%= rs.getString(16) %>"><i class="bi bi-facebook"></i></a>
        					</div>
        					<div class='col'>
        						 <a href="<%= rs.getString(13) %>"><i class="bi bi-linkedin"></i></a>
        					</div>
        					<div class='col'>
        						<a href="<%= rs.getString(14) %>"><i class="bi bi-twitter"></i></a>
        					</div>
        				</div>
        			
        			    </p>    
      		</div>
    	</div>
  	</div>
	</div>
   	</div>
   	<div class='col-1'>
   	</div>
   </div>
 <% }%>
</div>

<div style="position:fixed; bottom:0; height:auto; margin-top:40px;
            width:100%; text-align:center; background:#8c1515; color: white; padding: 3px 0px" class="container-fluid">
            <FOOTER><p><center>Copyright &copy; CSE | RGUKT-Basar. All Rights Reserved. Contact Us: +91 80081 55105</center></p></FOOTER>

</div>

  </body>
</html>
