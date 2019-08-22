package SingltonConnection;

import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;

public class ConnectionMysql {
	private static Connection con=null;
	private ConnectionMysql() {
    }
    public static Connection getConnection() throws SQLException, ClassNotFoundException{
       
    	if(con==null) {
    	Class.forName("com.mysql.jdbc.Driver");
        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/miniprojet", "root", "");
        return con;
    	}
    	else {
            return con;
    	}
    }
}
