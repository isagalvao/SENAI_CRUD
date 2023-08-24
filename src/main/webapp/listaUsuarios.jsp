<%@page import="model.Usuario"%>
<%@page import="dao.UsuarioRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Usuários</title>
</head>
<body>

<h1>Listagem de Usuários</h1>

<%
dao.UsuarioRepository userRepository = new dao.UsuarioRepository();
java.util.List<model.Usuario> usuarios = userRepository.buscarTodosUsuarios();

for (model.Usuario usuario : usuarios) {
    out.println("Nome: " + usuario.getNome() + "<br>");
    out.println("Email: " + usuario.getEmail() + "<br>");
    out.println("País: " + usuario.getPais() + "<br>");
    out.println("------------------------<br>");
}
%>

<!-- Exibir resultados da busca -->
<table>
    <tr>
        <th>Nome</th>
        <th>Email</th>
        <th>País</th>
        <th>Ações</th>
    </tr>
    <%
    for (model.Usuario usuario : usuarios) {
    %>
    <tr>
        <td><%= usuario.getNome() %></td>
        <td><%= usuario.getEmail() %></td>
        <td><%= usuario.getPais() %></td>
        <td>
            <a href="editarUsuario.jsp?nome=<%= usuario.getNome() %>">Editar</a>
            <a href="#" onclick="excluirUsuario(<%= usuario.getId() %>)">Excluir</a>
        </td>
    </tr>
    <%
    }
    %>
</table>

<script>
    function excluirUsuario(userId) {
        if (confirm("Tem certeza que deseja excluir este usuário?")) {
            window.location.href = "ServletUsuario?acao=excluir&idExcluir=" + userId;
        }
    }
</script>

</body>
</html>
