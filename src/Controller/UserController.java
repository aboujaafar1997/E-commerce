package Controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import CartableService.Cartable;
import CartableService.CartableDAOImplim;
import CategorieService.Categorie;
import CategorieService.CategorieDAOimplem;
import Filter.FilterSession;
import LineDeCommandeService.LineDeCommandeDAOImplem;
import ProduitService.Produit;
import ProduitService.ProduitDAOImplem;
import SubscriberService.SubscribeDAOImmplem;
import SubscriberService.Subscriber;
import UserService.User;
import UserService.UserDAOImplim;

@Controller
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class UserController {
	@RequestMapping("/")
	public String home(Model model, HttpServletRequest request) throws ClassNotFoundException, SQLException {
			ArrayList<Produit> list = new ProduitDAOImplem().getAllproduit();
			model.addAttribute("listProduit", list);
		return "index";
	}
	
	
	
	@RequestMapping("/categorie/{categorie}")
	
	
	public String categorie(Model model, @PathVariable String categorie) throws ClassNotFoundException, SQLException {
		ArrayList<Produit> list = new ProduitDAOImplem().getProduit(categorie);
		model.addAttribute("listProduit", list);
		model.addAttribute("categorie", categorie);
		System.out.println(categorie);
		return "index";
	}

	
	
	
	@RequestMapping("/login")
	public String login() {
		return "identification";
	}

	@RequestMapping("/redirct")
	public String login_valide(HttpServletRequest request, HttpSession session, Model model)
			throws ClassNotFoundException, SQLException {
		User user = new UserDAOImplim().getUser(request.getParameter("email"), request.getParameter("motpass"));
		if (user == null) {
			model.addAttribute("ereur", true);
			return "identification";
		} else {
			session.setAttribute("user", user);
			session.setAttribute("role", new UserDAOImplim().getRole(user.getEmail(), user.getMotPass()));
			ArrayList<Produit> list = new ProduitDAOImplem().getAllproduit();
			model.addAttribute("listProduit", list);
			return "index";
		}

	}

	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model) throws ClassNotFoundException, SQLException {
		session.invalidate();
		ArrayList<Produit> list = new ProduitDAOImplem().getAllproduit();
		model.addAttribute("listProduit", list);
		return "index";
		
	}

	@RequestMapping("/Inscrir")
	public String Inscrir() {
		return "Inscrir";
	}

	@RequestMapping("/validation")
	public String validation(HttpServletRequest request, Model model) throws ClassNotFoundException, SQLException {
		User user = new User(request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("email"),
				request.getParameter("ville"), request.getParameter("codepostal"), request.getParameter("cin"),
				request.getParameter("cartecode"), request.getParameter("telephone"), request.getParameter("adresse"),
				request.getParameter("motPass"));
		new UserDAOImplim().addUser(user);
		model.addAttribute("nom", request.getParameter("nom"));
		return "valide";
	}

	
	
	
	@RequestMapping("/showusers")
	public String showusers(HttpSession session) {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u!=null) {
			return "listeutilisateurs";
		}
		else return "identification";
	}

	@RequestMapping("/romoveuser")
	public String romoveuser(HttpSession session) {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u!=null) {
			return "listeutilisateurs";
		}
		else
		return "identification";
	}

	
	
	// *********************produit****************
	@RequestMapping("/showproduit")
	public String showproduit(Model model, HttpSession session) throws ClassNotFoundException, SQLException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		ArrayList<Produit> produits = new ProduitDAOImplem().getAllproduit();
		model.addAttribute("produits", produits);
		return "listproduit";
	}

	@RequestMapping("/produit")
	public String produit(Model model, HttpSession session) {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "produit";
	}

	
	
	@RequestMapping("/addproduit")

	public String addproduit(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session)
			throws IOException, ServletException, NumberFormatException, ClassNotFoundException, SQLException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		Part part = request.getPart("image");
		String filename = extractName(part);
		String savepath = "C:\\Users\\toshiba\\eclipse-workspace\\MiniProject_Ecomerce_V0.1\\WebContent\\resources\\images"
				+ java.io.File.separator + filename;
		File filesave = new File(savepath);
		part.write(savepath + File.separator);
		System.out.println("******************" + savepath + "***********");
		Produit p = new Produit(Integer.parseInt(request.getParameter("matricule")), request.getParameter("nomProduit"),
				Integer.parseInt(request.getParameter("idFournisseur")), Integer.parseInt(request.getParameter("prix")),
				new Date().toString(), request.getParameter("categorie"), request.getParameter("desc"),
				request.getContextPath() + "/resources/images/" + filename);
		new ProduitDAOImplem().addProduit(p);
		model.addAttribute("ajouter", "oui");

		return "produit";
	}

	
	
	@RequestMapping("/supprimerproduit")
	public String supprimerproduit(HttpServletRequest request, HttpSession session)
			throws NumberFormatException, ClassNotFoundException, SQLException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		new ProduitDAOImplem().supprimerProduit(Integer.parseInt(request.getParameter("id")));
		return "listproduit";
	}

	
	
	@RequestMapping("/detaill")

	public String detaill(Model model, HttpServletRequest request)
			throws NumberFormatException, ClassNotFoundException, SQLException {

		Produit p = new ProduitDAOImplem().getOneProduit(Integer.parseInt(request.getParameter("matricule")));
		model.addAttribute("produit", p);
		return "product";
	}

	// *******************cartable//*************************

	@RequestMapping("/cartable")
	public String cartable(Model model, HttpSession session, HttpServletRequest request)
			throws ClassNotFoundException, SQLException {
		User u =(User) new FilterSession(session).checkUser();
		if (u!=null) {
		ArrayList<Cartable> produits = new CartableDAOImplim().getAllCartable(u.getCin().toString());
		model.addAttribute("produits", produits);
		session = request.getSession(false);
		session.setAttribute("cartable", produits);
		return "cartable";}
		else return "identification";
	}

	
	
	@RequestMapping("/supprimercommande")
	public String supprimercommande(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkUser();
		if (u==null) {
			return "identification";
		}
		new CartableDAOImplim().supprimerCartable(Integer.parseInt(request.getParameter("id")), u.getCin());
		model.addAttribute("supprimer", true);
		return "cartable";
	}

	
	
	@RequestMapping("/addcartable")
	public String addcartable(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkUser();
		if (u==null) {
			return "identification";
		}
		Produit p = new ProduitDAOImplem().getOneProduit(Integer.parseInt(request.getParameter("id")));
		Cartable c = new Cartable(p.getMatricule(), p.getNomProduit(), p.getPrix(), new Date().toString(),
				Integer.parseInt(request.getParameter("qte")));
		new CartableDAOImplim().addCartable(c, u.getCin());
		model.addAttribute("ajouter", true);
		return "cartable";
	}
	// ************************commande******************************//

	
	
	@RequestMapping("/addcommande")
	public String produit(HttpSession session, HttpServletRequest request,Model model) throws ClassNotFoundException, SQLException {

		session = request.getSession(false);
		User u =(User) new FilterSession(session).checkUser();
		if (u==null) {
			return "identification";
		}
		ArrayList<Cartable> produits = (ArrayList<Cartable>) session.getAttribute("cartable");
		new LineDeCommandeDAOImplem().addToLineDeCommande(produits, u.getCin());
		ArrayList<Produit> list = new ProduitDAOImplem().getAllproduit();
		model.addAttribute("listProduit", list);
		return "index";
	}
//****************************admin************************************/
	@RequestMapping("/categories")
	public String categorie(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "ajoutercategorie";
	}
	@RequestMapping("/addcategorie")
	public String addcategorie(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		new CategorieDAOimplem().ajouterCategorie(new Categorie(request.getParameter("label")));
		model.addAttribute("add", true);
		return "ajoutercategorie";
	}
	

	@RequestMapping("/showcategorie")
	public String showcategorie(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "listcategorie";
	}

	
	
	@RequestMapping("/supprimercategorie")
	public String supprimercategorie(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "supprimercategorie";
	}

	@RequestMapping("/showfournisseur")
	public String showfournisseur(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "listefourniseur";
	}

	
	
	@RequestMapping("/supprimerfournisseur")
	public String supprimerfournisseur(HttpServletRequest request, Model model, HttpServletResponse response,
			HttpSession session) throws ClassNotFoundException, SQLException, IOException {
		User u =(User) new FilterSession(session).checkAdmin();
		if (u==null) {
			return "identification";
		}
		return "supprimerfournisseur";
	}

	// ********************ereur**********
	@RequestMapping("/ereurs/{error}")
	public String test(Model model, @PathVariable String error) {
		model.addAttribute("ereur", error);
		System.out.println(error);
		return "ereur";
	}

	
	
	@RequestMapping("/ereurs")
	public String ereurs(Model model, HttpServletRequest request)
			throws NumberFormatException, ClassNotFoundException, SQLException {
		String ereurtype = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE).toString();
		switch (ereurtype) {
		case "404":
			model.addAttribute("ereur", "Ereur 404 , page not Found or server Down ! check your URL");
			break;
		case "500":
			model.addAttribute("ereur", "Ereur 500 , Ereur Down server");

			break;
		case "400":
			model.addAttribute("ereur", "Ereur 400 , Bade request ! check your URL");

			break;
		default:
			break;
		}

		return "ereur";
	}
	
	//*************************Subscriber/*/***************************//
	@RequestMapping("/subscriber")
	public String test(Model model,HttpServletRequest requset) throws ClassNotFoundException, SQLException {
		new SubscribeDAOImmplem().addSubscriber(new Subscriber(requset.getParameter("email")));
		model.addAttribute("email", requset.getParameter("email"));
		return "subscriber";
	}

	
	
	// *******************function extract name//****************
	private String extractName(Part p) {
    String contentDisp = p.getHeader("content-disposition");
		String[] ithms = contentDisp.split(";");
		for (String s : ithms) {

			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}

		}
		return "ereur";
	}

}
