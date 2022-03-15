package model;

public class Message {
	
	private int id_message;//AI
	private String nom;
	private String email;
	private String message;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Message(int id_message, String nom, String email, String message) {
		super();
		this.id_message = id_message;
		this.nom = nom;
		this.email = email;
		this.message = message;
	}

	public Message(String nom, String email, String message) {
		super();
		this.nom = nom;
		this.email = email;
		this.message = message;
	}

	public int getId_message() {
		return id_message;
	}

	public void setId_message(int id_message) {
		this.id_message = id_message;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	

}
