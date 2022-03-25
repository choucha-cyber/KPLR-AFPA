<c:import url="headAdmin.jsp"></c:import>

<table id="example" class="table table-striped table-bordered table-light " style="width:100%">
        <thead>
            <tr >
                <th>Nom</th>
                <th>Message</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${messages }" var="message">
            <tr class="text-center" >
                <td>${message.nom}</td>
                <td>${message.message}</td>
                <td>${message.email}</td>
                  <td><button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal<c:out value='${message.id_message }'/>">Repondre</button>
                   <!-- Modal -->
<div class="modal fade" id="exampleModal<c:out value='${message.id_message }'/>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Repond �  ${message.nom}</h5>
        <button type="button" class="btn-close btn-dark" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <form method="post" action="<%= request.getContextPath() %>/admin/messageAdmin">
      <div class="modal-body">
      <textarea rows="10" cols="50" name="message"></textarea>
      <input type="hidden" value="${message.email }" name="email"/>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>       
        <button type="submit" class="btn btn-dark">Envoyer</button>        
      </div>
      </form>
    </div>
  </div>
</div></td>
 <td>
 
<!-- Modal -->
<div class="modal fade" id="deleteModal<c:out value='${message.id_message }'/>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Supprimer</h5>
        <button type="button" class="btn-close btn-dark" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body">
       Voulez vous vraiement supprimer cette message
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Non</button>
       <a href="<%= request.getContextPath() %>/admin/messageAdmin?messageId=<c:out value='${message.id_message }'/>">
       <button type="button" class="btn btn-dark">Oui</button></a>
      </div>
    </div>
  </div>
</div>
 <img src="img/delete.png" width="20" data-bs-toggle="modal" data-bs-target="#deleteModal<c:out value='${message.id_message }'/>"></td>
                
            </tr>
          </c:forEach> 
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
               
            </tr>
        </tfoot>
    </table>
<c:import url="footerAdmin.jsp"></c:import>