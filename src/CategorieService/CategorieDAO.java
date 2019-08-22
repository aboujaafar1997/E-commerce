package CategorieService;

import java.util.ArrayList;

public interface CategorieDAO {
public void ajouterCategorie(Categorie c);
public ArrayList<Categorie> getAll();
public void supprimerCategorie(String label);
}
