package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

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
		// TODO Auto-generated method stub
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

}
