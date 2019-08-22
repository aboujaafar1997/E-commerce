package LineDeCommandeService;

import java.util.ArrayList;

import CartableService.Cartable;



public interface LineDeCommandeDAO {
	public void addToLineDeCommande(ArrayList<Cartable> produits, String userid);
	public LineDeCommande getAllCartable(int idcommande);
	public void supprimerCartable(int idcommande);
}
