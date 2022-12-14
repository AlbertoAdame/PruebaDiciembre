<%@page import="pruebaDic.DAO.DaoUser"%>
<%@page import="pruebaDic.model.User"%>
<%@page import="pruebaDic.DAO.DaoTrain"%>
<%@page import="pruebaDic.DAO.DaoTravels"%>
<%@page import="pruebaDic.model.Train"%>
<%@page import="pruebaDic.model.Travels"%>
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


Train train = DaoTrain.get(Integer.parseInt(request.getParameter("id")));

Travels t = new Travels(u, train, 99);
DaoTravels.addVenta(t);
DaoTrain.quitarStock(train); 
response.sendRedirect("billetes.jsp"); 


%>
</body>
</html>