<c:import url="headAdmin.jsp"></c:import>
<!-- row -->
<div class="row tm-mt-big">
	<div class=" col-lg-12 col-md-12 col-sm-12">
		<div class="bg-white tm-block">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title d-inline-block">Modifier Formation</h2>
				</div>
			</div>
			<div class="row mt-4 tm-edit-product-row">
				<div class="col-xl-7 col-lg-7 col-md-12">
					<form method="post" action="<%=request.getContextPath()%>/admin/updateFormation?formationId=<c:out value='${formation.id_formation }'/>" class="tm-edit-product-form">
						<!--  ajouter le action-->
						<div class="input-group mb-3">
							<label for="titre"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Titre
								Formation </label> <input placeholder="Titre Formation" value="<c:out value='${formation.titre }'/>"
								id="name" name="titre" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						
						<div class="input-group mb-3">
							<label for="category"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Cat&eacute;gorie</label>
							<select class="custom-select col-xl-9 col-lg-8 col-md-8 col-sm-7"
								id="category">
								<option value="1" selected>BIG DATA</option>
								<option value="2">PYTHON</option>
								<option value="3">GESTION DE PROJET</option>
							</select>
						</div>
						<div class="input-group mb-3">
							<label for="code"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Code
								formation </label> <input id="code" name="code" type="text" value="<c:out value='${formation.code }'/>"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="date"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Duration</label> <input placeholder="Date" value="<c:out value='${formation.duree}'/>"
								id="date" name="duree" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
						</div>
						<div class="input-group mb-3">
							<label for="prix"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Tarif</label>
							<input placeholder="prix" value="<c:out value='${formation.tarif}'/>" id="prix" name="tarif"
								type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-7 col-sm-7">
						</div>
						<div class="input-group mb-3">
						
							<label for="dateDebut"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Date d&eacute;but </label> 
								 <input id="dateDebut" name="dateDebut" value="${dateDebut }"
								type="date" 
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
								
						</div>
						<div class="input-group mb-3">
							<label for="dateFin"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Date fin </label> <input id="datefin" name="dateFin" type="date" 
								value="${dateFin }" class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
								
						</div>
						<div class="input-group mb-3">
							<label for="resume"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 mb-2">Contenu</label>
							<textarea 
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7" name="contenu"
								rows="3" placeholder="resum&eacute;" required><c:out value='${formation.contenu}'/></textarea>
						</div>
						<div class="input-group mb-3">
							<div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
								<button type="submit" class="btn btn-dark">Modifier</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-12 mx-auto mb-4">
				<form method="post"
						action="<%=request.getContextPath()%>/admin/updateFormation?formationId=<c:out value='${formation.id_formation }'/>&image=image" enctype="multipart/form-data">
				
				<div class="mb-3" style="display:inline;">
								<label for="exampleInputPassword1" class="form-label text-light">Photo
									de profil</label> <img id="selectedImage" src="../kplr/img/formations/${formation.image }" class="img-fluid mx-auto d-block"
									width=50% onclick="document.getElementById('getFile').click(); return false;">
								 <input type="file" id="getFile" name="image"
									onchange="loadFile(event)" style="display: none">

							</div>
					
					<div class="custom-file mt-3 mb-3">
					<button type="submit" class="btn btn-dark d-block mx-auto">Modifier</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="footerAdmin.jsp"></c:import>