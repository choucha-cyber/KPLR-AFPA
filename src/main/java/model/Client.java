package model;

import java.util.Date;

public class Client {
	
	private int id_client;//AI
	private String nom;
	private String prenom;
	private String tel;
	private String email;
	private String password;
	private String image;
	private Date dateInscription;
	
	
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Client( String nom, String prenom, String tel, String email, String password, String image) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.email = email;
		this.password = password;
		this.image = image;
	}


	public Client(int id_client, String nom, String prenom, String tel, String email, String image, Date dateInscription) {
		super();
		this.id_client = id_client;
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.email = email;
		this.image = image;
		this.dateInscription = dateInscription;
	}


	public int getId_client() {
		return id_client;
	}


	public String getNom() {
		return nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public String getTel() {
		return tel;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public String getImage() {
		return image;
	}
	public Date getDateInscription() {
		return dateInscription;
	}
	
	

}
