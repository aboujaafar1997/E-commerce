package UserService;

public class User {
	private String nom;
	private String prenom;
	private String email;
	private String ville;
	private String codepostal;
	private String cin;
	private String cartecode;
	private String telephone;
	private String adresse;
	private String motPass;
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getCodepostal() {
		return codepostal;
	}
	public void setCodepostal(String codepostal) {
		this.codepostal = codepostal;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getCartecode() {
		return cartecode;
	}
	public void setCartecode(String cartecode) {
		this.cartecode = cartecode;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAdresse() {
		return adresse;
	}
	
	public String getMotPass() {
		return motPass;
	}
	public void setMotPass(String motPass) {
		this.motPass = motPass;
	}
	@Override
	public String toString() {
		return "User [nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", ville=" + ville + ", codepostal="
				+ codepostal + ", cin=" + cin + ", cartecode=" + cartecode + ", telephone=" + telephone + ", adresse="
				+ adresse + "]";
	}
	public User(String nom, String prenom, String email, String ville, String codepostal, String cin, String cartecode,
			String telephone, String adresse, String motPass) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.ville = ville;
		this.codepostal = codepostal;
		this.cin = cin;
		this.cartecode = cartecode;
		this.telephone = telephone;
		this.adresse = adresse;
		this.motPass = motPass;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

}
