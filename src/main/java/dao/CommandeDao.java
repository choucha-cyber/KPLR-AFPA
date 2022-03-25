package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Commande;



public class CommandeDao implements Idao<Commande>{
	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Commande object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect.prepareStatement(
					"INSERT INTO commande (montant, id_client) VALUES (?,?)");
			req.setDouble(1, object.getMontant());
			req.setInt(2, object.getId_client());
			

			req.executeUpdate();

			System.out.println("commande ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<Commande> read() {
		List<Commande> listeCommande = new ArrayList<>();

		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM commande");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id_commande"));

				// int id_commande, int montant, String nom_client, String email

				Commande commande = new Commande(rs.getInt("id_commande"), rs.getDouble("montant"),
						rs.getInt("id_client"));

				listeCommande.add(commande);
			}
			return listeCommande;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeCommande;
	}

	@Override
	public void update(Commande object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Commande object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Commande findById(int id) {
		Commande commande = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM commande WHERE id_commande = ?");

			req.setInt(1, id);

			ResultSet resultSet = req.executeQuery();
			// int id_commande, int montant, String nom_client, String email

			if (resultSet.next()) {
				int id_commande = resultSet.getInt("id_commande");
				Double montant = resultSet.getDouble("montant");
				int id_client = resultSet.getInt("id_client");
				
				

				commande = new Commande(id_commande, montant, id_client);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("échec");
		}

		return commande;
	}

	@Override
	public Commande findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}

}
