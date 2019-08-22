package LineDeCommandeService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import CartableService.Cartable;
import CartableService.CartableDAOImplim;
import CommandeService.CommandeDAOImplement;
import SingltonConnection.ConnectionMysql;

public class LineDeCommandeDAOImplem implements LineDeCommandeDAO{
	private ArrayList<LineDeCommande> cList = null;
	Connection Con = null;
	
	public LineDeCommandeDAOImplem() throws ClassNotFoundException, SQLException {
		cList = new ArrayList<LineDeCommande>();
		Con = ConnectionMysql.getConnection();
	}
	@Override
	public void addToLineDeCommande(ArrayList<Cartable> produit, String userid) {
		try {
			int idcommande =new CommandeDAOImplement().addCommande(userid);
			PreparedStatement req;
			ArrayList<Cartable> produits=produit;
			for(Cartable c: produits ) {
				System.out.println("dkhal?"+produits);
				System.out.println(idcommande);
			req = Con.prepareStatement("INSERT INTO linedecommande (idcommande,matricule,qte) VALUES (?,?,?)");
			req.setInt(1, idcommande);
			req.setString(2, userid);
			req.setInt(3, c.getQte());
			req.executeUpdate();
			new CartableDAOImplim().supprimerCartable(c.getMatricule(), userid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	@Override
	public LineDeCommande getAllCartable(int idcommande) {
     LineDeCommande lineDeCommande=new LineDeCommande();
     ArrayList<Cartable> c= new ArrayList<Cartable>();
		try {
			String SQL = "SELECT * FROM linedecommande where idcommande="+idcommande;
			Statement instruction = Con.createStatement();
			ResultSet rs = instruction.executeQuery(SQL);
			while (rs.next()) {
			lineDeCommande.setIdcommande(rs.getInt(1));
			c.add(new Cartable(rs.getInt(2),"",0,"",rs.getInt(3)));
			}
			lineDeCommande.setListproduit(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public void supprimerCartable(int idcommande) {
		try{
            String SQL = "DELETE FROM linedecommande WHERE idcommande ="+idcommande;
            PreparedStatement req ;
            req = Con.prepareStatement(SQL);
            req.executeUpdate();
            new CommandeDAOImplement().supprimerCommande(idcommande);
        }catch(Exception E){
            E.printStackTrace();
        }
	}

}
