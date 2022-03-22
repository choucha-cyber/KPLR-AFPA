<c:import url="header.jsp"></c:import>

<div class="container">

	<!-- INSCRIPTION USER -->
	<section id="inscription"
		style="margin-top: -600px; margin-left: 7rem; width: 80%;">


		<c:if test="${empty client }">
			<div class="row">
				<div class="col col-md-6">
					<div id="inscriptionUser" style="width: 80%; margin: auto;">
						<h4 class="text-center text-light">INSCRIPTION</h4>
						<c:if test="${not empty exist }">
							<div class="alert alert-danger" role="alert">Veuillez
								essayer un nouvel email</div>
						</c:if>
						<form action="<%=request.getContextPath()%>/kplr/inscriptionUser"
							method="post" enctype="multipart/form-data"
							onsubmit="return verif();">
							<div class="mb-3">
								<label for="nom" class="form-label text-light">Nom</label> <input
									type="text" required class="form-control" id="nom" name="nom"
									aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="prenom" class="form-label text-light">Prenom</label>
								<input type="text" required class="form-control" id="prenom"
									name="prenom" aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label text-light">Mobile</label>
								<input type="text" required class="form-control"
									id="exampleInputEmail1" name="mobile"
									aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label text-light">Email</label>
								<input type="email" required class="form-control"
									id="exampleInputEmail1" name="email"
									aria-describedby="emailHelp">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label text-light">Mot
									de passe</label> <input type="password" required class="form-control"
									name="password" id="exampleInputPassword1">
							</div>
							<div class="mb-3" style="display:inline;">
								<label for="exampleInputPassword1" class="form-label text-light">Photo
									de profil</label> <img id="selectedImage" src='img/men.jpg' width="20%"
									onclick="document.getElementById('getFile').click(); return false;">
								<span onclick="removeImage();" class="btn btn-primary">
									Supprimer image</span> <input type="file" id="getFile" name="image"
									onchange="loadFile(event)" style="display: none">

							</div>
							<button type="submit" class="btn btn-primary">Inscription</button>
						</form>
					</div>
				</div>

				<!-- LOGIN USER -->

				<div class="col col-md-6">

					<div id="loginUser" style="width: 80%; margin: auto;">
						<h4 class="text-center text-light">LOG IN</h4>
						<c:if test="${not empty failed }">
							<div class="alert alert-danger" role="alert">Email ou Mot
								de passe incorrect, veuillez réessayer</div>
						</c:if>
						<form action="<%=request.getContextPath()%>/kplr/loginUser"
							method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label text-light">Email</label>
								<input type="email" name="email" required class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label text-light">Mot
									de passe</label> <input type="password" name="password" required
									class="form-control" id="exampleInputPassword1">
							</div>

							<button type="submit" class="btn btn-primary">Connexion</button>
						</form>
					</div>
				</div>
		</c:if>
	</section>
</div>

<c:import url="footer.jsp"></c:import>
