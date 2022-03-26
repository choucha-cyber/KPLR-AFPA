package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDao;
import dao.FormationDao;
import model.Formation;

/**
 * Servlet implementation class ajoutFormationAdmin
 */
@WebServlet("/admin/users")
public class users extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ClientDao clientDao = new ClientDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public users() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("clientId")!=null)
		{
			clientDao.delete(Integer.parseInt(request.getParameter("clientId")));
		}
		request.setAttribute("users", clientDao.read());
		request.getRequestDispatcher("/admin/users.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}