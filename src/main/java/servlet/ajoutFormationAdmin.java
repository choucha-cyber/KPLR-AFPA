package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FormationDao;
import model.Formation;

/**
 * Servlet implementation class ajoutFormationAdmin
 */
@WebServlet("/admin/ajoutFormationAdmin")
public class ajoutFormationAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajoutFormationAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("ajoutFormationAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String titre = request.getParameter("titre");
		String code = request.getParameter("code");
		int duree = Integer.parseInt(request.getParameter("duree"));
		int tarif = Integer.parseInt(request.getParameter("tarif"));
		String date = request.getParameter("date");
		String contenu = request.getParameter("contenu");
		
		//String titre, String code, int duree, int tarif, String date, String contenu
		Formation formation = new Formation(titre, code, duree, tarif, date, contenu);
		FormationDao formationDao = new FormationDao();
		
		formationDao.create(formation);
		System.out.println(formation);
		
		doGet(request, response);
	}

}
