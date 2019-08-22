package CommandeService;

public class Commande {

	private int idcommande;
	private int matricule;
	private String date;
	public int getIdcommande() {
		return idcommande;
	}
	public void setIdcommande(int idcommande) {
		this.idcommande = idcommande;
	}
	public int getMatricule() {
		return matricule;
	}
	public void setMatricule(int matricule) {
		this.matricule = matricule;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Commande [idcommande=" + idcommande + ", matricule=" + matricule + ", date=" + date + "]";
	}
	public Commande(int idcommande, int matricule, String date) {
		super();
		this.idcommande = idcommande;
		this.matricule = matricule;
		this.date = date;
	}
	
	
	
	
}
