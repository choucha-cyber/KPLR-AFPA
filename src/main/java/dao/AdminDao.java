package dao;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import model.Admin;

public class AdminDao {
	Connection connect = Connect.getConnection();

	public boolean create(Admin object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect
					.prepareStatement("INSERT INTO Admin (nom, prenom, email, password) VALUES (?,?,?,?)");
			req.setString(1, object.getNom());
			req.setString(2, object.getPrenom());
			req.setString(3, object.getEmail());
			req.setString(4, encode(object.getPassword()));

			req.executeUpdate();

			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	public List<Admin> read() {
		List<Admin> listeAdmin = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM Admin");

			rs = sql2.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getInt("id"));

				Admin admin = new Admin(rs.getString("nom"), rs.getString("prenom"), rs.getString("email"),
						rs.getString("password"));

				listeAdmin.add(admin);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listeAdmin;
	}

	public boolean mailExist(String email) {
		Boolean msg = false;
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM Admin WHERE email = ?");

			sql.setString(1, email);

			ResultSet rs = sql.executeQuery();

			if (!rs.next()) {
				msg = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return msg;
	}

	// CRYPTAGE DU PWD
	public static String encode(String value) throws NoSuchAlgorithmException {

		MessageDigest md = MessageDigest.getInstance("SHA-256");
		byte[] hash = md.digest(value.getBytes(StandardCharsets.UTF_8));
		String encoded = Base64.getEncoder().encodeToString(hash);

		return encoded;

	}

	public Admin login(String mail, String mdp) {
		// boolean msg = false;
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM Admin WHERE email=? AND password=?");
			sql.setString(1, mail);
			try {
				sql.setString(2, encode(mdp));
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ResultSet rs = sql.executeQuery();

			if (rs.next()) {
				// msg = true;

				return new Admin(rs.getString("nom"), rs.getString("prenom"), rs.getString("email"),
						rs.getString("password"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}