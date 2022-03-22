package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChatDao;
import dao.ClientDao;
import model.Chat;
import model.Client;

/**
 * Servlet implementation class ajoutFormationAdmin
 */
@WebServlet("/kplr/chat")
public class chat extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
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
		ChatDao cdao=new ChatDao();
		ClientDao clientDao = new ClientDao();
		int clientId=Integer.parseInt(request.getParameter("clientId"));
		List<Chat> c=cdao.read(clientId);
		Client client= clientDao.findById(clientId);
		request.setAttribute("chats", c);
		request.setAttribute("client", client);
		request.getRequestDispatcher("chat.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside chat post");
		int envoyeePar=Integer.parseInt(request.getParameter("clientId"));
		String text= request.getParameter("text");			
		Chat c=new Chat(envoyeePar,0,text);  // 0 for admin
		
		ChatDao cdao=new ChatDao();
		cdao.create(c);
		doGet(request,response);
		
	}

}