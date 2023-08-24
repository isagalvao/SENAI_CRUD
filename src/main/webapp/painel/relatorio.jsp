<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.Usuario" %>
<%@ page import="dao.UsuarioRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Painel Administrativo</title>
</head>
<body>
<div class="container">
    <h3>Painel Administrativo - Banco De Usuários</h3>
    <jsp:include page="navbar.jsp"></jsp:include>
</div>
<div class="container">
    <h4>Banco De Usuários</h4>
    <table class="table">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>País</th>
            </tr>
        </thead>
        <tbody>
            <%
                dao.UsuarioRepository userRepository = new dao.UsuarioRepository();
                java.util.List<model.Usuario> usuarios = userRepository.buscarTodosUsuarios();

                for (model.Usuario usuario : usuarios) {
                	System.out.println(usuarios);
            %>
            <tr>
                <td><%= usuario.getNome() %></td>
                <td><%= usuario.getEmail() %></td>
                <td><%= usuario.getPais() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>
</body>
</html>
