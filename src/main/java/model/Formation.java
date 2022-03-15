package model;



public class Formation {
	
	private int id_formation;//AI
	private String titre;
	private String code;
	private int duree;
	private int tarif;
	private String date;
	private String contenu;
	
	public Formation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Formation(int id_formation, String titre, String code, int duree, int tarif, String date, String contenu) {
		super();
		this.id_formation = id_formation;
		this.titre = titre;
		this.code = code;
		this.duree = duree;
		this.tarif = tarif;
		this.date = date;
		this.contenu = contenu;
	}

	public Formation(String titre, String code, int duree, int tarif, String date, String contenu) {
		super();
		this.titre = titre;
		this.code = code;
		this.duree = duree;
		this.tarif = tarif;
		this.date = date;
		this.contenu = contenu;
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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getDuree() {
		return duree;
	}

	public void setDuree(int duree) {
		this.duree = duree;
	}

	public int getTarif() {
		return tarif;
	}

	public void setTarif(int tarif) {
		this.tarif = tarif;
	}


	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	
	
	
	

}
