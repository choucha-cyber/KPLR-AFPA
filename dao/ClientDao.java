package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Client;

public class ClientDao implements Idao<Client> {

	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Client object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect
					.prepareStatement("INSERT INTO Client (nom, adresse, email, tel)" + " VALUES (?,?,?,?)");
			req.setString(1, object.getNom());
			req.setString(2, object.getAdresse());
			req.setString(3, object.getEmail());
			req.setString(4, object.getTel());

			req.executeUpdate();

			System.out.println("client ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<Client> read() {
		List<Client> listeClient = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM Client");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id"));

				Client client = new Client(rs.getString("nom"), rs.getString("prenom"), rs.getString("email"),
						rs.getString("pwd"));

				listeClient.add(client);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeClient;
	}

	@Override
	public void update(Client object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Client object) {
		try {
			PreparedStatement req = connect.prepareStatement("DELETE FROM Client WHERE id_client=?");

			req.setObject(1, object.getId_client());
			// System.out.println(req);
			req.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	@Override
	public Client findById(int id) {
		Client client = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Client WHERE id_client = ?");

			req.setInt(1, id);

			ResultSet resultSet = req.executeQuery();

			if (resultSet.next()) {
				String nom = resultSet.getString("nom");
				String adresse = resultSet.getString("adresse");
				String email = resultSet.getString("email");
				String tel = resultSet.getString("tel");

				client = new Client(nom, adresse, email, tel);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("find KO");
		}

		return client;
	}

	@Override
	public Client findByName(String nom_client) {
		Client client = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Client WHERE nom = ?");

			req.setString(1, nom_client);

			ResultSet resultSet = req.executeQuery();

			if (resultSet.next()) {
				String nom = resultSet.getString("nom");
				String adresse = resultSet.getString("adresse");
				String email = resultSet.getString("email");
				String tel = resultSet.getString("tel");

				client = new Client(nom, adresse, email, tel);
			}
		} catch (Exception e) {
			
			System.out.println("échec");
		}

		return client;
	}

}
