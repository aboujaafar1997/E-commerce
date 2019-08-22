package ProduitService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import SingltonConnection.ConnectionMysql;

public class ProduitDAOImplem implements ProduitDAO{
	  private ArrayList<Produit> ProduitList;
	  Connection Con=null;
	  public ProduitDAOImplem() throws ClassNotFoundException, SQLException {
		  Con = ConnectionMysql.getConnection();
		  ProduitList=new ArrayList<Produit>(); 
	  }
	@Override
	public void addProduit(Produit produit) {
		try {
            PreparedStatement req;
            req = Con.prepareStatement("INSERT INTO produit (matricule,nomProduit,idFournisseur,prix,datep,categorie,description,image) VALUES (?,?,?,?,?,?,?,?)");
            req.setInt(1, produit.getMatricule());
            req.setString(2, produit.getNomProduit());
            req.setInt(3, produit.getIdFournisseur());
            req.setInt(4, produit.getPrix());
            req.setString(5, produit.getDate());
            req.setString(6, produit.getCategorie());
            req.setString(7, produit.getDesc());
            req.setString(8, produit.getImage());
            req.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	@Override
	public ArrayList<Produit> getProduit(String categorie) throws SQLException {
		try {
            String SQL = "SELECT * FROM produit where categorie='"+categorie+"'";
            Statement instruction = Con.createStatement();
            ResultSet rs = instruction.executeQuery(SQL);
            while (rs.next()) {
            	ProduitList.add(new Produit(rs.getInt(1), rs.getString(2), rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		 return ProduitList;
	}

	@Override
	public ArrayList<Produit> getAllproduit() {
		try {
            String SQL = "SELECT * FROM produit";
            Statement instruction = Con.createStatement();
            ResultSet rs = instruction.executeQuery(SQL);
            while (rs.next()) {
            	Produit p =  new Produit(rs.getInt(1), rs.getString(2), rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
            	System.out.println(p);
            	ProduitList.add(p);
           
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ProduitList;
	}

	@Override
	public void supprimerProduit(int id) {
		try{
            String SQL = "DELETE FROM produit WHERE matricule = '"+id+"'";
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
        }catch(Exception E){
            E.printStackTrace();
        }
		
	}
	@Override
	public Produit getOneProduit(int matricile)  {
		String SQL = "SELECT * FROM produit Where matricule="+matricile;
        Statement instruction;
        Produit p1 =null;
		try {
			instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
				p1 =  new Produit(rs.getInt(1), rs.getString(2), rs.getInt(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p1;
		
	}

}
