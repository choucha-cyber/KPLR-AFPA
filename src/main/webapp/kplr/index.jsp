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
						<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/chat?clientId=<c:out value='${client.id_client }'/>"> <i
							class="far fa-2x fa-comment mr-4"></i> 
						</a>
						</c:if>
						<c:if test="${empty client}">
						<a rel="nofollow" href="<%=request.getContextPath()%>/kplr/inscriptionUser"> <i
							class="far fa-2x fa-comment mr-4"></i>
						</a>
						</c:if>
			
			</div>

</section>


		<footer class="text-center small tm-footer">
			<p class="mb-0">
				Copyright &copy; 2022 KPLR . <a rel="nofollow"
					href="#" title="HTML templates">Designed
					by Shabina@Aisha</a>
			</p>
		</footer>