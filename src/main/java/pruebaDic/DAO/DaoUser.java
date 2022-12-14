package pruebaDic.DAO;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;


import pruebaDic.model.User;

public class DaoUser {


	public DaoUser() {
	}


	public static User get(String username) {
		Session session = ConnectionBD.getSession();
		User user = null;
		try {
			user = session.get(User.class, username);
		} catch (Exception e) {
			System.out.println("Error");
		}
		return user;
	}

	public static ArrayList<User> getList() {
		Session session = ConnectionBD.getSession();
		ArrayList<User> lista= null;
		try {
			String hql = "SELECT * FROM user u";
			Query<User> query = session.createNativeQuery(hql, User.class);
			lista =  (ArrayList<User>) query.getResultList();
		} catch (Exception f) {
			System.out.println("Error");
		}
		return lista;
	}

	public static boolean add(User user) {
		Session session = ConnectionBD.getSession();
		boolean result = false;
		try {

			session.getTransaction().begin();
			session.save(user);
			session.getTransaction().commit();
			result = true;
		} catch (Exception g) {
			System.out.println("Error");
		}
		return result;
	}

	public static void delete(User user)  {
		Session session = ConnectionBD.getSession();
		try {
			session.getTransaction().begin();
			session.delete(user);
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error");
		}
		
	}

	public static boolean update(User user) {
		Session session = ConnectionBD.getSession();
		boolean result = false;
		try {

			session.getTransaction().begin();
			session.update(user);
			session.getTransaction().commit();
			result = true;
		} catch (Exception g) {
			System.out.println("Error");
		}
		return result;
	}
	
}
