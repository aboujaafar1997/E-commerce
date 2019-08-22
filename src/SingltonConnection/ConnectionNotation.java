package SingltonConnection;

import java.sql.DriverManager;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.sql.DataSource;

import com.mysql.jdbc.Connection;
@Resource(name="jdbc/miniprojet")
public class ConnectionNotation {	
	private static DataSource dataSource;
	private static Connection con=null;
	private ConnectionNotation() {
    }
    public static Connection getConnection() throws SQLException, ClassNotFoundException{
       if(con==null) {
    	con = (Connection) dataSource.getConnection();
        return con;
    	}
    	else {
            return con;
    	}
    }
}
