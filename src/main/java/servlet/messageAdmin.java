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
import javax.servlet.http.HttpSession;

import dao.ChatDao;
import dao.ClientDao;
import dao.FormationDao;
import dao.MessageDao;
import mailVerification.MailVerif;
import model.Chat;
import model.Client;
import model.Formation;
import model.Message;

/**
 * Servlet implementation class ajoutFormationAdmin
 */
@WebServlet("/admin/messageAdmin")
public class messageAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public messageAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageDao mDao=new MessageDao();
		if(request.getParameter("messageId") != null) {
			int messageId=Integer.parseInt(request.getParameter("messageId"));
			mDao.delete(messageId);
		}
		
		List<Message> messages=mDao.read();
		mDao.dejaVue();
		request.setAttribute("messages", messages);
		HttpSession session = request.getSession();
		session.setAttribute("countMessageUnRead", mDao.countMessageUnRead());
		
		request.getRequestDispatcher("/admin/messageAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		MailVerif.sendMail(email,message);
		doGet(request,response);
	}

}