package model;

public class Metier {
	
	private int id_metier;//AI
	private String titre;
	private String contenu;
	
	public Metier() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Metier(int id_metier, String titre, String contenu) {
		super();
		this.id_metier = id_metier;
		this.titre = titre;
		this.contenu = contenu;
	}

	public Metier(String titre, String contenu) {
		super();
		this.titre = titre;
		this.contenu = contenu;
	}

	public int getId_metier() {
		return id_metier;
	}

	public void setId_metier(int id_metier) {
		this.id_metier = id_metier;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	
	

}
