<c:import url="header.jsp"></c:import>


<div class="container">
	<div class="row tm-content-row tm-mt-big">
		<div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
			<div class="bg-white tm-block h-100">
				<div class="row">
					<div class="col-md-8 col-sm-12">
						<h2 class="tm-block-title d-inline-block">Commande</h2>

					</div>
					<div class="col-md-4 col-sm-12 text-right">
						<a href="commande.jsp" class="btn btn-small btn-primary">retournez aux choix</a>
					</div>
				</div>
				<div class="table-responsive">
					<table
						class="table table-hover table-striped tm-table-striped-even mt-3">
						<thead>
							<tr class="tm-bg-gray">

								<th scope="col" id="Nom"><c:out value="${formation.titre}"></c:out></th>
								<th scope="col" id="prix" class="text-center"><c:out
										value="${produit.prix }"></c:out></th>
								<th scope="col">&nbsp;</th>
							</tr>
						</thead>

						<tbody>


							<tr>
								<td id="titreFormation" class="tm-product-name"></td>
								<td id="tarifFormation" class="text-center"></td>
								<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
							</tr>



							<tr>
								<td id="totalCommande" class="tm-product-name"
									style="font-weight: bolder">TOTAL COMMANDE</td>
								<td class="text-center">0</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tm-table-mt tm-table-actions-row">
					<div class="tm-table-actions-col-left">
						<button class="btn btn-danger">
							<a href="paiement.jsp">COMMANDER</a>
						</button>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="footer.jsp"></c:import>

