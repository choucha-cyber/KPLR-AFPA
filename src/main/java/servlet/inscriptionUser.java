package servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.ClientDao;
import model.Client;
@MultipartConfig
/**
 * Servlet implementation class AddImage
 */

/**
 * Servlet implementation class index
 */
@WebServlet("/kplr/inscriptionUser")
public class inscriptionUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inscriptionUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/kplr/inscriptionUser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside do post inscription User");
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Part file=request.getPart("image");
		String imageFileName=file.getSubmittedFileName();
		Date date=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		String dateString=sdf.format(date);
		String imageName=dateString+imageFileName;
		if(imageFileName!="") {
			
		
		String uploadPath="C:/Users/shabi/OneDrive/Documents/workspaceJ2E/stageProject/KPLR-AFPA/src/main/webapp/kplr/img/"+imageName;
		//String uploadPath="C:/Utilisateurs/MOI/eclipse-workspace/JEE/KPLR-AFPA/src/main/webapp/kplr/img/"+imageName;
		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		}
		else {
			imageName="null";
		}
		ClientDao cDao=new ClientDao();	
		
		Client client=new Client(nom,prenom,mobile,email,password,imageName);
		
		
		
		if(cDao.mailExist(email)) {
			if(cDao.create(client)) {	
				System.out.println("inserted");
				HttpSession session=request.getSession();
				session.setAttribute("client", client);
				response.sendRedirect("index");
				}
			else {
				System.out.println("problem while inserting");
			}
		}
		else {
			System.out.println("error");
			request.setAttribute("exist","mailexist");
			request.getRequestDispatcher("/kplr/index.jsp").forward(request, response);
			//response.sendRedirect("index#inscriptionUser");
		}
		
		
	}
}