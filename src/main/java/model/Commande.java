package model;

public class Commande {
	
	private int id_commande;
	private Double montant;
	private int id_client;

	
	public Commande() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Commande(int id_commande, Double montant, int id_client) {
		super();
		this.id_commande = id_commande;
		this.montant = montant;
		this.id_client = id_client;
	}
		

	public Commande(Double montant, int id_client) {
		super();
		this.montant = montant;
		this.id_client = id_client;

	}

	public int getId_commande() {
		return id_commande;
	}

	public void setId_commande(int id_commande) {
		this.id_commande = id_commande;
	}


	public Double getMontant() {
		return montant;
	}


	public void setMontant(Double montant) {
		this.montant = montant;
	}


	public int getId_client() {
		return id_client;
	}

	public void setId_client(int id_client) {
		this.id_client = id_client;
	}


}
