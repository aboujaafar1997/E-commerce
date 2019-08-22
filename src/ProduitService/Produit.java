package ProduitService;

import java.io.FileInputStream;

public class Produit {
	public int matricule;
	private String nomProduit;
	private int idFournisseur;
	private int prix;
	private String date;
	private String categorie;
	private String desc;
    private String image;
	public Produit(int matricule, String nomProduit, int idFournisseur, int prix, String date, String categorie,
			String desc,String image) {
		this.matricule = matricule;
		this.nomProduit = nomProduit;
		this.idFournisseur = idFournisseur;
		this.prix = prix;
		this.date = date;
		this.categorie = categorie;
		this.desc = desc;
		this.image=image;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getMatricule() {
		return matricule;
	}
	public void setMatricule(int matricule) {
		this.matricule = matricule;
	}
	public String getNomProduit() {
		return nomProduit;
	}

	@Override
	public String toString() {
		return "Produit [matricule=" + matricule + ", nomProduit=" + nomProduit + ", idFournisseur=" + idFournisseur
				+ ", prix=" + prix + ", date=" + date + ", categorie=" + categorie + ", desc=" + desc + "]";
	}
	public void setNomProduit(String nomProduit) {
		this.nomProduit = nomProduit;
	}
	public int getIdFournisseur() {
		return idFournisseur;
	}
	public void setIdFournisseur(int idFournisseur) {
		this.idFournisseur = idFournisseur;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
}
