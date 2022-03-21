<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>KPLR</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
  rel="stylesheet"
/>
<link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
<link rel="stylesheet" href="slick/slick.css">
<link rel="stylesheet" href="slick/slick-theme.css">
<link rel="stylesheet" href="magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/tooplate-infinite-loop.css" />

</head>

<body>

	<!-- Hero section -->
	<section id="infinite" class="text-white tm-font-big tm-parallax">
		<!-- Navigation -->
		<nav class="navbar navbar-expand-md tm-navbar" id="tmNav">
			<div class="container">
				<div class="tm-next">
					<a href="#infinite" class="navbar-brand"><img
						style="width: 150px; border-radius: 15px" alt="logo kplr"
						src="img/logos/logo_kplr.jpg"></a>
				</div>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars navbar-toggler-icon"></i>
				</button>
				
								
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
					<!-- <ul class="navbar-nav ml-auto"> -->
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/index#infinite">Qui sommes nous</a></li>
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/index#whatwedo">Nos métiers</a></li>
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/catalogue">Notre catalogue formation</a></li>
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/chat#testimonials">Nos clients</a></li>
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/chat#gallery">Portail Maroc</a></li>
						<li class="nav-item"><a class="nav-link tm-nav-link"
							href="<%=request.getContextPath()%>/kplr/chat#contact">Contact</a></li>
						<c:if test="${empty client }">
						<li class="nav-item">							
						 <%-- <a class="nav-link tm-nav-link" href="<%= request.getContextPath() %>/kplr/inscriptionUser">Sign Up</a>
					 --%>
					 <a class="nav-link tm-nav-link" href="<%=request.getContextPath()%>/kplr/index#inscriptionUser">Sign Up</a>
					</li>
					<li class="nav-item">
					
					<a href="#loginUser" class="nav-link tm-nav-link">Log in</a>
					
					</li>
					</c:if>
					<c:if test="${not empty client }">
					<li class="nav-item">
					<a href="#" class="nav-link tm-nav-link">Bonjour ${ client.nom}</a>
					</li>
					<li class="nav-item">
					<a href="<%= request.getContextPath() %>/kplr/logoutUser" class="nav-link tm-nav-link">logout</a>
					
					</li>
					</c:if>
					</ul>
				</div>
			</div>
		</nav>
					
		<br>