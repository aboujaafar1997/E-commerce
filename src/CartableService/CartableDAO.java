package CartableService;

import java.sql.SQLException;
import java.util.ArrayList;

public interface CartableDAO {
	public void addCartable(Cartable c, String userid);
	public ArrayList<Cartable> getAllCartable(String userid);
	public void supprimerCartable(int id,String userid);
}
