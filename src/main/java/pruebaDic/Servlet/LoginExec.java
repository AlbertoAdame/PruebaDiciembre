package pruebaDic.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pruebaDic.DAO.DaoUser;
import pruebaDic.model.User;

/**
 * Servlet implementation class LoginExec
 */
@WebServlet("/LoginExec")
public class LoginExec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginExec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		boolean entrar = false;
		boolean salir=false;
		
		HttpSession sesion = null;
		
		String usuarioCadena = request.getParameter("nombre");
		String password = request.getParameter("pass");
		if(usuarioCadena!=null && password!=null) {
			sesion = request.getSession();
			User u = DaoUser.get(usuarioCadena);
			if(u!=null) {
				
				if(password.equals(u.getPassword())) {
					entrar= true;
					sesion.setAttribute("login", "True");
					sesion.setAttribute("username", usuarioCadena);
					sesion.setAttribute("password", password);	
					
				}else {
					salir=true;
					
				
				}
			}else {
				salir=true;
				
			}
		}
		if(!entrar) {
			sesion = request.getSession();
			usuarioCadena = (String) sesion.getAttribute("nombre");
			password = (String) sesion.getAttribute("pass");
			User u = DaoUser.get(usuarioCadena);
			if(u!=null) {
				if(password.equals(u.getPassword())) {
					entrar= true;
					sesion.setAttribute("login", "True");
					sesion.setAttribute("username", usuarioCadena);
					sesion.setAttribute("password", password);
				}else {
					salir=true;
				}
			}	
		}
		
		if(salir) {
			
			response.getWriter().append("<p>Error en el login</p><a href='login.jsp'><button>Volver a intentar</button></a>"); 	
		}
		if(entrar) {
			response.sendRedirect("billetes.jsp");
		}
		
	}

}
