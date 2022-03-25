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
			PreparedStatement req = connect.prepareStatement(
					"INSERT INTO formation (titre, code, duree, tarif, dateDebut, dateFin, contenu,image) VALUES (?,?,?,?,?,?,?,?)");
			req.setString(1, object.getTitre());
			req.setString(2, object.getCode());
			req.setInt(3, object.getDuree());
			req.setInt(4, object.getTarif());
			req.setString(5, object.getDateDebut());
			req.setString(6, object.getDateFin());
			req.setString(7, object.getContenu());
			req.setString(8, object.getImage());

			req.executeUpdate();
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

				// int id_formation, String titre, String code, int duree, int tarif, String
				// date, String contenu

				Formation formation = new Formation(rs.getInt("id_formation"), rs.getString("titre"),
						rs.getString("code"), rs.getInt("duree"), rs.getInt("tarif"), rs.getString("dateDebut"),
						rs.getString("dateFin"), rs.getString("contenu"), rs.getString("image"));

				listeFormation.add(formation);
			}
			return listeFormation;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeFormation;
	}

	@Override
	public void update(Formation object) {
		PreparedStatement req;
		try {
			req=connect.prepareStatement("UPDATE formation SET titre=?, code=?, duree=?, tarif=?, dateDebut=?, dateFin=?, contenu=?,image=? WHERE id_formation=?");
			req.setString(1, object.getTitre());
			req.setString(2, object.getCode());
			req.setInt(3, object.getDuree());
			req.setInt(4, object.getTarif());
			req.setString(5, object.getDateDebut());
			req.setString(6, object.getDateFin());
			req.setString(7, object.getContenu());
			req.setString(8, object.getImage());
			req.setInt(9, object.getId_formation());
			req.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public void updateImage(String image,int id_formation) {
		PreparedStatement req;
		try {
			req=connect.prepareStatement("UPDATE formation SET image=? WHERE id_formation=?");
			req.setString(1, image);
			req.setInt(2, id_formation);
			
			req.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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

			if (resultSet.next()) {
				int id_formation = resultSet.getInt("id_formation");
				String titre = resultSet.getString("titre");
				String code = resultSet.getString("code");
				int duree = resultSet.getInt("duree");
				int tarif = resultSet.getInt("tarif");
				String dateDebut = resultSet.getString("dateDebut");
				String dateFin = resultSet.getString("dateFin");
				String contenu = resultSet.getString("contenu");
				String image = resultSet.getString("image");				

				formation = new Formation(id_formation, titre, code, duree, tarif, dateDebut, dateFin, contenu,image);
			}
		} catch (Exception e) {
		}

		return formation;
	}

	@Override
	public Formation findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(int id) {
		PreparedStatement ps;
		try {
			ps=connect.prepareStatement("DELETE FROM formation WHERE id_formation=?");
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}