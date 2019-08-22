package LineDeCommandeService;

import java.util.ArrayList;

import CartableService.Cartable;
import ProduitService.Produit;

public class LineDeCommande {
int idcommande;
ArrayList<Cartable> Listproduit;



public int getIdcommande() {
	return idcommande;
}
public LineDeCommande(int idcommande, ArrayList<Cartable> listproduit) {
	
	this.idcommande = idcommande;
	Listproduit = listproduit;
}
public LineDeCommande() {
	// TODO Auto-generated constructor stub
}
public void setIdcommande(int idcommande) {
	this.idcommande = idcommande;
}
@Override
public String toString() {
	return "LineDeCommande [idcommande=" + idcommande + ", Listproduit=" + Listproduit + "]";
}
public ArrayList<Cartable> getListproduit() {
	return Listproduit;
}
public void setListproduit(ArrayList<Cartable> listproduit) {
	Listproduit = listproduit;
}
}
