<%@page import= "dao.TurnoDAO"  @%>
<%@page import= "modelo.Turno"  @%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
	String nombre =request.getParameter("firstName");
	String apellido =request.getParameter("lastName");
	String usuario =request.getParameter("username");
	String mail =request.getParameter("email");
	String domicilio =request.getParameter("address");
	String localidad = request.getParameter("country");
	String provincia =request.getParameter("state");
	String codpostal =request.getParameter("zip");
	String formadepago =request.getParameter("paymentMethod");
	String tarjtitular =request.getParameter("cc-name");
	String tarjnumero =request.getParameter("cc-number");
	String tarjvto =request.getParameter("cc-expiration");
	String tarjclave =request.getParameter("cc-cvv");
	
	Turno turno = new Turno ( nombre, apellido, usuario, mail, domicilio, Integer.valueOf(localidad), Integer.valueOf(provincia), codpostal, formadepago, tarjtitular, Integer.valueOf(tarjnumero), tarjvto, Integer.valueOf(tarjclave)); 
	
	TurnoDAO turnoDAO = new TurnoDAO();
	Boolean okGuardado = turnoDAO.guardarTurno(turno);
	
   if (okGuardado) {
        out.println("El turno se agregó correctamente <br>");
    } else {
        out.println("Error en agregar turno <br>");
    }
  %>
</body>
</html>