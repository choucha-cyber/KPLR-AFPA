package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Chat;
import model.Client;

public class ChatDao implements Idao<Chat> {

	Connection connect = Connect.getConnection();

	@Override
	public boolean create(Chat object) {
		boolean msg = false;
		try {
			PreparedStatement req = connect.prepareStatement("INSERT INTO chat (envoyeePar, recuPar, text, dateEnvoye) VALUES (?,?,?,now())");
			req.setInt(1, object.getEnvoyeePar());
			req.setInt(2, object.getRecuPar());
			
			req.setString(3, object.getText());
			req.executeUpdate();
			return true;

		} catch (Exception e) {
			System.out.println(e);
		}
		return msg;
	}

	
	public List<Chat> read(int clientId) {
		List<Chat> listeChat = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM chat WHERE envoyeePar=? OR recuPar=? AND visible=1");
			sql2.setInt(1, clientId);
			sql2.setInt(2, clientId);
			rs = sql2.executeQuery();

			while (rs.next()) {

				Chat chat = new Chat(rs.getInt("id_chat"),rs.getInt("envoyeePar"), rs.getInt("recuPar"), rs.getString("text"),rs.getInt("vue"),
						rs.getInt("visible"),rs.getTimestamp("dateEnvoye"));

				listeChat.add(chat);
				
			}
			return listeChat;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void update(Chat object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Chat object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Chat findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Chat findByName(String nom) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Chat> read() {
		List<Chat> listeChat = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM chat INNER JOIN client ON chat.envoyeePar = client. id_client WHERE chat.envoyeePar != 0  GROUP BY envoyeePar ORDER BY dateEnvoye DESC;");			
			rs = sql2.executeQuery();

			while (rs.next()) {
				Client client = new Client(rs.getInt("id_client"),rs.getString("nom"), rs.getString("prenom"), rs.getString("tel"),rs.getString("email"),
						rs.getString("image"),rs.getTimestamp("dateInscription"));
				Chat chat = new Chat(rs.getInt("id_chat"),rs.getInt("envoyeePar"), rs.getInt("recuPar"), rs.getString("text"),rs.getInt("vue"),
						rs.getInt("visible"),rs.getTimestamp("dateEnvoye"),client);
				

				listeChat.add(chat);
				
			}
			System.out.println("this is dao liste");
			System.out.println(listeChat);
			return listeChat;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}


	public int countUnRead(int id) {
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT count(*) AS count FROM chat WHERE envoyeePar=? AND vueAdmin=0");			
			sql2.setInt(1, id);
			rs = sql2.executeQuery();

			if (rs.next()) {
				
				System.out.println("this is count in dao"+ rs.getInt("count"));
				return rs.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	public List<Chat> readSingleChat(int clientId) {
		List<Chat> listeChat = new ArrayList<>();

		// CRUD - Read
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT * FROM chat WHERE envoyeePar=? OR recuPar=?");
			sql2.setInt(1, clientId);
			sql2.setInt(2, clientId);
			rs = sql2.executeQuery();

			while (rs.next()) {

				Chat chat = new Chat(rs.getInt("id_chat"),rs.getInt("envoyeePar"), rs.getInt("recuPar"), rs.getString("text"),rs.getInt("vue"),
						rs.getInt("visible"),rs.getTimestamp("dateEnvoye"));

				listeChat.add(chat);
				
			}
			return listeChat;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}


	public void dejaVue(int id) {
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("UPDATE chat SET vueAdmin=1 WHERE envoyeePar=?");			
			sql2.setInt(1, id);
			sql2.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}


	public int countTotalUnRead() {
		ResultSet rs = null;
		PreparedStatement sql2;
		try {
			sql2 = connect.prepareStatement("SELECT count(*) AS count FROM chat WHERE vueAdmin=? AND envoyeePar!=?");			
			sql2.setInt(1, 0);
			sql2.setInt(2, 0);
			
			rs = sql2.executeQuery();

			if (rs.next()) {
				return rs.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;		
		
	}


	public void deleteByClient(int envoyeePar) {
		PreparedStatement ps;
		try {
			ps = connect.prepareStatement("DELETE FROM chat WHERE envoyeePar=? OR recuPar=?");
			ps.setInt(1, envoyeePar);
			ps.setInt(2, envoyeePar);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}