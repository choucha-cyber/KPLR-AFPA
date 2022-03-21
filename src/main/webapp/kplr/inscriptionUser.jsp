<c:import url="header.jsp"></c:import>
<div class="container">
<div> <h2> INSCRIPTION </h2></div> 
<c:if test="${exist == 'false' }"> 
<div class="alert alert-danger" role="alert">
  Mail déja exist
</div>
</c:if> 
 
<form action="<% request.getContextPath(); %>inscription" method="post" enctype="multipart/form-data" onsubmit="return verif();">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nom</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="nom" aria-describedby="emailHelp">    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Prenom</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="prenom" aria-describedby="emailHelp">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mobile</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="mobile" aria-describedby="emailHelp">    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1">
  </div>
   <div class="mb-3">
   
   <img id="selectedImage" src='images/userProfileImage.jpg' width="50%" onclick="document.getElementById('getFile').click(); return false;">
	<img src="images/clear.png" onclick="removeImage();" width="20px" alt="clear"> 
	<input type="file" id="getFile" name="image" onchange="loadFile(event)" style="display: none">
   
   </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<footer class="text-center small tm-footer">
			<p class="mb-0">
				Copyright &copy; 2022 KPLR . <a rel="nofollow"
					href="https://www.tooplate.com" title="HTML templates">Designed
					by Shabina@Aisha</a>
			</p>
		</footer>



	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="slick/slick.min.js"></script>
	<script src="magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/jquery.singlePageNav.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>