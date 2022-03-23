package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dao.ChatDao;
import dao.MessageDao;


/**
 * Servlet implementation class loginAdmin
 */
@WebServlet("/admin/loginAdmin")
public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		AdminDao ad = new AdminDao();

		if (ad.login(email, password) != null) {

			HttpSession session = request.getSession();

			session.setAttribute("admin", ad.login(email, password));
			
			ChatDao cDao=new ChatDao();
			session.setAttribute("totalUnReadChat", cDao.countTotalUnRead());
			
			MessageDao mDao=new MessageDao();
			session.setAttribute("countMessageUnRead", mDao.countMessageUnRead());
			

			response.sendRedirect("formationsAdmin");
		} else {
			doGet(request, response);
		}
	
	}

}
