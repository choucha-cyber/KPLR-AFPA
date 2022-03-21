package servlet;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;

import model.Admin;

/**
 * Servlet implementation class compteAdmin
 */
@WebServlet("/admin/compteAdmin")
public class compteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AdminDao adminDao = new AdminDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public compteAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("admins", adminDao.read());
		request.getRequestDispatcher("compteAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Recup saisies
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

		doGet(request, response);

		/*
		 * boolean exist = false;
		 * 
		 * 
		 * if (adminDao.mailExist(email)) {
		 * 
		 * adminDao.create(nouvelAdmin);
		 * 
		 * 
		 * exist = false; request.setAttribute("exist", exist);
		 * 
		 */
		// request.getRequestDispatcher("compteAdmin.jsp").forward(request, response);
		/* response.sendRedirect("indexAdmin"); */
		// doGet(request, response);

		/*
		 * } else { exist = true; request.setAttribute("exist", exist);
		 * response.sendRedirect("indexAdmin");
		 * 
		 * 
		 * }
		 */

	}

}