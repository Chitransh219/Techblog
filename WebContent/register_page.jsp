<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.banner-background{
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 99% 97%, 72% 100%, 40% 96%, 0 100%, 0 0);
	}
</style>


<title>Register Page</title>
</head>
<body>
		
	<!-- navbar -->
	
	<%@include file="normal_navbar.jsp" %>
	
	<main class="primary-background p-5 banner-background">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center primary-background text-white">
					<span class="fa fa-user-circle fa-3x"></span><br/>
					Register here
					</div>
					<div class="card-body">
						<form id="reg-form" action="RegisterServlet" method="POST">
						  <div class="mb-3">
						    <label for="user_name" class="form-label">User Name</label>
						    <input type="text" class="form-control" name="user_name" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
						  </div>
						
						  <div class="mb-3">
						    <label for="exampleInputEmail1" class="form-label">Email address</label>
						    <input type="email" class="form-control" name="user_email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
						    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
						  </div>
						  
						  
						  <div class="mb-3">
						    <label for="exampleInputPassword1" class="form-label">Password</label>
						    <input type="password" name="user_password" class="form-control" id="exampleInputPassword1">
						  </div>
						  
						  <div class="mb-3">
						    <label for="gender" class="form-label">Select Gender</label>
						    <br/>
						    <input type="radio" id="gender" name="gender" value="male">Male
						    <input type="radio" id="gender" name="gender" value="female">Female
						  </div>
						  
						  <div class="mb-3">
						  	<textarea name="about" class="form-control" id="" rows="5" placeholder="Enter Something about yourself"></textarea>
						  </div>
						  
						  <div class="mb-3 form-check">
						    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
						    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
						  </div>
						  
						  
						  <div class="container text-center" id="loader" style="display: none;">
						  <span class="fa fa-refresh fa-spin fa-4x"></span>
						  <h4>Please wait..</h4>
						  </div>
						  <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>

<!--javascript-->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("loaded.......")
			
			$('#reg-form').on('submit', function(event){
				event.preventDefault();
				
				let form=new FormData(this);
				
				$("#submit-btn").hide();
				$("#loader").show();
				
				//send register servlet
				
				$.ajax({
					url: "RegisterServlet",
					type: "POST",
					data: form,
					success: function(data, textStatus, jqXHR){
						console.log(data)
						$("#submit-btn").show();
						$("#loader").hide();
						
						if(data.trim()=="done"){
							swal("register successfully.....we are redirecting to login page")
							.then((value) => {
							  window.location="login_page.jsp"
							});	
						}
						else{
							swal(data);
						}
						
					},
					error: function(jqXHR, textStatus, errorThrown){
						$("#submit-btn").show();
						$("#loader").hide();
						swal("something went wrong..try again");
					},
					processData: false,
					contentType: false
				});
			});
		});
	</script>
</body>
</html>