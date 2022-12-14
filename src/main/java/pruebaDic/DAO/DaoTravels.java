package pruebaDic.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;

import pruebaDic.model.Travels;


public class DaoTravels {
	
	public static Travels getTravel(int id) {
		Session session = ConnectionBD.getSession();
		Travels v = null;
		
		try {
			v = session.get(Travels.class, id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return v;
	}
	
	public static List<Travels> loadList(){
		Session session = ConnectionBD.getSession();
		List<Travels> list = new ArrayList<>();
//		String frase ="SELECT v FROM VENTA v WHERE USUARIO = '" + nombre + "'ORDER BY FECHA_VENTA DESC";
		String frase ="SELECT v FROM travels v";
		Query query = session.createQuery(frase);
		list = query.getResultList();
		return list;
		
	}
	
	public static boolean addVenta(Travels v) {
		Session session = ConnectionBD.getSession();
		boolean resultado = false;
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(v);
			session.getTransaction().commit();
			resultado=true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
}

