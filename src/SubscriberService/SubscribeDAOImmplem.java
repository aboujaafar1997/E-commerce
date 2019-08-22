package SubscriberService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import SingltonConnection.ConnectionMysql;

public class SubscribeDAOImmplem implements SubscriberDAO{
	Connection Con = null;
	public SubscribeDAOImmplem() throws ClassNotFoundException, SQLException {
		Con = ConnectionMysql.getConnection();

	}
	
	@Override
	public void addSubscriber(Subscriber sub) {

		try {
			PreparedStatement req;
			req = Con.prepareStatement("INSERT INTO subscriber (email) VALUES (?)");
			req.setString(1, sub.getEmail());
			req.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
