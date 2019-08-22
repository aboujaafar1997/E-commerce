package CartableService;

public class Cartable {
private int matricule;
private String nomproduit;
private int prix;
private String date;
public Cartable(int matricule, String nomproduit, int prix, String date, int qte) {
	super();
	this.matricule = matricule;
	this.nomproduit = nomproduit;
	this.prix = prix;
	this.date = date;
	this.qte = qte;
}
public Cartable() {
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Cartable [matricule=" + matricule + ", nomproduit=" + nomproduit + ", prix=" + prix + ", date=" + date
			+ ", qte=" + qte + "]";
}
public int getMatricule() {
	return matricule;
}
public void setMatricule(int matricule) {
	this.matricule = matricule;
}
public String getNomproduit() {
	return nomproduit;
}
public void setNomproduit(String nomproduit) {
	this.nomproduit = nomproduit;
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
public int getQte() {
	return qte;
}
public void setQte(int qte) {
	this.qte = qte;
}
private int qte;
}
