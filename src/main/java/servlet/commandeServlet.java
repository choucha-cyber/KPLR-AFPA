package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dao.CommandeDao;
import dao.FormationDao;
import model.Admin;
import model.Commande;
import model.Formation;

/**
 * Servlet implementation class commandeServlet
 */
@WebServlet("/kplr/commande")
public class commandeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FormationDao formationD = new FormationDao();
	
	CommandeDao commandeD  = new CommandeDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commandeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id_formation = Integer.parseInt(request.getParameter("idFormation"));
		
		
		
		Formation formation= formationD.findById(id_formation);
		
		
		request.setAttribute("formation", formation);

		request.getRequestDispatcher("/kplr/commande.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		// Recup saisies montant, id_client
		int id_client = Integer.parseInt(request.getParameter("clientId"));
		Double tarif = (double) Integer.parseInt(request.getParameter("tarif"));
		
		Commande commande= new Commande(tarif, id_client);
		commandeD.create(commande);
		
		response.sendRedirect("paiement");
		
	}

}
