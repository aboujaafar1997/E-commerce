package SubscriberService;

public class Subscriber {
private String email ;

public String getEmail() {
	return email;
}

@Override
public String toString() {
	return "Subscriber [email=" + email + "]";
}

public Subscriber(String email) {
	super();
	this.email = email;
}

public void setEmail(String email) {
	this.email = email;
} 

}
