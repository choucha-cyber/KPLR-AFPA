

<c:import url="headAdmin.jsp"></c:import>

<c:out value="Bonjour ${admin.prenom } ${admin.nom }" />


<div class="container">
	<div class="row tm-mt-big">
		<div class="col-12 mx-auto tm-login-col">
			<div class="bg-white tm-block">
				<div class="row">
					<div class="col-12 text-center">
						<i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
						<h2 class="tm-block-title mt-3">Connexion</h2>
					</div>
				</div>
				<div class="row mt-2">
					<div class="col-12">
						<form action="<%= request.getContextPath() %>/admin/loginAdmin"
							method="post">
							<div class="input-group">
								<label for="username"
									class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Email</label>
								<input name="email" type="text"
									class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
									id="email" placeholder="votre email" required>
							</div>
							<div class="input-group mt-3">
								<label for="password"
									class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Mot
									de passe</label> <input name="password" type="password"
									class="form-control validate" id="password" placeholder="****"
									required>
							</div>
							<div class="input-group mt-3">
								<button type="submit"
									class="btn btn-primary d-inline-block mx-auto">Login</button>
							</div>
							<div class="input-group mt-3">
								<p>
									<em>page login</em>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footerAdmin.jsp"></c:import>