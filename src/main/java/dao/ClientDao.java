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
import java.util.Date;
import java.util.List;

import model.Client;

public class ClientDao implements Idao<Client> {

	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Client object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect.prepareStatement("INSERT INTO client (nom, prenom, tel, email, password,image, dateInscription) VALUES (?,?,?,?,?,?,now())");
			req.setString(1, object.getNom());
			req.setString(2, object.getPrenom());
			req.setString(3, object.getTel());
			req.setString(4, object.getEmail());
			
			req.setString(5, encode(object.getPassword()));
			req.setString(6, object.getImage());

			req.executeUpdate();
			return true;

		} catch (Exception e) {
			System.out.println(e);
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
	@Override
	public List<Client> read() {
		List<Client> listeClient = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM client");

			rs = sql2.executeQuery();

			while (rs.next()) {
				Client client = new Client(rs.getInt("id_client"),rs.getString("nom"), rs.getString("prenom"), rs.getString("tel"),rs.getString("email"),
						rs.getString("image"),rs.getTimestamp("dateInscription"));

				listeClient.add(client);
			}
			return listeClient;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void update(Client object) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Client object) {
		

	}
	
	public void delete(int id) {
		PreparedStatement ps;
		try {
			ps=connect.prepareStatement("DELETE FROM client WHERE id_client=?");
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	@Override
	public Client findById(int id) {
		Client client = null;
		try {
			PreparedStatement req = connect.prepareStatement("SELECT * FROM Client WHERE id_client = ? AND visible=?");

			req.setInt(1, id);
			req.setInt(2, 1);

			ResultSet resultSet = req.executeQuery();

			if (resultSet.next()) {
				int id_client=resultSet.getInt("id_client");
				String nom = resultSet.getString("nom");
				String prenom = resultSet.getString("prenom");
				String tel = resultSet.getString("tel");
				String email = resultSet.getString("email");
				String image = resultSet.getString("image");
				Date dateInscription= resultSet.getTimestamp("dateInscription");
				

				client = new Client(id_client,nom, prenom, tel,email,image,dateInscription);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("find KO");
		}

		return client;
	}

	@Override
	public Client findByName(String nom_client) {
		
		return null;
	}
	public boolean mailExist(String email) {
		Boolean msg = false;
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM client WHERE email= ?");
			sql.setString(1, email);
			ResultSet rs = sql.executeQuery();
			
			if(!rs.next()) {
				msg = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return msg;
	}
	public Client login( String mail,String pwd) {
		
		//Boolean msg = false;
		try {
			PreparedStatement sql = connect.prepareStatement("SELECT * FROM client WHERE email= ? AND password = ? AND visible=?");
			sql.setString(1, mail);
			try {
				sql.setString(2,encode(pwd));
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			sql.setInt(3, 1);
			ResultSet resultSet = sql.executeQuery(); 
			if (resultSet.next()) {
				int id_client=resultSet.getInt("id_client");
				String nom = resultSet.getString("nom");
				String prenom = resultSet.getString("prenom");
				String tel = resultSet.getString("tel");
				String email = resultSet.getString("email");
				String image = resultSet.getString("image");
				Date dateInscription= resultSet.getTimestamp("dateInscription");
				return new Client(id_client,nom, prenom, tel,email,image,dateInscription);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}

}