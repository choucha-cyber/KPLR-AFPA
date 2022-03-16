<c:import url="headAdmin.jsp"></c:import>

<!-- row -->
<div class="row tm-content-row tm-mt-big">
	<div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
		<div class="bg-white tm-block h-100">
			<div class="row">
				<div class="col-md-8 col-sm-12">
					<h2 class="tm-block-title d-inline-block">Catalogue </h2>

				</div>
				<div class="col-md-4 col-sm-12 text-right">
					<a href="ajoutFormationAdmin.jsp" class="btn btn-small btn-primary">Ajouter formation</a>
				</div>
				<div class="col-md-4 col-sm-12 text-right">
					<a href="updateFormation.jsp" class="btn btn-small btn-primary">Modifier Formation</a>
				</div>
			</div>
			<div class="table-responsive">
				<table
					class="table table-hover table-striped tm-table-striped-even mt-3">
					<thead>
						<tr class="tm-bg-gray">
							<th scope="col">&nbsp;</th>
							<th scope="col">Titre</th>
							<th scope="col" class="text-center">Resumé</th>
							<th scope="col" class="text-center">Prix</th>
							<th scope="col">Date</th>
							<th scope="col">&nbsp;</th>
						</tr>
					</thead>
					<!-- ICI LISTE DES FORMATIONS AJOUTEES EN BDD -->
					<tbody>
						<tr>
							<th scope="row"><input type="checkbox" aria-label="Checkbox">
							</th>
							<td class="tm-product-name">1. BIG DATA - ARCHITECTURE ET INFRASTRUCTURE</td>
							<td class="text-center">blablabla</td>
							<td class="text-center">255</td>
							<td>2018-10-28</td>
							<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
						</tr>
						<tr>
							<th scope="row"><input type="checkbox" aria-label="Checkbox">
							</th>
							<td class="tm-product-name">2. BIG DATA - LES TECHNIQUES D'ANALYSE ET DE VISUALISATION</td>
							<td class="text-center">blablabla</td>
							<td class="text-center">260</td>
							<td>2018-10-24</td>
							<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
						</tr>
						<tr>
							<th scope="row"><input type="checkbox" aria-label="Checkbox">
							</th>
							<td class="tm-product-name">3. DATA ENGINEERING AVEC KAFKA, CASSANDRA ET SPARK</td>
							<td class="text-center">blablabla</td>
							<td class="text-center">440</td>
							<td>2019-02-14</td>
							<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
						</tr>
						<tr>
							<th scope="row"><input type="checkbox" aria-label="Checkbox">
							</th>
							<td class="tm-product-name">4. CLOUDERA - ADMINISTRATION D'UNE PLATEFORME</td>
							<td class="text-center">blablabla</td>
							<td class="text-center">655</td>
							<td>2019-03-22</td>
							<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
						</tr>
						
						
					</tbody>
				</table>
			</div>

			<div class="tm-table-mt tm-table-actions-row">
				<div class="tm-table-actions-col-left">
					<button class="btn btn-danger">Supprimer les formations sélectionnées</button>
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
							<li class="page-item"><a class="page-link" href="#">13</a></li>
							<li class="page-item"><a class="page-link" href="#">14</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col">
		<div class="bg-white tm-block h-100">
			<h2 class="tm-block-title d-inline-block">Catégories</h2>
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

			<a href="#" class="btn btn-primary tm-table-mt">Ajouter une Catégorie</a>
		</div>
	</div>
</div>

<c:import url="footerAdmin.jsp"></c:import>