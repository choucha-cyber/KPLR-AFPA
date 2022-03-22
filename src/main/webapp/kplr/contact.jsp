<c:import url="header.jsp"></c:import>


<!-- Contact -->
<section id="contact" class="tm-section-pad-top tm-parallax-2" style="margin-top: -500px">

	<div class="container tm-container-contact">

		<div class="row">

			<div class="text-center col-12">
				<h2 class="tm-section-title mb-4">Contact</h2>
				<p class="mb-5">Une &eacute;quipe est &agrave; votre &eacute;coute pour toute
					information</p>
				<br>
			</div>

			<div class="col-sm-12 col-md-6">

				<form action="<%=request.getContextPath()%>/kplr/index" method="post">
					<input id="name" name="nom" type="text" placeholder="Votre Nom" class="tm-input" required />
					<input id="email" name="email" type="email" placeholder="Votre Email" class="tm-input" required />
					<textarea id="message" name="message" rows="8" placeholder="Message" class="tm-input" required></textarea>
					<button type="submit" class="btn tm-btn-submit">Soumettre</button>
				</form>
			</div>

			<div class="col-sm-12 col-md-6">

				<div class="contact-item">
				<c:if test="${not empty client}">
					<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/chat?clientId=<c:out value='${client.id_client }'/>" class="item-link"> <i
							class="far fa-2x fa-comment mr-4"></i> <span class="mb-0">Chat
								Online</span>
						</a>
						</c:if>
						<c:if test="${empty client}">
						<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/index#loginUser" class="item-link"> <i
							class="far fa-2x fa-comment mr-4"></i> <span class="mb-0">Chat
								Online</span>
						</a>
						</c:if>
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
	
	
<c:import url="footer.jsp"></c:import>