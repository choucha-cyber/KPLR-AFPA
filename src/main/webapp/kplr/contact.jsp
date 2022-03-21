<c:import url="header.jsp"></c:import>


<!-- Contact -->
<section id="contact" class="tm-section-pad-top tm-parallax-2">

	<div class="container tm-container-contact">

		<div class="row">

			<div class="text-center col-12">
				<h2 class="tm-section-title mb-4">Contact</h2>
				<p class="mb-5">Une &eacute;quipe est à votre &eacute;coute pour toute
					information</p>
				<br>
			</div>

			<div class="col-sm-12 col-md-6">

				<form action="<%=request.getContextPath()%>/index" method="post">
					<input id="name" name="nom" type="text" placeholder="Votre Nom"
						class="tm-input" required /> <input id="email" name="email"
						type="email" placeholder="Votre Email" class="tm-input" required />
					<textarea id="message" name="message" rows="8"
						placeholder="Message" class="tm-input" required></textarea>
					<button type="submit" class="btn tm-btn-submit">Soumettre</button>
				</form>
			</div>

			<div class="col-sm-12 col-md-6">

				<div class="contact-item">
					<a rel="nofollow" href="#chat" class="item-link"> <i
						class="far fa-2x fa-comment mr-4"></i> <span class="mb-0">Chat
							Online</span>
					</a>
				</div>

				<div class="contact-item">
					<a rel="nofollow" href="mailto:mail@company.com" class="item-link">
						<i class="far fa-2x fa-envelope mr-4"></i> <span class="mb-0">contact@kplr.com</span>
					</a>
				</div>

				<div class="contact-item">
					<a rel="nofollow"
						href="https://www.google.com/search?q=209+rue+saint+pierre+13005+marseille&client=safari&rls=en&sxsrf=APq-WBvMlzdukxABQWXFzd5AhEiQAHGsTQ%3A1647283333819&ei=hYwvYuzYMaKblwTw6aGoCA&oq=209+RUE+SAINT+PIERRE+à+Marseille+3005&gs_lcp=Cgdnd3Mtd2l6EAEYADIFCAAQogQ6BwgjEOoCECc6DQguEMcBENEDEOoCECc6CAghEBYQHRAeSgQIQRgASgQIRhgAUABY_SNg9S1oAXAAeACAAXqIAaQFkgEDMS41mAEAoAEBoAECsAEKwAEB&sclient=gws-wiz#"
						class="item-link"> <i class="fas fa-2x fa-map-marker-alt mr-4"></i>
						<span class="mb-0">Nos locaux</span>
					</a>
				</div>

				<div class="contact-item">
					<a rel="nofollow" href="tel:0100200340" class="item-link"> <i
						class="fas fa-2x fa-phone-square mr-4"></i> <span class="mb-0">+334
							67 89 09 55</span>
					</a>
				</div>

				<div class="contact-item">&nbsp;</div>

			</div>


		</div>
		<!-- row ending -->

	</div>
	<!-- ---------------------------------------------------------------------------------------------------- -->


	<div class="container mt-5  " id="chat">

		<!-- Grid row -->
		<div
			class="row d-flex flex-row-reverse mx-auto justify-content-center">

			<!-- Grid column -->
			<div class="col-md-6 mb-4 d-flex flex-row-reverse">

				<div class="card chat-room small-chat wide" id="myForm">
					<div class="card-header white d-flex justify-content-between p-2"
						id="toggle" style="cursor: pointer;">
						<div class="heading d-flex justify-content-start">
							<div class="profile-photo">
								<img
									src="https://mdbootstrap.com/img/Photos/Avatars/avatar-6.webp"
									alt="avatar" class="avatar rounded-circle mr-2 ml-0"> <span
									class="state"></span>
							</div>
							<div class="data">
								<p class="name mb-0">
									<strong>John Smith</strong>
								</p>
								<p class="activity text-muted mb-0">Active now</p>
							</div>
						</div>

					</div>
					<div class="my-custom-scrollbar" id="message">
						<div class="card-body p-3">
							<div class="chat-message">
								<div class="media mb-3">
									<img class="d-flex rounded mr-2"
										src="https://mdbootstrap.com/img/Photos/Avatars/avatar-6.webp"
										alt="Generic placeholder image">
									<div class="media-body">

										<p class="mb-0 text-muted">How can i help you?</p>

									</div>
								</div>
								<div
									class="card bg-primary rounded w-75 float-right z-depth-0 mb-1">
									<div class="card-body p-2">
										<p class="card-text text-white">Lorem ipsum dolor sit amet
											consectetur adipisicing elit voluptatem cum eum tempore.</p>
									</div>
								</div>
								<div
									class="card bg-primary rounded w-50 float-right z-depth-0 mb-2">
									<div class="card-body p-2">
										<p class="card-text text-white">Rem suscipit lorum
											repellendus ditiis?</p>
									</div>
								</div>
								<div
									class="card bg-light rounded w-75 z-depth-0 mb-1 message-text">
									<div class="card-body p-2">
										<p class="card-text black-text">Nostrum minima cupiditate
											assumenda, atque cumque hic voluptatibus at corporis maxime
											quam harum.</p>
									</div>
								</div>
								<div class="d-flex justify-content-start">
									<div class="profile-photo message-photo">
										<img
											src="https://mdbootstrap.com/img/Photos/Avatars/avatar-6.webp"
											alt="avatar" class="avatar rounded-circle mr-2 ml-0"> <span
											class="state"></span>
									</div>
									<div class="card bg-light rounded w-75 z-depth-0 mb-2">
										<div class="card-body p-2">
											<p class="card-text black-text">Qui animi molestiae autem
												nihil optio recusandae nisi sit ab quo est.</p>
										</div>
									</div>
								</div>
								<div
									class="card bg-primary rounded w-75 float-right z-depth-0 mb-1 last">
									<div class="card-body p-2">
										<p class="card-text text-white">Maxime nostrum ut
											blanditiis a quod quam, quidem deleniti?</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer text-muted white pt-1 pb-2 px-3">
						<form action="index?user=1" method="post">
							<input type="text" id="exampleForm2" name="text"
								class="form-control" placeholder="Type a message...">
							<button type="submit" class="btn btn-primary float-right">Envoyer</button>
						</form>
					</div>
				</div>

			</div>
			<!-- Grid column -->

		</div>
		<!-- Grid row -->

	</div>
	<footer class="text-center small tm-footer">
		<p class="mb-0">
			Copyright &copy; 2022 KPLR . <a rel="nofollow"
				href="https://www.tooplate.com" title="HTML templates">Designed
				by Shabina@Aisha</a>
		</p>
	</footer>

</section>
	
<c:import url="footer.jsp"></c:import>