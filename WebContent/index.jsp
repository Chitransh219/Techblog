<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
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

<title>Tech Blog</title>
</head>
<body>
	<!-- navbar -->
	
	<%@include file="normal_navbar.jsp" %>
	
	<!-- banner -->
	
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron primary-background text-white banner-background" style="height:78vh">
			<div class="container">
			<div class="container">
				<h3 class="display-3">Welcome to Tech Blog</h3>
				<p>Welcome to technical blog, world of technology
				A programming language is a formal language comprising a set of strings that produce various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms.
				</p>
				<p>
				Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages.
				</p>
				
				<button class="btn btn-outline-light btn-lg my-5"><span class="	fa fa-user-plus"></span> Start ! its Free</button>
				<a href="login_page.jsp" class="btn btn-outline-light btn-lg my-5"><span class="	fa fa-user-circle fa-spin"></span> Login</a>
			</div>
			</div>
		</div>
	</div>
	
	<div class="container my-5">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container my-5">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
  					
  					<div class="card-body">
    				<h5 class="card-title">Java Programming</h5>
    				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    				<a href="#" class="btn btn-primary primary-background text-white">Read more</a>
  				</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--javascript-->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</body>
</html>