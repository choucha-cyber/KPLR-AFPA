<c:import url="headAdmin.jsp"></c:import>


<body>
	<div class="container">
		<div class="row tm-mt-big">
			<div class="col-12 mx-auto tm-login-col">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-12 text-center">
							<i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
							<h2 class="tm-block-title mt-3">Page Admin</h2>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-12">
							<form action="<% request.getContextPath(); %>logoutAdmin" method="post">
								<div class="input-group">
									<label for="username"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Email</label>
									<input name="email" type="text"
										class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
										id="email" value="votre email" required>
								</div>
								<div class="input-group mt-3">
									<label for="password"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Mot
										de passe</label> <input name="password" type="password"
										class="form-control validate" id="password" value="1234"
										required>
								</div>
								<div class="input-group mt-3">
									<button type="submit"
										class="btn btn-primary d-inline-block mx-auto">Deconnexion</button>
								</div>
								<div class="input-group mt-3">
									<p>
										<em>blablabla</em>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>>
<c:import url="footerAdmin.jsp"></c:import>

