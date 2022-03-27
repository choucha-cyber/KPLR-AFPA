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
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
<link rel="stylesheet" href="slick/slick.css">
<link rel="stylesheet" href="slick/slick-theme.css">
<link rel="stylesheet" href="magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/tooplate-infinite-loop.css" />

<style>
.logos_clients {
	width: 12%;
}
</style>

</head>

<body>
	<div class="container">

		<!-- Hero section -->
		<section class="text-white tm-font-big tm-parallax">

			<!-- Navigation -->
			<nav style="font-size: 1.3rem;">
				<ul class="nav">
					<li class="nav-item"><a href="index" class="navbar-brand"><img
							style="width: 150px; border-radius: 15px" alt="logo kplr"
							src="img/logos/logo_kplr.jpg"></a></li>
					<li class="nav-item"><a class="nav-link" href="index"> Qui
							sommes nous</a></li>
					<li class="nav-item"><a class="nav-link " href="metiers">
							Nos m&eacute;tiers</a></li>
					<li class="nav-item"><a class="nav-link" href="clients">
							Nos Clients</a></li>
					<li class="nav-item"><a class="nav-link" href="maroc">
							Portail Maroc</a></li>
					<li class="nav-item"><a class="nav-link" href="contact">
							Contact</a></li>
					<c:if test="${empty client }">
						<li class="nav-item"><a class="nav-link"
							href="inscriptionUser">Sign Up/Login</a></li>
					</c:if>
					<c:if test="${not empty client }">
						<li class="nav-item"><a href="#" class="nav-link">Bonjour
								${ client.prenom}</a><a href="logoutUser" class="nav-link">logout</a></li>
					</c:if>
				</ul>
			</nav>
			
		
		</section>

	</div>
	