package UserService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import SingltonConnection.*;


public  class UserDAOImplim implements UserDAO {
  private ArrayList<User> userList=null;
  Connection Con=null;
  public UserDAOImplim() throws ClassNotFoundException, SQLException {
	  userList=new ArrayList<User>();
	  Con = ConnectionMysql.getConnection();}

	@Override
	public void addUser(User user) {
		try {
            PreparedStatement req;
            req = Con.prepareStatement("INSERT INTO users (nom, prenom, email, ville, codepostal, cin, cartecode, telephone, adresse, motPass) VALUES (?,?,?,?,?,?,?,?,?,?)");
            req.setString(1, user.getNom());
            req.setString(2, user.getPrenom());
            req.setString(3, user.getEmail());
            req.setString(4, user.getVille());
            req.setString(5, user.getCodepostal());
            req.setString(6, user.getCin());
            req.setString(7, user.getCartecode());
            req.setString(8, user.getTelephone());
            req.setString(9, user.getAdresse());
            req.setString(10, user.getMotPass());

            req.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	@Override
	public User getUser(String email,String motpass) throws SQLException {
		User user=null; 
		String SQL = "SELECT * FROM users WHERE email='"+email+"' and motpass='"+motpass+"'";
         Statement instruction = Con.createStatement();
         ResultSet rs = instruction.executeQuery(SQL);
         while (rs.next()) {
             user=new User(rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11));
         }
         return user;
	}

	@Override
	public ArrayList<User> getAllUser(User user) {
		try {
            String SQL = "SELECT * FROM users";
            Statement instruction = Con.createStatement();
            ResultSet rs = instruction.executeQuery(SQL);
            while (rs.next()) {
                userList.add(new User(rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userList;
		
	}

	@Override
	public void supprimerUser(int id) {
		try{
            String SQL = "DELETE FROM users WHERE id = '"+id+"'";
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
        }catch(Exception E){
            E.printStackTrace();
        }
		
	}

	@Override
	public String getRole(String email,String motpass) {
		String role ="";
		try {
			String SQL = "SELECT role FROM users WHERE email='"+email+"' and motpass='"+motpass+"'";
			Statement instruction = Con.createStatement();
			ResultSet rs;
			rs = instruction.executeQuery(SQL);
	        while (rs.next()) {
	        	role=rs.getString(1);
	        	         }
	        	         return role;
	        		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return role;
 
	}
	
}


