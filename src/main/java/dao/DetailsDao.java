package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.DetailsCommande;

public class DetailsDao implements Idao<DetailsCommande> {
	Connection connect = Connect.getConnection();

	@Override
	public boolean create(DetailsCommande object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect.prepareStatement(
					"INSERT INTO detailsCommande (code_formation, quantite, prix, montant_ligne) VALUES (?,?,?,?)");
			req.setString(1, object.getCode_formation());
			req.setInt(2, object.getQuantite());
			req.setInt(3, object.getPrix());
			req.setInt(4, object.getMontant_ligne());

			req.executeUpdate();

			System.out.println("details commande ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<DetailsCommande> read() {

		List<DetailsCommande> listeDetails = new ArrayList<>();

		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM detailsCommande");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id_details"));

				// int id_details, String code_formation, int quantite, int prix, int
				// montant_ligne

				DetailsCommande details = new DetailsCommande(rs.getInt("id_details"), rs.getString("code_formation"),
						rs.getInt("quantite"), rs.getInt("prix"), rs.getInt("montant_ligne"));

				listeDetails.add(details);
			}
			return listeDetails;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeDetails;
	}

	@Override
	public void update(DetailsCommande object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(DetailsCommande object) {
		// TODO Auto-generated method stub

	}

	@Override
	public DetailsCommande findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DetailsCommande findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}

}
