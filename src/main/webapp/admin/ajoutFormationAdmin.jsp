<c:import url="headAdmin.jsp"></c:import>
<!-- row -->
<div class="row tm-mt-big">
	<div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
		<div class="bg-white tm-block">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title d-inline-block">Ajouter une nouvelle
						Formation au catalogue</h2>
				</div>
			</div>
			<div class="row mt-4 tm-edit-product-row">
				<div class="col-xl-7 col-lg-7 col-md-12">
					<form method="post"
						action="<%=request.getContextPath()%>/admin/ajoutFormationAdmin">

						<div class="input-group mb-3">
							<label for="titre"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Titre
							</label> <input id="titre" name="titre" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="code"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Code
								formation </label> <input id="code" name="code" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="duree"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Dur&eacute;e
							</label> <input id="duree" name="duree" type="number"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="tarif"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Tarif
							</label> <input id="tarif" name="tarif" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="dateDebut"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Date d&eacute;but </label> <input id="dateDebut" name="dateDebut"
								type="date"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
						</div>
						<div class="input-group mb-3">
							<label for="dateFin"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Date fin </label> <input id="datefin" name="dateFin" type="date"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
						</div>
						<div class="input-group mb-3">
							<label for="contenu"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 mb-2">Contenu</label>
							<textarea
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								rows="3" name="contenu"></textarea>
						</div>


						<div class="input-group mb-3">
							<div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
								<button type="submit" class="btn btn-primary">Ajouter</button>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<c:import url="footerAdmin.jsp"></c:import>