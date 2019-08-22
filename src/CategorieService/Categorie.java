package CategorieService;

public class Categorie {
private String label;

public String getLabel() {
	return label;
}

public void setLabel(String label) {
	this.label = label;
}


@Override
public String toString() {
	return "Categorie [label=" + label + "]";
}

public Categorie(String label) {
	super();
	this.label = label;
}
}
