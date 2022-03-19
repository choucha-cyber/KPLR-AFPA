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
@WebServlet("/kplr/chat")
public class chat extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FormationDao formationDao = new FormationDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.getRequestDispatcher("/kplr/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int senderId=Integer.parseInt(request.getParameter("userId"));
		String text= request.getParameter("text");	
//		ChatModel cm= new ChatModel(senderId,message);
//		ChatDao cdao=new ChatDao();
//		cdao.create(cm);
		
	}

}
