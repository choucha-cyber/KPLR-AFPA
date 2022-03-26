<c:import url="headAdmin.jsp"></c:import>
<br>
<div class="bg-white tm-block h-100">
			
<div class="table-responsive">
<h1 class="text-center"> Liste de utilisateurs</h1>
 <table id="userTable" class="table table-striped table-light table-bordered table-sm" cellspacing="0" width="100%">
 
  <thead>
    <tr>
    <th class="th-sm">Image

      </th>
      <th class="th-sm">Nom

      </th>
      <th class="th-sm">Prenom

      </th>
     
      <th class="th-sm">Email

      </th>
      <th class="th-sm">Mobile

      </th>
      <th class="th-sm">Inscrit Depuis

      </th>
       <th class="th-sm">

      </th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${users}" var="user" >
    
   <tr>
   <td><img width="100" src="../kplr/img/<c:out value='${user.image}'/>"/></td>
      <td> ${user.nom}</td>
      <td> ${user.prenom}</td>
      
        <td> ${user.email}</td>
         <td> ${user.tel}</td>
          <td> ${user.dateInscription}</td>
          <td><i class="fas fa-trash-alt tm-trash-icon" data-bs-toggle="modal"
					data-bs-target="#deleteModal<c:out value='${user.id_client}'/>"></i>
								<div class="modal fade"
						id="deleteModal<c:out value='${user.id_client }'/>"
						tabindex="-1" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title text-dark" id="exampleModalLabel">Supprimer</h5>
									<button type="button" class="btn-close btn-dark"
										data-bs-dismiss="modal" aria-label="Close">X</button>
								</div>
								<div class="modal-body">Voulez vous vraiement supprimer le client
									 <b>${user.nom} ${user.prenom}</b></div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Non</button>
									<a href="<%= request.getContextPath() %>/admin/users?clientId=<c:out value='${user.id_client }'/>">
										<button type="button" class="btn btn-dark">Oui</button>
									</a>
								</div>
							</div>
						</div>
					</div> 
				
								</td>	
    </tr>
  </c:forEach>
    </tbody>
    </table>
</div>
</div>
<c:import url="footerAdmin.jsp"></c:import>