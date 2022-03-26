package model;

public class DetailsCommande {
	
	private int id_details;
	private String code_formation;
	//private Formation formation;
	private int quantite;
	private int prix;
	private int montant_ligne;
	
	public DetailsCommande() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DetailsCommande(int id_details, String code_formation, int quantite, int prix, int montant_ligne) {
		super();
		this.id_details = id_details;
		this.code_formation = code_formation;
		this.quantite = quantite;
		this.prix = prix;
		this.montant_ligne = montant_ligne;
	}

	public DetailsCommande(String code_formation, int quantite, int prix, int montant_ligne) {
		super();
		this.code_formation = code_formation;
		this.quantite = quantite;
		this.prix = prix;
		this.montant_ligne = montant_ligne;
	}

	public int getId_details() {
		return id_details;
	}

	public void setId_details(int id_details) {
		this.id_details = id_details;
	}

	public String getCode_formation() {
		return code_formation;
	}

	public void setCode_formation(String code_formation) {
		this.code_formation = code_formation;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public int getPrix() {
		return prix;
	}

	public void setPrix(int prix) {
		this.prix = prix;
	}

	public int getMontant_ligne() {
		return montant_ligne;
	}

	public void setMontant_ligne(int montant_ligne) {
		this.montant_ligne = montant_ligne;
	}
	
	

}