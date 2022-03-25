package servlet;

import java.io.FileOutputStream;


import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.FormationDao;
import model.Formation;

@MultipartConfig
/**
 * Servlet implementation class AddImage
 */

/**
 * Servlet implementation class updateFormation
 */
@WebServlet("/admin/updateFormation")
public class updateFormation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateFormation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FormationDao fDao=new FormationDao();
		Formation formation=fDao.findById(Integer.parseInt(request.getParameter("formationId")));
		String dateDebut=formation.getDateDebut();
		String dateFin=formation.getDateFin();
		String dateDebutNew= ""+dateDebut.charAt(6)+dateDebut.charAt(7)+dateDebut.charAt(8)+dateDebut.charAt(9)
		+"-"+dateDebut.charAt(3)+dateDebut.charAt(4)+"-"+dateDebut.charAt(0)+dateDebut.charAt(1);
		String dateFinNew= ""+dateFin.charAt(6)+dateFin.charAt(7)+dateFin.charAt(8)+dateFin.charAt(9)
		+"-"+dateFin.charAt(3)+dateFin.charAt(4)+"-"+dateFin.charAt(0)+dateFin.charAt(1);
	
		request.setAttribute("formation", formation);
		request.setAttribute("dateDebut", dateDebutNew);
		request.setAttribute("dateFin", dateFinNew);
		
		request.getRequestDispatcher("/admin/updateFormation.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FormationDao fDao=new FormationDao();
		int formationId=Integer.parseInt(request.getParameter("formationId"));
		if(request.getParameter("image")!=null) {
				
			Part file=request.getPart("image");
			
			String imageFileName=file.getSubmittedFileName();
			if(imageFileName == "") {
				imageFileName=fDao.findById(formationId).getImage();
			}
			String uploadPath="C:/Users/shabi/OneDrive/Documents/workspaceJ2E/stageProject/KPLR-AFPA/src/main/webapp/kplr/img/formations/"+imageFileName;
			
			//String uploadPath="C:/Utilisateurs/MOI/eclipse-workspace/JEE/KPLR-AFPA/src/main/webapp/kplr/img/formations/"+imageFileName;
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
			fDao.updateImage(imageFileName,formationId);
		}
		else {
		String titre = request.getParameter("titre");
		String code = request.getParameter("code");
		int duree = Integer.parseInt(request.getParameter("duree"));
		int tarif = Integer.parseInt(request.getParameter("tarif"));
		String dateDebutAvant = request.getParameter("dateDebut");
		String dateFinAvant = request.getParameter("dateFin");
		String contenu = request.getParameter("contenu");
				
		Date date1, date2;
		try {
			date1=new SimpleDateFormat("yyyy-MM-dd").parse(dateDebutAvant);		
		    date2=new SimpleDateFormat("yyyy-MM-dd").parse(dateFinAvant);
		    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
			String dateDebut = dateFormat.format(date1); 
			String dateFin = dateFormat.format(date2); 
			Formation formation = new Formation(formationId, titre, code, duree, tarif, dateDebut, dateFin, contenu, fDao.findById(formationId).getImage());
			fDao.update(formation);

			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		response.sendRedirect("formationsAdmin");
		
	}

}
