<c:import url="headAdmin.jsp"></c:import>

<!-- row -->
<div class="row tm-content-row tm-mt-big">
	<!-- <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col"> -->
	<div class="col-lg-12 tm-md-12 tm-sm-12 tm-col">
		<div class="bg-white tm-block h-100">
		<h1 class="text-center"> Catalogue</h1>
			<div class="row">
				
				<div class="col-md-4 col-sm-12 text-right ">				
					<a href="ajoutFormationAdmin.jsp" class="btn btn-small btn-dark">Ajouter
						formation</a>
				</div>				
			</div>
			<div class="table-responsive">
				<table
					class="table table-hover table-striped tm-table-striped-even mt-3" id="formationTable"> 
					<thead>
						<tr class="tm-bg-gray">
							<th scope="col">&nbsp;</th>
							<th scope="col">Titre</th>
							<th scope="col" class="text-center">Code Formation</th>
							<th scope="col" class="text-center">Tarif</th>
							<th scope="col">Dates</th>
							<th scope="col"></th>
							<th scope="col"></th>
							
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
								<td><a href="<%=request.getContextPath()%>/admin/updateFormation?formationId=<c:out value="${formation.id_formation }" />"><i class="fas fa-pencil-alt tm-pencil-icon text-dark"></i></a></td>
								<td><i class="fas fa-trash-alt tm-trash-icon" data-bs-toggle="modal"
					data-bs-target="#deleteModal<c:out value='${formation.id_formation}'/>"></i>
								<div class="modal fade"
						id="deleteModal<c:out value='${formation.id_formation }'/>"
						tabindex="-1" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title text-dark" id="exampleModalLabel">Supprimer</h5>
									<button type="button" class="btn-close btn-dark"
										data-bs-dismiss="modal" aria-label="Close">X</button>
								</div>
								<div class="modal-body">Voulez vous vraiement supprimer la formation
									 <b>${formation.titre}</b></div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Non</button>
									<a href="<%= request.getContextPath() %>/admin/formationsAdmin?formationId=<c:out value='${formation.id_formation }'/>">
										<button type="button" class="btn btn-dark">Oui</button>
									</a>
								</div>
							</div>
						</div>
					</div> 
				
								</td>								

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
				
			</div>
		</div>
	</div>

	
</div>

<c:import url="footerAdmin.jsp"></c:import>