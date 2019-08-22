package CommandeService;

import java.util.ArrayList;

import CartableService.Cartable;

public interface CommandeDAO {
	public int addCommande(String userid);
	public ArrayList<Commande> getAllCommande(String userid);
	public ArrayList<Commande> getAllCommande();
	public void supprimerCommande(int idcommande);
	

}
