<c:import url="headAdmin.jsp"></c:import>

<!--<c:if test="${ !empty sessionScope.nom}">
        <p> ${ sessionScope.prenom } est bien connect&eacute;!</p>
  	</c:if>
    
    <c:out value="Bonjour ${admin.prenom } ${admin.nom }" />	
    
    -->

	<c:if test="${exist == 'false' }">
		<div class="alert alert-success" role="alert">
		  F&eacute;licitation, compte cr&eacute;e
		</div>
	
	</c:if>
	
	<c:if test="${exist }">
		<div class="alert alert-danger" role="alert">
		  Oups, le mail existe deja !
		</div>
	
	</c:if>
	
	<!-- row -->
<div class="row tm-content-row tm-mt-big">
	<div class="tm-col tm-col-big" >
		<div class="bg-white tm-block" style="margin-right: -150px;">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title d-inline-block">liste des comptes</h2>
				</div>
			</div>

			<!-- LISTE DES ADMIN -->
			

				<div class="table-responsive">
					<table
					class="table table-hover table-striped tm-table-striped-even mt-3"
					id="adminTable">
						<thead>
						<tr class="tm-bg-gray">
							
							<th scope="col">Nom</th>
							<th scope="col" class="text-center">prenom</th>
							<th scope="col" class="text-center">Email</th>
							<th scope="col" class="text-center">delete</th>
						
						</tr>
						</thead>
					
						<tbody>
						<c:forEach items="${admins}" var="admin">
							<tr>
								<td class="tm-product-name">${admin.nom }</td>
								<td class="text-center">${admin.prenom }</td>
								<td class="text-center">${admin.email }</td>
								<td><i class="fas fa-trash-alt tm-trash-icon" data-bs-toggle="modal"
									data-bs-target="#deleteModal<c:out value='${admin.id_admin}'/>"></i>
									<div class="modal fade"
										id="deleteModal<c:out value='${admin.id_admin}'/>"
										tabindex="-1" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title text-dark" id="exampleModalLabel">Supprimer</h5>
													<button type="button" class="btn-close btn-dark"
														data-bs-dismiss="modal" aria-label="Close">X</button>
												</div>
												<div class="modal-body">
													Voulez vous vraiement supprimer cet admin <b>${admin.nom}  ${admin.prenom}</b>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Non</button>
													<a
														href="<%= request.getContextPath() %>/admin/compteAdmin?adminId=<c:out value='${admin.id_admin }'/>">
														<button type="button" class="btn btn-dark">Oui</button>
													</a>
												</div>
											</div>
										</div>
									</div></td>

							</tr>

						</c:forEach>


					</tbody>
				</table>
			</div>

	
		</div>
	</div>




	<!-- CREATION COMPTE ADMIN -->
	<div class="tm-col tm-col-big">
		<div class="bg-white tm-block" style="margin-left: -100px;">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title">Cr&eacute;ation compte admin</h2>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<form method="post"
						action="<%=request.getContextPath()%>/admin/compteAdmin"
						class="tm-signup-form">
						<div class="form-group">
							<label for="nom">Nom</label> <input placeholder="Nom" id="nom"
								name="nom" type="text" class="form-control validate">
						</div>
						<div class="form-group">
							<label for="prenom">Pr&eacute;nom</label> <input
								placeholder="prenom" id="prenom" name="prenom" type="text"
								class="form-control validate">
						</div>
						<div class="form-group">
							<label for="email">email</label> <input
								placeholder="email@email.com" id="email" name="email"
								type="email" class="form-control validate">
							<div id="errorEmail"></div>
						</div>
						<div class="form-group">
							<label for="password">Mot de passe</label> <input
								placeholder="******" id="password" name="password"
								type="password" class="form-control validate">
						</div>
						<div class="form-group">
							<label for="password2">Confirmer mot de passe</label> <input
								placeholder="******" id="password2" name="password2"
								type="password" class="form-control validate">
						</div>

						<div class="row">
							<div class="col-12 col-sm-6">
								<button type="submit" class="btn btn-primary">Cr&eacute;er
									compte</button>
							</div>
							<div class="col-12 col-sm-6 tm-btn-right">
								<button type="submit" class="btn btn-danger">Supprimer
									compte</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="footerAdmin.jsp"></c:import>