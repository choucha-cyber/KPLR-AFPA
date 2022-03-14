package model;

public class Client {
	
	private int id_client;//AI
	private String nom;
	private String adresse;
	private String email;
	private String tel;
	
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Client(int id_client, String nom, String adresse, String email, String tel) {
		super();
		this.id_client = id_client;
		this.nom = nom;
		this.adresse = adresse;
		this.email = email;
		this.tel = tel;
	}
	public Client(String nom, String adresse, String email, String tel) {
		super();
		this.nom = nom;
		this.adresse = adresse;
		this.email = email;
		this.tel = tel;
	}
	public int getId_client() {
		return id_client;
	}
	public void setId_client(int id_client) {
		this.id_client = id_client;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
