<%@page import="pruebaDic.DAO.DaoUser"%>
<%@page import="pruebaDic.model.User"%>
<%@page import="pruebaDic.model.Train"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pruebaDic.DAO.DaoTrain"%>
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

	<div class="container">
		<div class="starter-template">
			<h1>Viajes disponibles</h1>
			<!-- Button -->
			<a href="ventas.jsp">
			<div class="form-group">
				<div class="col-md-12">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary" style="float: right;">Ventas</button>
				</div>
			</div>
			</a>
			<a href="index.jsp">
			<div class="form-group">
				<div class="col-md-12">
					<button id="singlebutton" name="singlebutton"
						class="btn btn-primary" style="float: right;"><%= u.getUsername() %></button>
				</div>
			</div>
			</a>
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>SALIDA</th>
						<th>DESTINO</th>
						<th>PRECIO</th>
						<th>FECHA</th>
						<th>NUM. ASIENTOS LIBRES</th>
						<th>COMPRAR</th>
					</tr>
				</thead>
				<tbody>
				  <%
				  		  		  	DaoTrain daoTrain = new DaoTrain();
				  		  		    ArrayList<Train> listaViajes =daoTrain.getList();
				  		  		  	for (Train train: listaViajes){
				  %>
				  	<tr>
				  		<td><%=train.getId()%></td>
				  		<td><%=train.getOrigin()%></td>
				  		<td><%=train.getFinalStation()%></td>
				  		<td><%=train.getPrice()%></td>
				  		<td><%=train.getDate()%></td>
				  		<td><%=train.getNumbertickets()%></td>
				  		<%if(train.getNumbertickets()>0){ %>
				  		<td><a href='comprarBillete.jsp?id=<%=train.getId() %>'><button>Comprar billete</button></a> </td>
				  		<%} %>
				  	</tr>
				  <%	
				  		
				  	}
				  %>
					
				</tbody>

			</table>
		</div>
	</div>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.2/dist/umd/popper.min.js" integrity="sha384-q9CRHqZndzlxGLOj+xrdLDJa9ittGte1NksRmgJKeCV9DrM7Kz868XYqsKWPpAmn" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>