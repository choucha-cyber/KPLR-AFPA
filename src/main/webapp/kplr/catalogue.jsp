<c:import url="header.jsp"></c:import>

<div class="container">
	<section id="catalogue" class="tm-section-pad-top">
		<main>


			<div class="row tm-testimonials-carousel"
				style="width: 85%; margin: auto;">

				<c:forEach items="${formations}" var="formation">


					<article class="col-lg-4 mb-5 mb-lg-0">
						<div class="card" style="width: 18rem; background-color: #EDE7E6;">

							<div class="card-body">
								<h4 class="card-title">${formation.titre }</h4>
								<h5 class="card-title pricing-card-title">prix :
									${formation.tarif }&euro;</h5>
								<ul class="list-unstyled mt-3 mb-4">
									<li>Du ${formation.dateDebut }</li>
									<li>au ${formation.dateFin }</li>

								</ul>


								<a style="padding:5px;"
									href="<%=request.getContextPath()%>/kplr/commande?idFormation=<c:out value='${formation.id_formation }'/>"
									type="button"
								>voir d&eacute;tails
								</a>
							</div>

						</div>
						<br>

					</article>


				</c:forEach>



			</div>


		</main>

	</section>

</div>
<br>
<br>
<c:import url="footer.jsp"></c:import>
