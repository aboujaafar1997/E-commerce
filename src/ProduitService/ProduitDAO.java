package ProduitService;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ProduitDAO {
		public void addProduit(Produit produit);
		public ArrayList<Produit> getProduit(String categorie) throws SQLException;
		public ArrayList<Produit> getAllproduit();
		public Produit getOneProduit(int matricile) ;
		public void supprimerProduit(int id);
}
