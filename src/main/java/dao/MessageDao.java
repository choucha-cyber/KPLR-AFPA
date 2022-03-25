package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Chat;
import model.Message;

public class MessageDao implements Idao<Message>{
	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Message object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect
					.prepareStatement("INSERT INTO Message (nom, email,message)" + " VALUES (?,?,?)");
			req.setString(1, object.getNom());
			req.setString(2, object.getEmail());
			req.setString(3, object.getMessage());
			

			req.executeUpdate();

			System.out.println("message ajouté à la base! ");
			msg = true;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Insertion KO");
		}
		return msg;
	}

	@Override
	public List<Message> read() {
		List<Message> listeMessage = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM message ORDER BY repondu ");
			
			rs = sql2.executeQuery();

			while (rs.next()) {

				Message message = new Message(rs.getInt("id_message"),rs.getString("nom"), rs.getString("email"), rs.getString("message"), rs.getInt("repondu"));

				listeMessage.add(message);
				
			}
			return listeMessage;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void update(Message object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Message object) {
		// TODO Auto-generated method stub
		
	}
	public void delete(int id) {
		PreparedStatement ps;
		try {
			ps = connect.prepareStatement("DELETE FROM message WHERE id_message=?");
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	@Override
	public Message findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Message findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}

	public int countMessageUnRead() {
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT count(*) AS count FROM message WHERE vueAdmin=? ");			
			sql2.setInt(1, 0);
			rs = sql2.executeQuery();

			if (rs.next()) {
				return rs.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;		
		
	}

	

	public void dejaVue() {
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("UPDATE message SET vueAdmin=? ");			
			sql2.setInt(1, 1);
			sql2.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void repondu(int messageIdRepondu) {
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("UPDATE message SET repondu=? WHERE id_message=?");			
			sql2.setInt(1, 1);
			sql2.setInt(2, messageIdRepondu);
			sql2.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
