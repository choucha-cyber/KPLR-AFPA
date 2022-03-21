<c:import url="header.jsp"></c:import>

<div class="container">
	<section id="catalogue" class="tm-section-pad-top">
		<main style="margin-top: -650px">
			<button type="button"
				style="float: right; position: fixed; top: 300px; right: 20px">
				<a href="commande">panier<i class="fas fa-shopping-cart"></i>
				<span id="valeurPanier"></span>
				</a>
			</button>


		<div class="row">
	
			<c:forEach items="${formations}" var="formation">

				<article class="col-lg-4 mb-5 mb-lg-0" style="margin-bottom:5rem;">
					<div class="card" style="width: 18rem;">

						<div class="card-body">
							<h4 class="card-title">${formation.titre }</h4>
							<h5 class="card-title pricing-card-title">${formation.tarif }&euro;</h5>
							<ul class="list-unstyled mt-3 mb-4">
								<li>Du ${formation.dateDebut }</li>
								<li>au ${formation.dateFin }</li>

							</ul>
							<a href="#detailFormation" style="" type="button"
								class="w-100 btn btn-lg btn-outline-primary">choisir</a>
						</div>
					</div>

				</article>
				

			</c:forEach>
			
		</div>
	

	</main>
	
</section>

</div>

<c:import url="footer.jsp"></c:import>
