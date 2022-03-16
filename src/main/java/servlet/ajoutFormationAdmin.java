package servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	
	FormationDao formationDao = new FormationDao();
       
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
		
		
		request.setAttribute("formations", formationDao.read());
		request.getRequestDispatcher("/admin/ajoutFormationAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String titre = request.getParameter("titre");
		String code = request.getParameter("code");
		int duree = Integer.parseInt(request.getParameter("duree"));
		int tarif = Integer.parseInt(request.getParameter("tarif"));
		String dateDebutAvant = request.getParameter("dateDebut");
		String dateFinAvant = request.getParameter("dateFin");
		Date date1, date2;
		try {
			date1=new SimpleDateFormat("yyyy-MM-dd").parse(dateDebutAvant);		
		    date2=new SimpleDateFormat("yyyy-MM-dd").parse(dateFinAvant);
		    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
			String dateDebut = dateFormat.format(date1); 
			String dateFin = dateFormat.format(date2); 
			String contenu = request.getParameter("contenu");
			
			//String titre, String code, int duree, int tarif, String date, String contenu
			Formation formation = new Formation(titre, code, duree, tarif, dateDebut, dateFin, contenu);
			formationDao.create(formation);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("formationsAdmin");
	}

}
