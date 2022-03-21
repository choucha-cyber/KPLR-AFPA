<c:import url="headAdmin.jsp"></c:import>

	<c:if test="${ !empty sessionScope.nom}">
        <p> ${ sessionScope.prenom } est bien connect&eacute;!</p>
  	</c:if>
    
    <c:out value="Bonjour ${admin.prenom } ${admin.nom }" />	



	<c:if test="${exist == 'false' }">
		<div class="alert alert-success" role="alert">
		  Félicitation
		</div>
	
	</c:if>
	
	<c:if test="${exist }">
		<div class="alert alert-danger" role="alert">
		  Oups, le mail existe deja !
		</div>
	
	</c:if>


<!-- row -->
<div class="row tm-content-row tm-mt-big">
	<div class="tm-col tm-col-big">
		<div class="bg-white tm-block">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title d-inline-block">Comptes</h2>
				</div>
			</div>
			
			<!-- LISTE DES ADMIN 
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
					
					<tbody>
						<c:forEach items="${formations}" var="formation">
							<tr>
								<th scope="row"><input type="checkbox"
									aria-label="Checkbox"></th>
								<td class="tm-product-name">${formation.titre }</td>
								<td class="text-center">${formation.code }</td>
								<td class="text-center">${formation.tarif }</td>
								<td>Du ${formation.dateDebut } au ${formation.dateFin }</td>
								<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
							</tr>
						</c:forEach>


					</tbody>
				</table>-->
			<ol
				class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
				<li class="tm-list-group-item">Admin 1</li>
				<li class="tm-list-group-item">Admin 2</li>
				<li class="tm-list-group-item">Admin 3</li>
				<li class="tm-list-group-item">Admin 4</li>
			</ol>
		</div>
	</div>
	
	<!-- CREATION COMPTE ADMIN -->
	<div class="tm-col tm-col-big">
		<div class="bg-white tm-block">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title">Cr&eacute;ation compte admin</h2>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<form method="post"
						action="<%= request.getContextPath() %>/admin/compteAdmin"
						class="tm-signup-form">
						<div class="form-group">
							<label for="nom">Nom</label> <input placeholder="Nom" id="nom"
								name="nom" type="text" class="form-control validate">
						</div>
						<div class="form-group">
							<label for="prenom">Pr&eacute;nom</label> <input placeholder="prenom" id="prenom"
								name="prenom" type="text" class="form-control validate">
						</div>
						<div class="form-group">
							<label for="email">email</label> <input
								placeholder="email@email.com" id="email" name="email"
								type="email" class="form-control validate">
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
	<div class="tm-col tm-col-small">
		<div class="bg-white tm-block">
			<h2 class="tm-block-title">Photo de profil</h2>
			<img src="img/profile-image.png" alt="Profile Image"
				class="img-fluid">
			<div class="custom-file mt-3 mb-3">
				<input id="fileInput" type="file" style="display: none;" /> <input
					type="button" class="btn btn-primary d-block mx-xl-auto"
					value="Upload New..."
					onclick="document.getElementById('fileInput').click();" />
			</div>
		</div>
	</div>
</div>

<c:import url="footerAdmin.jsp"></c:import>