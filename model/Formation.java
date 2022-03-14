package model;

import java.sql.Date;

public class Formation {
	
	private int id_formation;//AI
	private String titre;
	private int prix;
	private Date date;
	private String resume;
	
	public Formation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Formation(int id_formation, String titre, int prix, Date date, String resume) {
		super();
		this.id_formation = id_formation;
		this.titre = titre;
		this.prix = prix;
		this.date = date;
		this.resume = resume;
	}

	public Formation(String titre, int prix, Date date, String resume) {
		super();
		this.titre = titre;
		this.prix = prix;
		this.date = date;
		this.resume = resume;
	}

	public int getId_formation() {
		return id_formation;
	}

	public void setId_formation(int id_formation) {
		this.id_formation = id_formation;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public int getPrix() {
		return prix;
	}

	public void setPrix(int prix) {
		this.prix = prix;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}
	
	

}
