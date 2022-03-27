<c:import url="header.jsp"></c:import>



<!-- QUI SOMMES NOUS -->
<section id="index" class="tm-next tm-intro-next "
	style="width: 70%; color: white; margin: auto; text-align: center">

	<p>Nos solutions cloud pour votre entreprise</p>
	<p>KPLR est un cabinet de conseil pr&eacute;sent &agrave; Paris,
		Marseille et Casablanca.</p>
	<p>Notre moteur : Une innovation est un processus de
		cr&eacute;ation au terme duquel un nouveau march&eacute; apparait, ou
		p&eacute;rennise, par des effets vertueux significatifs, un
		march&eacute; existant.</p>
	<p>KPLR d&eacute;veloppe plusieurs strat&eacute;gies pour etre
		&agrave; la pointe des technologies et des innovations en produits et
		services, afin de proposer &agrave; ses clients des solutions bien
		adapt&eacute;es en performances, fiabilit&eacute;, qualit&eacute; et
		couts.</p>

	<div class="text-right">
		<c:if test="${not empty client}">
			<a rel="nofollow"
				href="<%=request.getContextPath()%>/kplr/chat?clientId=<c:out value='${client.id_client }'/>">
				<i class="far fa-2x fa-comment mr-4"></i>
			</a>
		</c:if>
		<c:if test="${empty client}">
			<a rel="nofollow"
				href="<%=request.getContextPath()%>/kplr/inscriptionUser"> <i
				class="far fa-2x fa-comment mr-4"></i>
			</a>
		</c:if>

	</div>

</section>

<footer class="text-center small tm-footer">
	<p class="mb-0">
		Copyright &copy; 2022 KPLR . <a rel="nofollow" href="#"
			title="HTML templates">Designed by Shabina@Aisha</a>
	</p>
</footer>

<div id="cookies"
	style="background-color: white; border: 0.1rem solid blue; width: 50%; height: 20rem; position: relative; top: 10rem; left: 20rem; border-radius: 3px; font-size: 0.4rem; padding: 1rem;">
	<p style="margin-left: 25rem; font-size: 0.8rem;">
		<a href="index" id="refuseCookies">Continuez sans accepter -></a>
	</p>
	<p>
		Avec votre accord, <a href="#">nos partenaires</a> et nous utilisons
		des cookies ou technologies similaires pour stocker et acc&eacute;der a des
		informations personnelles comme votre visite sur ce site. Vous pouvez
		retirez votre consentement ou vous opposer aux traitements bas&eacute;s sur
		l'int&eacute;ret l&eacute;gitime à tout moment en cliquant sur "En savoir plus" ou
		dans notre politique de confidentialit&eacute; sur ce site.
	</p>
	<br>
	<br> <b> Avec nos partenaires, nous traitons les donn&eacute;es
		suivantes : </b>
	<p>Donn&eacute;es de g&eacute;olocalisation pr&eacute;cises et identification par
		analyse du terminal, Publicit&eacute;s et contenu personnalis&eacute;s, mesure de
		performance des publicit&eacute;s et du contenu, donn&eacute;es d'audience et
		d&eacute;veloppement de produit, Retention of technical data, Stocker et/ou
		acc&eacute;der a des informations sur un terminal</p>
	<a href="#" id="savoirPlus"
		style="backgroubd-color: white; color: blue; border: 1px solid blue; padding: 0.2rem; border-radius: 0.5rem; margin-right:0.3rem;">En
		savoir plus -></a> <a href="index" id="acceptCookies"
		style="background-color: blue; color: white; padding: 0.2rem; border-radius: 0.5rem;">Accepter
		& Fermer</a>
</div>

	<script type="text/javascript">
		let cookies = document.getElementById("cookies");
		let accept= document.getElementById("acceptCookies");
		let refuse= document.getElementById("refuseCookies");
		cookies.style.display= "none";
		accept.addEventListener("click",function(){
    	cookies.style.display= "none";
    	localStorage.setItem("cookiesDisplayed","true");
		});
		
		refuse.addEventListener("click",function(){
    	cookies.style.display= "none";
    	localStorage.setItem("cookiesDisplayed","false");
		});
		setTimeout(()=> {
    	if(!localStorage.getItem("cookiesDisplayed"))
    	cookies.style.display= "block";
		},2000);
	</script>
