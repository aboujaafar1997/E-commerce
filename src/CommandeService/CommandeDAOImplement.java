package CommandeService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import SingltonConnection.ConnectionMysql;


public class CommandeDAOImplement implements CommandeDAO{
	private ArrayList<Commande> cList = null;
	Connection Con = null;
	public CommandeDAOImplement() throws ClassNotFoundException, SQLException {
		cList = new ArrayList<Commande>();
		Con = ConnectionMysql.getConnection();	}
	@Override
	public int addCommande(String userid) {
		int idcommande=-1;
		try {
			PreparedStatement req;
			req = Con.prepareStatement("INSERT INTO commande (userid, datec) VALUES (?,?)");
			req.setString(1, userid);
			req.setString(2, new Date().toString());
			req.executeUpdate();
			/*get id commande*/
			String SQL = "SELECT max(idcommande) FROM commande ";
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				
				idcommande=rs.getInt(1);
								
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idcommande;
	}

	@Override
	public ArrayList<Commande> getAllCommande(String userid) {
		try {
			String SQL = "SELECT * FROM commande where userid='"+userid+"'";
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				
				cList.add(new Commande(rs.getInt(1), rs.getInt(2),rs.getString(3)));
								
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;
	}

	@Override
	public ArrayList<Commande> getAllCommande() {
		try {
			String SQL = "SELECT * FROM commande ";
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				
				cList.add(new Commande(rs.getInt(1), rs.getInt(2),rs.getString(3)));
								
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;
	}
	@Override
	public void supprimerCommande(int idcommande) {
		try{
            String SQL = "DELETE FROM commande WHERE idcommande ="+idcommande;
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
        }catch(Exception E){
            E.printStackTrace();
        }
		
	}

}
