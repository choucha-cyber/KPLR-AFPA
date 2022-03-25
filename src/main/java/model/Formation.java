package model;



public class Formation {
	
	private int id_formation;//AI
	private String titre;
	private String code;
	private int duree;
	private int tarif;
	private String dateDebut;
	private String dateFin;
	private String contenu;
	private String image;
	
	public Formation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Formation(int id_formation, String titre, String code, int duree, int tarif, String dateDebut,String dateFin, String contenu, String image) {
		super();
		this.id_formation = id_formation;
		this.titre = titre;
		this.code = code;
		this.duree = duree;
		this.tarif = tarif;
		this.dateDebut = dateDebut;
		this.dateFin=dateFin;
		this.contenu = contenu;
		this.image= image;
	}

	public Formation(String titre, String code, int duree, int tarif, String dateDebut,String dateFin, String contenu, String image) {
		super();
		this.titre = titre;
		this.code = code;
		this.duree = duree;
		this.tarif = tarif;
		this.dateDebut=dateDebut;
		this.dateFin=dateFin;		
		this.contenu = contenu;
		this.image= image;
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


	public String getDateDebut() {
		return dateDebut;
	}

	public void setDateDebut(String date) {
		this.dateDebut = date;
	}
	public String getDateFin() {
		return dateFin;
	}

	public void setDateFin(String date) {
		this.dateFin = date;
	}


	public String getContenu() {
		return contenu;
	}
	public String getImage() {
		return image;
	}


	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	
	
	
	

}