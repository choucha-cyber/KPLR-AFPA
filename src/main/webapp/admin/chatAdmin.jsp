
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:import url="headAdmin.jsp"></c:import>



<div class="card grey lighten-3 chat-room">
  <div class="card-body">

    <!-- Grid row -->
    <div class="row px-lg-2 px-2">

      <!-- Grid column -->
      <div class="col-md-6 col-xl-4 px-0 " >

        <h6 class="font-weight-bold mb-3 text-center text-lg-left">Clients</h6>
        <div class="white z-depth-1 px-3 pt-3 pb-0">
          <ul class="list-unstyled friend-list">
          <c:forEach items="${chats }" var="chat" varStatus="status">
          <c:if test="${chat.envoyeePar != 0 }">
            <li class="active grey lighten-3 p-2">
             <img data-bs-toggle="modal" data-bs-target="#exampleModal<c:out value="${chat.id_chat }"/>" class="float-left " src="img/delete.png" width="20"/>
            
<!-- Modal -->
<div class="modal fade" id="exampleModal<c:out value="${chat.id_chat }"/>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close btn-danger" data-bs-dismiss="modal" aria-label="Close">X</button>
      </div>
      <div class="modal-body">
       Voulez vous vraiment supprimer le conversation avec le client <b>${chat.client.nom}</b>?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Non</button>
       <a href="<%= request.getContextPath() %>/admin/deleteChatAdmin?envoyeePar=<c:out value='${chat.envoyeePar }'/>">
        <button type="button" class="btn btn-primary">Oui</button>
      </a>
      </div>
    </div>
  </div>
</div>
              <a href="<%= request.getContextPath() %>/admin/chatAdmin?envoyeePar=<c:out value='${chat.envoyeePar }'/>" class="d-flex justify-content-between">
              <div class="text-small">
                  <strong>      ${chat.client.nom}</strong>
                  <p class="last-message text-muted">${chat.text}</p>
                </div>
                 <div class="chat-footer">
                 <c:set var="date" value="${fn:split(chat.dateEnvoye, ' ')}" /> 
                 <c:set var="dateOnly" value="${fn:split(date[0], '-')}" /> 
                  <p class="text-smaller text-muted mb-0">${dateOnly[2]}/${dateOnly[1]}/${dateOnly[0]}
                  <p class="text-smaller text-muted mb-0">${date[1]}</p></p>
                  <c:if test="${countUnReads[status.index] != 0 }">
                  <span class="badge badge-danger float-right">${countUnReads[status.index]}</span>
                </c:if>
                </div> 
              </a>
             
            </li>
            </c:if>
           </c:forEach> 
           
           
          </ul>
        </div>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-6 col-xl-8 pl-md-3 px-lg-auto px-0 " >
	<c:if test="${not empty details }">
        <div class="chat-message" >

          <ul class="list-unstyled chat">
          <c:forEach items="${chatsSingleClient }" var="chatSingleClient">
          <c:if test="${chatSingleClient.envoyeePar != 0 }">
            <li class="d-flex justify-content-between mb-4 bg-dark">
              <div class="chat-body white p-3 ml-2 z-depth-1">
                <div class="header text-light">
                  <strong class="primary-font">${client.nom}</strong>
                   <c:set var="date2" value="${fn:split(chatSingleClient.dateEnvoye, ' ')}" /> 
                 <c:set var="dateOnly2" value="${fn:split(date2[0], '-')}" />
                  <small class="pull-right text-light"><i class="far fa-clock"></i>${dateOnly2[2]}/${dateOnly2[1]}/${dateOnly2[0]} � ${date2[1]}</small>
                </div>
                <hr class="w-100">
                <p class="mb-0 text-light">
                 ${chatSingleClient.text}
                </p>
              </div>
            </li>
            </c:if>
             <c:if test="${chatSingleClient.envoyeePar == 0 }">
              <li class="d-flex justify-content-end mb-4 bg-secondary">
              <div class="chat-body white p-3 z-depth-1 text-dark">
                <div class="header">
                  <strong class="primary-font"> Admin</strong>
                 <small class="pull-right text-dark"><i class="far fa-clock"></i>${dateOnly2[2]}/${dateOnly2[1]}/${dateOnly2[0]} � ${date2[1]}</small>
                </div>
                <hr class="w-100">
                <p class="mb-0 text-dark">
                 ${chatSingleClient.text}
                </p>
              </div>
              </li>
             </c:if>
         </c:forEach>	
        
            <li class="white">
             <form method="post" action="<%= request.getContextPath() %>/admin/chatAdmin?envoyeePar=<c:out value='${chatsSingleClient[0].envoyeePar }'/>">
              <div class="form-group basic-textarea">
                <textarea name="text" class="form-control pl-2 my-0" id="exampleFormControlTextarea2" rows="3" placeholder="Type your message here..."></textarea>
               <button type="submit" class="btn btn-dark btn-rounded btn-sm waves-effect waves-light float-right">Send</button>
        
              </div>
               </form>
            </li>
           
          </ul>

        </div>
</c:if>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
</div>


<c:import url="footerAdmin.jsp"></c:import>