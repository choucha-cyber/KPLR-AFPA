package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Client;
import model.Consultant;

public class ConsultantDao implements Idao<Consultant> {
	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Consultant object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect.prepareStatement(
					"INSERT INTO Consultant (nom, prenom, email, adresse, specialite)" + " VALUES (?,?,?,?,?)");
			req.setString(1, object.getNom());
			req.setString(2, object.getPrenom());
			req.setString(3, object.getEmail());
			req.setString(4, object.getAdresse());

			req.executeUpdate();

			System.out.println("consultant ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<Consultant> read() {
		List<Consultant> listeConsultant = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM Consultant");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id"));
				
				//int id_consultant, String nom, String prenom, String email, String adresse, String specialite

				Consultant consultant = new Consultant(rs.getString("nom"), rs.getString("prenom"), rs.getString("email"),
						rs.getString("adresse"), rs.getString("specialite"));

				listeConsultant.add(consultant);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeConsultant;
	}

	@Override
	public void update(Consultant object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Consultant object) {
		try {
			PreparedStatement req = connect.prepareStatement("DELETE FROM Consultant WHERE id_consultant=?");

			req.setObject(1, object.getId_consultant());
			// System.out.println(req);
			req.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	@Override
	public Consultant findById(int id) {
		Consultant consultant = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Consultant WHERE id_consultant = ?");

			req.setInt(1, id);

			ResultSet resultSet = req.executeQuery();

			if (resultSet.next()) {
				String nom = resultSet.getString("nom");
				String prenom = resultSet.getString("prenom");
				String email = resultSet.getString("email");
				String adresse = resultSet.getString("adresse");
				String specialite = resultSet.getString("specialite");

				consultant = new Consultant(nom, prenom, email, adresse, specialite);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("find KO");
		}

		return consultant;
	}

	@Override
	public Consultant findByName(String nom_consultant) {
		Consultant consultant = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Consultant WHERE nom = ?");

			req.setString(1, nom_consultant);

			ResultSet resultSet = req.executeQuery();

			if (resultSet.next()) {
				String nom = resultSet.getString("nom");
				String prenom = resultSet.getString("prenom");
				String email = resultSet.getString("email");
				String adresse = resultSet.getString("adresse");
				String specialite = resultSet.getString("specialite");

				consultant = new Consultant(nom, prenom, email, adresse, specialite);
			}
		} catch (Exception e) {
			
			System.out.println("échec");
		}

		return consultant;
	}

}
