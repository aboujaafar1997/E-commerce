package Filter;

import javax.servlet.http.HttpSession;

import UserService.User;

public class FilterSession {
	HttpSession mysession = null;

	public FilterSession(HttpSession s) {
		mysession = s;
	}

	public User checkAdmin() {
		User u = (User) mysession.getAttribute("user");
		String role = (String) mysession.getAttribute("role");
		if (u == null || role.equals("user")) {
			return null;

		} else {
			return u;
		}
	}

	public User checkUser() {
		User u = (User) mysession.getAttribute("user");
		if (u == null) {
			return null;
		} else
			return u;

	}
}
