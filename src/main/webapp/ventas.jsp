<%@page import="pruebaDic.DAO.DaoTravels"%>
<%@page import="pruebaDic.DAO.DaoUser"%>
<%@page import="pruebaDic.model.User"%>
<%@page import="pruebaDic.model.Travels"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String redirect = "";
HttpSession sesion = request.getSession();
String usuarioCadena = (String) sesion.getAttribute("username");
String password = (String) sesion.getAttribute("password");
User u = DaoUser.get(usuarioCadena);
if (u != null) {
	if (password.equals(u.getPassword()) && usuarioCadena.equals(u.getUsername()))  {
		sesion.setAttribute("login", "True");
		sesion.setAttribute("username", usuarioCadena);
		sesion.setAttribute("username", password);
	} else {
		
		response.sendRedirect("errorPage.jsp");
	}
}else {
	
	response.sendRedirect("errorPage.jsp");
}

%>

<a href='billetes.jsp'><button>Home</button></a>	


<%
	String nombreUsuario=u.getUsername();

	List<Travels> listaVentas = u.getTravels(); 
	if(listaVentas.size()>0){
		for(Travels v : listaVentas){

%>
			<br>
            <div class="venta">

                    <table border="1" class="tabla">
                        <tr>
                            <td class="letraTabla">
                                ID. user
                            </td>
                            <td class="letraTabla">
                               ID travel
                            </td>

                            
                        </tr>
                        <tr>
                            <td>
                                <%= v.getUser().getUsername() %>
                            </td>
                            <td>
                                <%= v.getTrain().getId()%>
                            </td>

                            
                        </tr>
                        
                    </table>

            <hr width="90%">
<% } }%>


</body>
</html>