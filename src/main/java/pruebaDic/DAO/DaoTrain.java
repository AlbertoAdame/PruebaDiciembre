package pruebaDic.DAO;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;

import pruebaDic.model.Train;
import pruebaDic.model.User;

public class DaoTrain {

	public DaoTrain() {
	}

	public static Train get(int cod) {
		Session session = ConnectionBD.getSession();
		Train traintravel = null;
		try {
			traintravel = session.get(Train.class, cod);
		} catch (Exception e) {
			System.out.println("Error");
		}
		return traintravel;
	}

	public static ArrayList<Train> getList() {
		Session session = ConnectionBD.getSession();
		ArrayList<Train> lista= null;
		try {
			String hql = "SELECT * FROM train u";
			Query<Train> query = session.createNativeQuery(hql, Train.class);
			lista =  (ArrayList<Train>) query.getResultList();
		} catch (Exception f) {
			System.out.println("Error");
		}
		return lista;
	}

	public static boolean add(Train traintravel) {
		Session session = ConnectionBD.getSession();
		boolean result = false;
		try {

			session.getTransaction().begin();
			session.save(traintravel);
			session.getTransaction().commit();
			result = true;
		} catch (Exception g) {
			System.out.println("Error");
		}
		return result;
	}

	public static void delete(Train traintravel)  {
		Session session = ConnectionBD.getSession();
		try {
			
			session.getTransaction().begin();
			session.delete(traintravel);
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error");
		}
		
	}

	public static boolean update(Train traintravel) {
		Session session = ConnectionBD.getSession();
		boolean result = false;
		try {

			session.getTransaction().begin();
			session.update(traintravel);
			session.getTransaction().commit();
			result = true;
		} catch (Exception g) {
			System.out.println("Error");
		}
		return result;
	}
	
	public static boolean quitarStock(Train traintravel) {
		Session session = ConnectionBD.getSession();
		boolean result = false;
		try {
			if(traintravel.getNumbertickets()>0)
				traintravel.setNumbertickets(traintravel.getNumbertickets()-1);
			session.getTransaction().begin();
			session.update(traintravel);
			session.getTransaction().commit();
			result = true;
		} catch (Exception g) {
			System.out.println("Error");
		}
		return result;
	}
	
}
