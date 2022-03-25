<c:import url="header.jsp"></c:import>

<!-- AFFICHER DETAILS FORMATION SELECTIONNEE -->


<section id="commande" style="width: 50%; margin: auto;">
	<div class="container">
		<br> <br>
		<div class="row">

			<h2>
				<c:out value="${formation.titre} (code : ${formation.code})"></c:out>
			</h2>
			<br> <br>
			<h4>
				<c:out value="durée : ${formation.duree} jours"></c:out>
			</h4>

		</div>
		<div class="table-responsive">
			<table>

				<thead>
					<th>Compétences visées</th>
					<th>Dates</th>
					<th>Tarif</th>

				</thead>
				<tbody>

					<td scope="col"><c:out value="${formation.contenu}"></c:out></td>
					<td scope="col"><c:out value="${formation.dateDebut}">au </c:out>
						<c:out value="${formation.dateFin}"></c:out></td>
					<td scope="col" class="text-center"><c:out
							value="${formation.tarif }"></c:out></td>
					<th scope="col">&nbsp;</th>

				</tbody>
			</table>
		</div>
		<br> <br>

		<div class="tm-table-mt tm-table-actions-row">
			<div class="tm-table-actions-col-left">

				<form method="post"
					action="<%=request.getContextPath()%>/kplr/commande?tarif=<c:out value='${formation.tarif }'/>&clientId=<c:out value='${client.id_client }'/>">
					<button>
						Commander
					</button>
				</form>
			</div>

		</div>
	</div>

</section>
<br>
<br>


<c:import url="footer.jsp"></c:import>

