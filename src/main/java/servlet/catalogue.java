package servlet;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dao.DetailsDao;
import dao.FormationDao;
import model.Admin;
import model.DetailsCommande;

/**
 * Servlet implementation class catalogue
 */
@WebServlet("/kplr/catalogue")
public class catalogue extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FormationDao formationDao = new FormationDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public catalogue() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// retourne ma liste des formations
		
				request.setAttribute("formations", formationDao.read());

				request.getRequestDispatcher("/kplr/catalogue.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Recup données formation choisie
		DetailsDao detailsD = new DetailsDao();
		DetailsCommande details = new DetailsCommande();
		detailsD.create(details);
		
		doGet(request, response);
		
		/* // Recup saisies
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("email");
				String password = request.getParameter("password");

				// String nom, String prenom, String email, String password

				// instancie un nouvel admin
				Admin nouvelAdmin = new Admin(nom, prenom, email, password);

				AdminDao adminDao = new AdminDao();
				adminDao.create(nouvelAdmin);

				System.out.println(nouvelAdmin);

				doGet(request, response); */
	}

}