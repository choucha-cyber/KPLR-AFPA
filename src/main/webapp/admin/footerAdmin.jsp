   <footer class="row tm-mt-big">
            <div class="col-12 font-weight-light">
                <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                    Copyright &copy; 2022 Admin Dashboard KPLR. Created by
                    Aisha & Shabina
                </p>
            </div>
  </footer>
  
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
       <!-- JQuery -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
 
 	<!-- data tables -->  
 	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
  	<script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
  	<script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
  	<script src="js/script.js"></script>
    <script>
        $(function () {
            $('#expire_date').datepicker();
        });
    </script>
    <script>
    		$(document).ready(function() {
        	$('#formationTable').DataTable();
    	} );
    
    </script>
    <script>
    		$(document).ready(function() {
        	$('#messageT').DataTable();
    	} );
    
    </script>
    
    <script>
		var loadFile = function(event) {
		var image = document.getElementById('selectedImage');
		image.src = URL.createObjectURL(event.target.files[0]);
		};
		function removeImage(){
		document.getElementById("getFile").value = null;
		document.getElementById("selectedImage").src= "../kplr/img/formations/placeHolder.jpg";	
		}		
	</script>
	<script>
		$(document).ready( function () {
    	$('#userTable').DataTable();
		} );
	</script>
  
</body>

</html>