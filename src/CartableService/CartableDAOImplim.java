package CartableService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import SingltonConnection.ConnectionMysql;

public class CartableDAOImplim implements CartableDAO {
	private ArrayList<Cartable> cList = null;
	Connection Con = null;

	public CartableDAOImplim() throws ClassNotFoundException, SQLException {
		cList = new ArrayList<Cartable>();
		Con = ConnectionMysql.getConnection();
	}

	@Override
	public void addCartable(Cartable c,String user) {
		try {
			PreparedStatement req;
			req = Con.prepareStatement("INSERT INTO cartable (matricule,userid, nom, prix, datec, qte) VALUES (?,?,?,?,?,?)");
			req.setInt(1, c.getMatricule());
			req.setString(2, user);
			req.setString(3, c.getNomproduit());
			req.setInt(4, c.getPrix());
			req.setString(5, c.getDate());
			req.setInt(6, c.getQte());
			req.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<Cartable> getAllCartable(String user) {
		try {
			String SQL = "SELECT * FROM cartable where userid='"+user+"'";
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				
				cList.add(new Cartable(rs.getInt(1), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getInt(6)));
								
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;
	}

	@Override
	public void supprimerCartable(int id,String user) {
		try{
            String SQL = "DELETE FROM cartable WHERE matricule = '"+id+"' and userid='"+user+"'";
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
        }catch(Exception E){
            E.printStackTrace();
        }

	}

}
