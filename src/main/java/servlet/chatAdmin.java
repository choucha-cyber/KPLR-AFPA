package servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChatDao;
import dao.ClientDao;
import dao.FormationDao;
import model.Chat;
import model.Client;
import model.Formation;

/**
 * Servlet implementation class ajoutFormationAdmin
 */
@WebServlet("/admin/chatAdmin")
public class chatAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FormationDao formationDao = new FormationDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ChatDao cDao=new ChatDao();
		ClientDao clientDao=new ClientDao();
		List<Chat> chats=cDao.read();//All chats
		
		List<Integer> countUnReads= new ArrayList<>();	
		
		if(request.getParameter("envoyeePar") != null) {
			List<Chat> chatsSingleClient=cDao.readSingleChat(Integer.parseInt(request.getParameter("envoyeePar")));
			Client client= clientDao.findById(Integer.parseInt(request.getParameter("envoyeePar")));
			request.setAttribute("chatsSingleClient", chatsSingleClient);
			request.setAttribute("client", client);
			request.setAttribute("details", "details");
			cDao.dejaVue(Integer.parseInt(request.getParameter("envoyeePar")));
		}
		
		
		for(int i=0;i<chats.size();i++) {
		int countUnRead=cDao.countUnRead(chats.get(i).getEnvoyeePar());		
		countUnReads.add(countUnRead);
		}
		request.setAttribute("countUnReads", countUnReads);		
		request.setAttribute("chats", chats);
		
		request.getRequestDispatcher("/admin/chatAdmin.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int envoyeePar=Integer.parseInt(request.getParameter("envoyeePar"));
		String text= request.getParameter("text");			
		Chat c=new Chat(0,envoyeePar,text);  // 0 for admin
		
		ChatDao cdao=new ChatDao();
		cdao.create(c);
		doGet(request,response);
	}

}
