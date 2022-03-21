package model;

import java.util.Date;

public class Chat {
	
	private int id_chat;//AI
	private int envoyeePar;
	private int recuPar;
	private String text;
	private int vue;
	private int visible;	
	private Date dateEnvoye;
	private Client client;
	
	
	public Chat() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Chat(int id_chat, int envoyeePar, int recuPar, String text, int vue, int visible, Date dateEnvoye) {
		super();
		this.id_chat = id_chat;
		this.envoyeePar = envoyeePar;
		this.recuPar = recuPar;
		this.text = text;
		this.vue = vue;
		this.visible = visible;
		this.dateEnvoye = dateEnvoye;
	}
	
	public Chat(int id_chat, int envoyeePar, int recuPar, String text, int vue, int visible, Date dateEnvoye, Client client) {
		super();
		this.id_chat = id_chat;
		this.envoyeePar = envoyeePar;
		this.recuPar = recuPar;
		this.text = text;
		this.vue = vue;
		this.visible = visible;
		this.dateEnvoye = dateEnvoye;
		this.client = client;
	}


	public Chat(int envoyeePar, int recuPar,String text) {
		super();
		this.envoyeePar = envoyeePar;
		this.recuPar = recuPar;
		this.text = text;
	}

	public Client getClient() {
		return client;
	}
	public int getId_chat() {
		return id_chat;
	}


	public int getEnvoyeePar() {
		return envoyeePar;
	}


	public int getRecuPar() {
		return recuPar;
	}


	public String getText() {
		return text;
	}


	public int getVue() {
		return vue;
	}


	public int getVisible() {
		return visible;
	}


	public Date getDateEnvoye() {
		return dateEnvoye;
	}


	

}
