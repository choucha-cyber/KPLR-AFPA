package model;

public class Commande {
	
	private int id_commande;
	private int montant;
	private String nom_client;
	//private Client client;
	private String email;
	
	public Commande() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Commande(int id_commande, int montant, String nom_client, String email) {
		super();
		this.id_commande = id_commande;
		this.montant = montant;
		this.nom_client = nom_client;
		this.email = email;
	}

	public Commande(int montant, String nom_client, String email) {
		super();
		this.montant = montant;
		this.nom_client = nom_client;
		this.email = email;
	}

	public int getId_commande() {
		return id_commande;
	}

	public void setId_commande(int id_commande) {
		this.id_commande = id_commande;
	}

	public int getMontant() {
		return montant;
	}

	public void setMontant(int montant) {
		this.montant = montant;
	}

	public String getNom_client() {
		return nom_client;
	}

	public void setNom_client(String nom_client) {
		this.nom_client = nom_client;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	

}
