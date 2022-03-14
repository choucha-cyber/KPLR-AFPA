package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.Formation;

public class FormationDao implements Idao<Formation> {
	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Formation object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect
					.prepareStatement("INSERT INTO Formation (titre, prix, date, resume)" + " VALUES (?,?,?,?)");
			req.setString(1, object.getTitre());
			req.setInt(2, object.getPrix());
			req.setDate(3, object.getDate());
			req.setString(4, object.getResume());

			req.executeUpdate();

			System.out.println("formation ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<Formation> read() {
		List<Formation> listeFormation = new ArrayList<>();

		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM Formation");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id_formation"));

				// int id_formation, String titre, int prix, Date date, String resume

				Formation formation = new Formation(rs.getInt("id_formation"), rs.getString("titre"), rs.getInt("prix"),
						rs.getDate("date"), rs.getString("resume"));

				listeFormation.add(formation);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeFormation;
	}

	@Override
	public void update(Formation object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Formation object) {
		// TODO Auto-generated method stub

	}

	@Override
	public Formation findById(int id) {
		Formation formation = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Formation WHERE id_formation = ?");

			req.setInt(1, id);

			ResultSet resultSet = req.executeQuery();
			// int id_formation, String titre, int prix, Date date, String resume

			if (resultSet.next()) {
				int id_formation = resultSet.getInt("id_formation");
				String titre = resultSet.getString("titre");
				int prix = resultSet.getInt("prix");
				Date date = resultSet.getDate("date");
				String resume = resultSet.getString("resume");

				formation = new Formation(id_formation, titre, prix, date, resume);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("échec");
		}

		return formation;
	}

	@Override
	public Formation findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}

}
