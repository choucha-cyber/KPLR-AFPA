<c:import url="headAdmin.jsp"></c:import>
<!-- row -->
<div class="row tm-mt-big">
	<div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
		<div class="bg-white tm-block">
			<div class="row">
				<div class="col-12">
					<h2 class="tm-block-title d-inline-block">Modifier Formation</h2>
				</div>
			</div>
			<div class="row mt-4 tm-edit-product-row">
				<div class="col-xl-7 col-lg-7 col-md-12">
					<form action="#" class="tm-edit-product-form"><!--  ajouter le action-->
						<div class="input-group mb-3">
							<label for="titre"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Titre
								Formation </label> <input placeholder="Titre Formation" value="titre"
								id="name" name="titre" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<label for="resume"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 mb-2">Resumé</label>
							<textarea
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								rows="3" placeholder="resumé" required></textarea>
						</div>
						<div class="input-group mb-3">
							<label for="category"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Categorie</label>
							<select class="custom-select col-xl-9 col-lg-8 col-md-8 col-sm-7"
								id="category">
								<option value="1" selected>Coup de coeur</option>
								<option value="2">Promo</option>
								<option value="3">Nouveauté</option>
							</select>
						</div>
						<div class="input-group mb-3">
							<label for="date"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
								Date de session</label> <input placeholder="Date" value="2022-10-28"
								id="date" name="date" type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
								data-large-mode="true">
						</div>
						<div class="input-group mb-3">
							<label for="prix"
								class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Tarif</label>
							<input placeholder="prix" value="255" id="prix" name="prix"
								type="text"
								class="form-control validate col-xl-9 col-lg-8 col-md-7 col-sm-7">
						</div>
						<div class="input-group mb-3">
							<div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
								<button type="submit" class="btn btn-primary">Modifier</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-12 mx-auto mb-4">
					<img src="img/product-image.jpg" alt="Profile Image"
						class="img-fluid mx-auto d-block">
					<div class="custom-file mt-3 mb-3">
						<input id="fileInput" type="file" style="display: none;" /> <input
							type="button" class="btn btn-primary d-block mx-auto"
							value="Upload ..."
							onclick="document.getElementById('fileInput').click();" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<c:import url="footerAdmin.jsp"></c:import>