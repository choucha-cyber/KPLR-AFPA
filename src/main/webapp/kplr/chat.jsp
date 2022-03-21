<c:import url="/kplr/header.jsp" />	


<div class="container mt-5  overflow-auto" id="chat" style="height:70%;" >

  <!-- Grid row -->
  <div class="row d-flex flex-row-reverse mx-auto justify-content-center" >

    <!-- Grid column -->
    <div class="col-md-6 mb-4 d-flex flex-row-reverse">

      <div class="card chat-room small-chat wide" id="myForm">
  
        <div class="my-custom-scrollbar" id="message">
          <div class="card-body p-3">
            <div class="chat-message">
               <div class="d-flex justify-content-start">
                <div class="profile-photo message-photo">
                  <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-6.webp" alt="avatar" class="avatar rounded-circle mr-2 ml-0">
                  <span class="state"></span>
                </div>
              <div class="card bg-secondary rounded w-75 z-depth-0 mb-1 message-text">
                <div class="card-body p-2">
                  <p class="card-text text-white">How can i help you</p>
                </div>
              </div>
              </div>
              
             <c:forEach items="${chats}" var="chat">
             <c:if test="${chat.envoyeePar !=  0}">
             <div class="d-flex justify-content-end">
               <div class="card bg-primary rounded w-75 float-right z-depth-0 mb-1 ">
                <div class="card-body p-2">
                  <p class="card-text text-white"><c:out value="${chat.text }"/></p>
              
                </div>
              </div>
              <div class="profile-photo message-photo">
                  <img src="img/<c:out value="${client.image }"/>" width="100" alt="avatar" class="avatar rounded-circle mr-2 ml-0">
                  <span class="state"></span>
                </div>
              </div>
              </c:if>
               <c:if test="${chat.envoyeePar ==  0}">
               <div class="d-flex justify-content-start">
                <div class="profile-photo message-photo">
                  <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-6.webp" alt="avatar" class="avatar rounded-circle mr-2 ml-0">
                  <span class="state"></span>
                </div>
              <div class="card bg-secondary rounded w-75 z-depth-0 mb-1 message-text">
                <div class="card-body p-2">
                  <p class="card-text text-white"><c:out value="${chat.text }"/></p>
                </div>
              </div>
              </div>
              </c:if>
            </c:forEach>
            
            
              
            </div>
          </div>
        </div>
        <div class="card-footer text-muted white pt-1 pb-2 px-3">
        <form action="<%=request.getContextPath()%>/kplr/chat?clientId=<c:out value='${client.id_client }'/>" method="post">
          <input type="text" id="exampleForm2" name="text" class="form-control" placeholder="Type a message...">
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
</body>
</html>