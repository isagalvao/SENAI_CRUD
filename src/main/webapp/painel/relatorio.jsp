<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Painel Administrativo</title>
</head>
<body>
<div class="container">
    <h3>Painel Administrativo - Relat�rio de Usu�rios</h3>
    <jsp:include page="navbar.jsp"></jsp:include>
</div>
<div class="container">
    <h4>Listagem de Usu�rios</h4>
    <table class="table">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Pa�s</th>
            </tr>
        </thead>
        <tbody>
            <%
                dao.UsuarioRepository userRepository = new dao.UsuarioRepository();
                java.util.List<model.Usuario> usuarios = userRepository.buscarTodosUsuarios();

                for (model.Usuario usuario : usuarios) {
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
