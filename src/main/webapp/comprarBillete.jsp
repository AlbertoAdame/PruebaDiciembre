<%@page import="pruebaDic.DAO.DaoTravels"%>
<%@page import="pruebaDic.model.Travels"%>
<%@page import="pruebaDic.model.Train"%>
<%@page import="pruebaDic.DAO.DaoTrain"%>
<%@page import="pruebaDic.DAO.DaoUser"%>
<%@page import="pruebaDic.model.User"%>
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


Travels t = DaoTravels.getTravel(Integer.parseInt(request.getParameter("id")));
Train train = DaoTrain.get(Integer.parseInt(request.getParameter("id")));
%>
<h1>Viaje</h1> 


<h2>Destino: <%= train.getFinalStation() %></h2>
<h2>Origen: <%= train.getOrigin() %></h2>
Asiento = 99
<small>ID tren: <%= train.getId() %></small><br>
<small>Precio tren: <%= train.getPrice() %></small><br>
<small>Date tren: <%= train.getDate() %></small><br>
<br>
<a href='comprarExec.jsp?id=<%=train.getId() %>'><button>Comprar billete</button></a> 
<a href='billetes.jsp'><button>Cancelar</button></a> 
</body>
</html>