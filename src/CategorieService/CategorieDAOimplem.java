package CategorieService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import CartableService.Cartable;
import SingltonConnection.ConnectionMysql;


public class CategorieDAOimplem implements CategorieDAO {
	private ArrayList<Categorie> cList = null;
	Connection Con = null;
	
	public CategorieDAOimplem() throws ClassNotFoundException, SQLException {
		cList = new ArrayList<Categorie>();
		Con = ConnectionMysql.getConnection();	}
	@Override
	public void ajouterCategorie(Categorie c) {
		
		try {
			PreparedStatement req;
			req = Con.prepareStatement("INSERT INTO categorie (label) VALUES (?)");
			req.setString(1, c.getLabel());
			req.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<Categorie> getAll() {
		try {
			String SQL = "SELECT * FROM categorie";
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				cList.add(new Categorie(rs.getString(1)));
								
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cList;		
	}

	@Override
	public void supprimerCategorie(String label) {
		try{
            String SQL = "DELETE FROM categorie WHERE label = '"+label+"' on delete cascade";
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
        }catch(Exception E){
            E.printStackTrace();
        }		
	}

}
