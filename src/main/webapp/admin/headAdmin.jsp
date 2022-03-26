<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Site admin</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">


<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet" href="css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css"
	type="text/css" />
<!-- http://api.jqueryui.com/datepicker/ -->
<!-- CSS only -->

<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="css/tooplate.css">

</head>

<body id="reportsPage">
	<div class="" id="home">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-xl navbar-light bg-light"> 
					
						<a class="navbar-brand" href="../kplr/index"> 
						<i class="fas fa-3x fa-tachometer-alt tm-site-icon">kplr
							<p style="font-size: 0.5rem;">allez sur le site client</p></i></a>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">

							<ul class="navbar-nav mx-auto">

								<li class="nav-item"><a class="nav-link" href="loginAdmin">Login</a></li>

								<li class="nav-item"><a class="nav-link"
									href="formationsAdmin">Catalogue</a></li>

								<li class="nav-item"><a class="nav-link" href="users">clients</a></li>

								<li class="nav-item"><a class="nav-link" href="compteAdmin">admin</a></li>

								<c:if test="${not empty admin }">
									<li class="nav-item"><a class="nav-link" href="chatAdmin">Chat</a>
										<c:if test="${totalUnReadChat !=0 }">
											<span class="badge badge-danger float-right">${totalUnReadChat}</span>

										</c:if></li>
									<li class="nav-item"><a class="nav-link"
										href="messageAdmin">Message</a> <c:if
											test="${countMessageUnRead !=0 }">
											<span class="badge badge-danger float-right">${countMessageUnRead}</span>

										</c:if></li>
								</c:if>
								<c:if test="${empty admin }">
									<li class="nav-item"><a class="nav-link" href="loginAdmin">Chat</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="loginAdmin">Message</a>
									</li>
								</c:if>
								<li class="nav-item"><a class="nav-link d-flex"
									href="logoutAdmin"> <i
										class="far fa-user mr-2 tm-logout-icon"></i> <span>Déconnexion</span>
								</a></li>
							</ul>
							<br> <span><c:out value="Bienvenu ${admin.prenom }"></c:out></span>

						</div></nav>

				</div>
			</div>