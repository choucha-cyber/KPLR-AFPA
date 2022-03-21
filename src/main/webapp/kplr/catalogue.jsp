<c:import url="header.jsp"></c:import>

<section id="catalogue" class="tm-section-pad-top">

	<div class="container"></div>
	</div>
	</div>

	<button type="button"
		style="float: right; position: fixed; top: 300px; right: 50px">
		<a href="commande">mon panier<i class="fas fa-shopping-cart"></i>
			<span id="valeurPanier"></span></a>
	</button>
	<!-- END fh5co-intro-section -->
	<div id="fh5co-product-section">
		<div class="container">



			<!-- Bootstrap core CSS -->
			<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

			<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>



			<link href="pricing.css" rel="stylesheet">
			</head>
			<body>

				<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path
						d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
  </symbol>
</svg>

				<div class="container py-3">

					<h1 class="display-4 fw-normal">Nos Formations</h1>
					<p class="fs-5 text-muted">Choisissez nos formations dans notre
						catalogue ou consultez-nous pour du sur-mesure</p>


					<main>


						<div class="row">
							<c:forEach items="${formations}" var="formation">
								
								<article class="col-lg-4 mb-5 mb-lg-0">
									<div class="card" style="width: 18rem;">
									
										
										<div class="card-body">
											<h4 class="card-title">${formation.titre }</h4>
											<h5 class="card-title pricing-card-title">
												${formation.tarif }&euro;</h5>
											<ul class="list-unstyled mt-3 mb-4">
												<li>Du ${formation.dateDebut }</li>
												<li>au ${formation.dateFin }</li>

											</ul>
											<!-- <a href="detailFormation" style="" type="button"
											class="w-100 btn btn-lg btn-outline-primary">voir details</a> -->
										</div>
										<a href="#" class="btn btn-primary">détails</a> <br> <br>
									</div>
								</article>

							</c:forEach>
						</div>

					</main>