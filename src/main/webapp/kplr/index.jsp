
<c:import url="/kplr/header.jsp" />	

			
		<div style="width:75%; margin:auto" class="text-center tm-hero-text-container">
			<div class="tm-hero-text-container-inner">
				<a href="<%= request.getContextPath() %>/kplr/logoutUser" class="nav-link tm-nav-link">logout</a>
		
				<p class="tm-hero-subtitle">
					Nos solutions cloud pour votre entreprise
				</p>
				<p>KPLR est un cabinet de conseil présent à Paris, Marseille
					et Casablanca.</p>
				<p>Notre moteur : Une innovation est un processus de création au
					terme du quel un nouveau marché apparaît, ou pérennise, par des
					effets vertueux significatifs, un marché existant.</p>
				<p>KPLR développe plusieurs stratégies pour être à la pointe des
					technologies et des innovations en produits et services, afin de
					proposer à ses clients des solutions bien adaptées en performances,
					fiabilité, qualité et coûts.</p>
			</div>
		</div>
	 
		<div class="tm-next tm-intro-next ">
			<a href="#whatwedo" class="text-center tm-down-arrow-link"> <i
				class="fas fa-2x fa-arrow-down tm-down-arrow"></i>
			</a>
			<div class="text-right">
			<c:if test="${not empty client}">
						<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/chat?clientId=<c:out value='${client.id_client }'/>"> <i
							class="far fa-2x fa-comment mr-4"></i> 
						</a>
						</c:if>
						<c:if test="${empty client}">
						<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/index#loginUser"> <i
							class="far fa-2x fa-comment mr-4"></i>
						</a>
						</c:if>
			
			</div>
						
		</div>
	
	</section>

	<section id="whatwedo" class="tm-section-pad-top">

		<div class="container">

			<div class="row tm-content-box">
				<!-- first row -->
				<div class="col-lg-12 col-xl-12">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4 tm-section-title">Nos métiers</h2>
						<p class="mb-4 tm-intro-text">KPLR construit des solutions
							Cloud pour aider les organisations et entreprises à  mettre en
							oeuvre la transformation de leur data center ou de leur
							suppression et à  gérer la transition qui en résulte.</p>
						<p>KPLR produit des solutions à  la demande pour accompagner
							ses clients dans la transformation de l'exploitation des données
							dont elles disposent</p>
						<p>par l'usage d'outils tels que le big data,l'Intelligence
							Artificielle et technologies annexes</p>
						<p>Notre approche opérationnelle en matiére de Cloud est la
							suivante :</p>
					</div>
				</div>

			</div>
			<!-- first row -->

			<div class="row tm-content-box">
				<!-- second row -->
				<div class="col-lg-1">
					<i class="far fa-3x fa-chart-bar text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">Analyses stratégique</h2>
						<details>
							<summary>
								<p class="mb-4 tm-intro-text">Nous accompagnons nos clients
									dans l'analyse de leur système dâ'information, et des
									Datalakes quand ils existent de tel sorte à  faire ressortir :</p>
							</summary>

							<ol>
								<li>coût du matériel</li>
								<li>coût de la maintenance</li>
								<li>coût des différentes taxes</li>
								<li>coût en terme de locaux</li>
								<li>coût de remplacement</li>
								<li>coût des pannes</li>
								<li>coût du personnel ou des servuces dédiés</li>
								<li>coût des licences</li>
								<li>côut des risques lié à l'éditeur</li>

							</ol>

						</details>



					</div>
				</div>

				<div class="col-lg-1">
					<i class="far fa-3x fa-comment-alt text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">Analyse de l'opportunité</h2>
						<p class="mb-4 tm-intro-text">d'une migration pour nos
							clients. La prise en compte des impératifs de sécurité ou de
							souveraineté peuvent influer la décision de migration totale ou
							partielle.</p>
					</div>
				</div>

			</div>
			<!-- second row -->

			<div class="row tm-content-box">
				<!-- third row -->
				<div class="col-lg-1">
					<i class="fas fa-3x fa-fingerprint text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">Proposition d'action</h2>
						<details>
							<summary>
								<p class="mb-4 tm-intro-text">Les actions structurelles :
									produire un "plan Cloud" incluant :Lla chaîne de changement que
									le passage au cloud induit pour :
							</summary>
							- L'activité de l'entreprise ou du service publique considéré
							(accroissement du chiffre d'affaires, réduction des charges,
							efficience des services proposés, dégagement de ressources que
							l'entreprise, publique ou privée, peut affecter de façon plus
							efficiente pour accroitre sa compétitivité ou réduire son coût.
							</p>
						</details>


					</div>
				</div>

				<div class="col-lg-1">
					<i class="fas fa-3x fa-users text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">conception</h2>
						<p class="mb-4 tm-intro-text">d'une solution optimale pour nos
							clients sont largement impliqués, le plan prévisionnel de
							déploiement est établi, les moyens a allouer et le objectifs a
							atteindre fixés.</p>

					</div>
				</div>

			</div>
			<!-- third row -->

			<div class="row tm-content-box">
				<!-- forth row -->
				<div class="col-lg-1">
					<i class="far fa-3x fa-chart-bar text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">déploiement</h2>
						<p class="mb-4 tm-intro-text">implantation de la solution. Nos
							ingénieurs veillent à la transmission de l'ensemble des éléments
							du projet, de leur mise en oeuvre, et de l'obtention du ou des
							résultats attendus.</p>
					</div>
				</div>

				<div class="col-lg-1">
					<i class="far fa-3x fa-comment-alt text-center tm-icon"></i>
				</div>
				<div class="col-lg-5">
					<div class="tm-intro-text-container">
						<h2 class="tm-text-primary mb-4">formation</h2>
						<p class="mb-4 tm-intro-text">s'agissant de solutions
							d'optimisation à forte teneur technologique, l'exploitation des
							solutions suppose la formation de l'ensemble des personnels de
							nos clients et de leur assistance tout au long de la vie du
							projet.</p>
						<div class="tm-continue">
							<a href="catalogue.jsp" class="tm-intro-text tm-btn-primary">Détails</a>
						</div>
					</div>
				</div>

			</div>

		</div>

	</section>

	<section id="testimonials" class="tm-section-pad-top tm-parallax-2">
		<div class="container tm-testimonials-content">
			<div class="row">
				<div class="col-lg-12 tm-content-box">
					<h2 class="text-white text-center mb-4 tm-section-title">Nos
						clients</h2>
					<p class="mx-auto tm-section-desc text-center">Blablabla</p>
					<div class="mx-auto tm-gallery-container tm-gallery-container-2">
						<div class="tm-testimonials-carousel">
							<figure class="tm-testimonial-item">
								<img src="img/logos/bankofengland.jpg" alt="Bank of England"
									class="img-fluid mx-auto">
								<blockquote>blablablabla</blockquote>
								<figcaption>Bank Of England</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/bcg.jpg" alt="BCG" class="img-fluid mx-auto">
								<blockquote>blablabla</blockquote>
								<figcaption>BCG</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/databricks.jpg" alt="databricks"
									class="img-fluid mx-auto">
								<blockquote>blablabla</blockquote>
								<figcaption>Data Bricks</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/fdj.jpg" alt="FranÃ§aise des jeux"
									class="img-fluid mx-auto">
								<blockquote>blablabla</blockquote>
								<figcaption>Française des jeux</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/m2i.png" alt="Image"
									class="img-fluid mx-auto">
								<blockquote>blablabla.</blockquote>
								<figcaption>M2I Formations</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/ministere.png"
									alt="ministere de l'economie et des finances"
									class="img-fluid mx-auto">
								<blockquote>blablabla.</blockquote>
								<figcaption>Ministère de l'Economie , des Finances
									et de l'insdustrie</figcaption>
							</figure>

							<figure class="tm-testimonial-item">
								<img src="img/logos/orange.png" alt="Orange groupe"
									class="img-fluid mx-auto">
								<blockquote>blablabla.</blockquote>
								<figcaption>Groupe Orange</figcaption>
							</figure>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="tm-bg-overlay"></div>
	</section>

	<section id="gallery" class="tm-section-pad-top">
		<div class="container tm-container-gallery">
			<div class="row">
				<div class="text-center col-12">
					<h2 class="tm-text-primary tm-section-title mb-4">Portail
						Maroc</h2>
					<p class="mx-auto tm-section-desc">blablabla à Casa on est les
						meilleurs blablabla</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="mx-auto tm-gallery-container">
						<div class="grid tm-gallery">
							<a href="img/casablanca/casa.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa.jpg" alt="casablanca"
										class="img-fluid">
									<figcaption>
										<h2>
											<i>Physical Health <span>Exercise!</span></i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa1.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa1.jpg" alt="casa1"
										class="img-fluid">
									<figcaption>
										<h2>
											<i>Rain on Glass <span>Second Image</span></i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa2.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa2.jpg" alt="casa2"
										class="img-fluid">
									<figcaption>
										<h2>
											<i><span>Sea View</span> Mega City</i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa3.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa3.jpg" alt="casa3"
										class="img-fluid">
									<figcaption>
										<h2>
											<i>Dream Girl <span>Thoughts</span></i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa4.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa4.jpg" alt="casa4"
										class="img-fluid">
									<figcaption>
										<h2>
											<i><span>Workstation</span> Offices</i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa5.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa5.jpg" alt="casa5"
										class="img-fluid">
									<figcaption>
										<h2>
											<i>Just Above <span>The City</span></i>
										</h2>
									</figcaption>
								</figure>
							</a> <a href="img/casablanca/casa6.jpg">
								<figure class="effect-honey tm-gallery-item">
									<img src="img/casablanca/casa6.jpg" alt="casa6"
										class="img-fluid">
									<figcaption>
										<h2>
											<i>Another <span>Exercise Time</span></i>
										</h2>
									</figcaption>
								</figure>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact -->
	<section id="contact" class="tm-section-pad-top tm-parallax-2">

		<div class="container tm-container-contact">

			<div class="row">

				<div class="text-center col-12">
					<h2 class="tm-section-title mb-4">Contact</h2>
					<p class="mb-5">Proin enim orci, tincidunt quis suscipit in,
						placerat nec est. Vestibulum posuere faucibus posuere. Quisque
						aliquam velit eget leo blandit egestas. Nulla id posuere felis,
						quis tristique nulla.</p>
					<br>
				</div>

				<div class="col-sm-12 col-md-6">

					<form action="<%=request.getContextPath()%>/index" method="post">
						<input id="name" name="nom" type="text" placeholder="Votre Nom"
							class="tm-input" required />
						 <input id="email" name="email"
							type="email" placeholder="Votre Email" class="tm-input" required />
						<textarea id="message" name="message" rows="8"
							placeholder="Message" class="tm-input" required></textarea>
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
							href="https://www.google.com/search?q=209+rue+saint+pierre+13005+marseille&client=safari&rls=en&sxsrf=APq-WBvMlzdukxABQWXFzd5AhEiQAHGsTQ%3A1647283333819&ei=hYwvYuzYMaKblwTw6aGoCA&oq=209+RUE+SAINT+PIERRE+Ã +Marseille+3005&gs_lcp=Cgdnd3Mtd2l6EAEYADIFCAAQogQ6BwgjEOoCECc6DQguEMcBENEDEOoCECc6CAghEBYQHRAeSgQIQRgASgQIRhgAUABY_SNg9S1oAXAAeACAAXqIAaQFkgEDMS41mAEAoAEBoAECsAEKwAEB&sclient=gws-wiz#"
							class="item-link"> <i
							class="fas fa-2x fa-map-marker-alt mr-4"></i> <span class="mb-0">Nos
								locaux</span>
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



<!-- --------------------------------------------------------------------------- -->
<c:if test="${empty client }">
<div class="row">
<div class="col col-md-6">
<div id="inscriptionUser" style="width:80%; margin:auto;">
<h1 class="text-center text-light">INSCRIPTION</h1>
<c:if test="${not empty exist }">
<div class="alert alert-danger" role="alert">
 Veuillez essayer un nouvelle mail
</div>
</c:if>
<form action="<%=request.getContextPath()%>/kplr/inscriptionUser" method="post" enctype="multipart/form-data" onsubmit="return verif();">
  <div class="mb-3">
    <label for="nom" class="form-label text-light">Nom</label>
    <input type="text" required class="form-control" id="nom" name="nom" aria-describedby="emailHelp">    
  </div>
  <div class="mb-3">
    <label for="prenom" class="form-label text-light">Prenom</label>
    <input type="text" required class="form-control" id="prenom" name="prenom" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label text-light">Mobile</label>
    <input type="text" required class="form-control" id="exampleInputEmail1" name="mobile" aria-describedby="emailHelp">    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label text-light">Email address</label>
    <input type="email" required class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label text-light">Password</label>
    <input type="password" required class="form-control" name="password" id="exampleInputPassword1">
  </div>
   <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label text-light">Profile picture</label>
   <img id="selectedImage" src='img/men.jpg' width="20%" onclick="document.getElementById('getFile').click(); return false;">
	<span onclick="removeImage();" class="btn btn-primary"> Remove image</span>
	<input type="file" id="getFile" name="image" onchange="loadFile(event)" style="display: none">
   
   </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
<div class="col col-md-6">

<div id="loginUser" style="width:80%; margin:auto;">
<h1 class="text-center text-light">LOG IN</h1>
<c:if test="${not empty failed }">
<div class="alert alert-danger" role="alert">
 Email or Password is incorrect try again
</div>
</c:if>
<form action="<%=request.getContextPath()%>/kplr/loginUser" method="post" >
   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label text-light">Email address</label>
    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label text-light">Password</label>
    <input type="password" name="password" required class="form-control" id="exampleInputPassword1">
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</c:if>
<!-- --------------------------------------------------- -->
		<footer class="text-center small tm-footer">
			<p class="mb-0">
				Copyright &copy; 2022 KPLR . <a rel="nofollow"
					href="https://www.tooplate.com" title="HTML templates">Designed
					by Shabina@Aisha</a>
			</p>
		</footer>

	</section>

	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="slick/slick.min.js"></script>
	<script src="magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/jquery.singlePageNav.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"
></script>
<script>
var loadFile = function(event) {
	var image = document.getElementById('selectedImage');
	image.src = URL.createObjectURL(event.target.files[0]);
};
function removeImage(){
	document.getElementById("getFile").value = null;
	document.getElementById("selectedImage").src= "img/men.jpg";	
}</script>
	<script>
		function getOffSet() {
			var _offset = 450;
			var windowHeight = window.innerHeight;

			if (windowHeight > 500) {
				_offset = 400;
			}
			if (windowHeight > 680) {
				_offset = 300
			}
			if (windowHeight > 830) {
				_offset = 210;
			}

			return _offset;
		}

		function setParallaxPosition($doc, multiplier, $object) {
			var offset = getOffSet();
			var from_top = $doc.scrollTop(), bg_css = 'center '
					+ (multiplier * from_top - offset) + 'px';
			$object.css({
				"background-position" : bg_css
			});
		}

		// Parallax function
		// Adapted based on https://codepen.io/roborich/pen/wpAsm        
		var background_image_parallax = function($object, multiplier, forceSet) {
			multiplier = typeof multiplier !== 'undefined' ? multiplier : 0.5;
			multiplier = 1 - multiplier;
			var $doc = $(document);
			// $object.css({"background-attatchment" : "fixed"});

			if (forceSet) {
				setParallaxPosition($doc, multiplier, $object);
			} else {
				$(window).scroll(function() {
					setParallaxPosition($doc, multiplier, $object);
				});
			}
		};

		var background_image_parallax_2 = function($object, multiplier) {
			multiplier = typeof multiplier !== 'undefined' ? multiplier : 0.5;
			multiplier = 1 - multiplier;
			var $doc = $(document);
			$object.css({
				"background-attachment" : "fixed"
			});

			$(window)
					.scroll(
							function() {
								if ($(window).width() > 768) {
									var firstTop = $object.offset().top, pos = $(
											window).scrollTop(), yPos = Math
											.round((multiplier * (firstTop - pos)) - 186);

									var bg_css = 'center ' + yPos + 'px';

									$object.css({
										"background-position" : bg_css
									});
								} else {
									$object.css({
										"background-position" : "center"
									});
								}
							});
		};

		$(function() {
			// Hero Section - Background Parallax
			background_image_parallax($(".tm-parallax"), 0.30, false);
			background_image_parallax_2($("#contact"), 0.80);
			background_image_parallax_2($("#testimonials"), 0.80);

			// Handle window resize
			window.addEventListener('resize', function() {
				background_image_parallax($(".tm-parallax"), 0.30, true);
			}, true);

			// Detect window scroll and update navbar
			$(window).scroll(function(e) {
				if ($(document).scrollTop() > 120) {
					$('.tm-navbar').addClass("scroll");
				} else {
					$('.tm-navbar').removeClass("scroll");
				}
			});

			// Close mobile menu after click 
			$('#tmNav a').on('click', function() {
				$('.navbar-collapse').removeClass('show');
			})

			// Scroll to corresponding section with animation
			$('#tmNav').singlePageNav({
				'easing' : 'easeInOutExpo',
				'speed' : 600
			});

			// Add smooth scrolling to all links
			// https://www.w3schools.com/howto/howto_css_smooth_scroll.asp
			$("a").on('click', function(event) {
				if (this.hash !== "") {
					event.preventDefault();
					var hash = this.hash;

					$('html, body').animate({
						scrollTop : $(hash).offset().top
					}, 600, 'easeInOutExpo', function() {
						window.location.hash = hash;
					});
				} // End if
			});

			// Pop up
			$('.tm-gallery').magnificPopup({
				delegate : 'a',
				type : 'image',
				gallery : {
					enabled : true
				}
			});

			$('.tm-testimonials-carousel').slick({
				dots : true,
				prevArrow : false,
				nextArrow : false,
				infinite : false,
				slidesToShow : 3,
				slidesToScroll : 1,
				responsive : [ {
					breakpoint : 992,
					settings : {
						slidesToShow : 2
					}
				}, {
					breakpoint : 768,
					settings : {
						slidesToShow : 2
					}
				}, {
					breakpoint : 480,
					settings : {
						slidesToShow : 1
					}
				} ]
			});

			// Gallery
			$('.tm-gallery').slick({
				dots : true,
				infinite : false,
				slidesToShow : 5,
				slidesToScroll : 2,
				responsive : [ {
					breakpoint : 1199,
					settings : {
						slidesToShow : 4,
						slidesToScroll : 2
					}
				}, {
					breakpoint : 991,
					settings : {
						slidesToShow : 3,
						slidesToScroll : 2
					}
				}, {
					breakpoint : 767,
					settings : {
						slidesToShow : 2,
						slidesToScroll : 1
					}
				}, {
					breakpoint : 480,
					settings : {
						slidesToShow : 1,
						slidesToScroll : 1
					}
				} ]
			});
		});
	</script>
</body>
</html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>