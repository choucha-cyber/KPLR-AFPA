<c:import url="headAdmin.jsp"></c:import>

<!-- row -->
<div class="row tm-content-row tm-mt-big">
	<div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
		<div class="bg-white tm-block h-100">
			<div class="row">
				<div class="col-md-8 col-sm-12">
					<h2 class="tm-block-title d-inline-block">Catalogue</h2>

				</div>
				<div class="col-md-4 col-sm-12 text-right">
					<a href="ajoutFormationAdmin.jsp" class="btn btn-small btn-primary">Ajouter
						formation</a>
				</div>
				<div class="col-md-4 col-sm-12 text-right">
					<a href="updateFormation.jsp" class="btn btn-small btn-primary">Modifier
						Formation</a>
				</div>
			</div>
			<div class="table-responsive">
				<table
					class="table table-hover table-striped tm-table-striped-even mt-3">
					<thead>
						<tr class="tm-bg-gray">
							<th scope="col">&nbsp;</th>
							<th scope="col">Titre</th>
							<th scope="col" class="text-center">Code Formation</th>
							<th scope="col" class="text-center">Tarif</th>
							<th scope="col">Dates</th>
							<th scope="col">&nbsp;</th>
						</tr>
					</thead>
					<!-- ICI LISTE DES FORMATIONS AJOUTEES EN BDD -->
					<tbody>
						<c:forEach items="${formations}" var="formation">
							<tr>
								<th scope="row"><input type="checkbox"
									aria-label="Checkbox"></th>
								<td class="tm-product-name">${formation.titre }</td>
								<td class="text-center">${formation.code }</td>
								<td class="text-center">${formation.tarif }</td>
								<td>Du ${formation.dateDebut } au ${formation.dateFin }</td>
								<td data-bs-toggle="modal"
									data-bs-target="#idFormation-<c:out value="${formation.id_formation }" />">
								<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>

							</tr>
							
						</c:forEach>


					</tbody>
				</table>
			</div>

			<div class="tm-table-mt tm-table-actions-row">
				<div class="tm-table-actions-col-left">
					<button class="btn btn-danger">Supprimer les formations
						s&eacute;lectionn&eacute;es</button>
				</div>
				<div class="tm-table-actions-col-right">
					<span class="tm-pagination-label">Page</span>
					<nav aria-label="Page navigation" class="d-inline-block">
						<ul class="pagination tm-pagination">
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><span class="tm-dots d-block">...</span>
							</li>

						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col">
		<div class="bg-white tm-block h-100">
			<h2 class="tm-block-title d-inline-block">Cat&eacute;gories</h2>
			<table class="table table-hover table-striped mt-3">
				<tbody>
					<tr>
						<td>1. BIG DATA</td>
						<td class="tm-trash-icon-cell"><i
							class="fas fa-trash-alt tm-trash-icon"></i></td>
					</tr>
					<tr>
						<td>2. PYTHON</td>
						<td class="tm-trash-icon-cell"><i
							class="fas fa-trash-alt tm-trash-icon"></i></td>
					</tr>
					<tr>
						<td>3. GESTION PROJET</td>
						<td class="tm-trash-icon-cell"><i
							class="fas fa-trash-alt tm-trash-icon"></i></td>
					</tr>

				</tbody>
			</table>

			<a href="#" class="btn btn-primary tm-table-mt">Ajouter une
				Cat&eacute;gorie</a>
		</div>
	</div>
</div>

<c:import url="footerAdmin.jsp"></c:import>