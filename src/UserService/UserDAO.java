package UserService;

import java.sql.SQLException;
import java.util.ArrayList;

public interface UserDAO {
	public void addUser(User user);
	public User getUser(String email,String motpass) throws SQLException;
	public ArrayList<User> getAllUser(User user);
	public void supprimerUser(int id);
	public String getRole(String email,String motpass) ;
}
