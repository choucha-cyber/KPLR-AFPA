package model;

public class Consultant {

	private int id_consultant;// AI
	private String nom;
	private String prenom;
	private String email;
	private String adresse;
	private String specialite;

	public Consultant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Consultant(int id_consultant, String nom, String prenom, String email, String adresse, String specialite) {
		super();
		this.id_consultant = id_consultant;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.adresse = adresse;
		this.specialite = specialite;
	}

	public Consultant(String nom, String prenom, String email, String adresse, String specialite) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.adresse = adresse;
		this.specialite = specialite;
	}

	public int getId_consultant() {
		return id_consultant;
	}

	public void setId_consultant(int id_consultant) {
		this.id_consultant = id_consultant;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getSpecialite() {
		return specialite;
	}

	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}

}
