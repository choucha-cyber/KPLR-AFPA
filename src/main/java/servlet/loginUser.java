package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClientDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/kplr/loginUser")
public class loginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("compte/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside login post");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		ClientDao cDao=new ClientDao();
		if(cDao.login(email, password)!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("client", cDao.login(email, password));		
			response.sendRedirect("index");
		}
		else {
			request.setAttribute("failed","failed");
			request.getRequestDispatcher("/kplr/index.jsp").forward(request, response);
		}
	}

}
