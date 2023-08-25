<%@page import="model.Usuario"%>
<%@page import="dao.UsuarioRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de Usuários</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

	<div class="container mt-5">
		<h1 class="mb-4">Listagem de Usuários</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
					<th scope="col">Email</th>
					<th scope="col">País</th>
					<th scope="col">Ações</th>
				</tr>
			</thead>
			<tbody>
				<%
				dao.UsuarioRepository userRepository = new dao.UsuarioRepository();
				java.util.List<model.Usuario> usuarios = userRepository.buscarTodosUsuarios();

				for (model.Usuario usuario : usuarios) {
				%>
				<tr>
					<td><%=usuario.getId()%></td>
					<td><%=usuario.getNome()%></td>
					<td><%=usuario.getEmail()%></td>
					<td><%=usuario.getPais()%></td>

					<td><a href="editarUsuario.jsp?id=<%=usuario.getId()%>"
						class="btn btn-primary">Editar</a> <a
						href="ServletUsuario?acao=excluir&idExcluir=<%=usuario.getId()%>"
						class="btn btn-danger">Excluir</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<script>
		function excluirUsuario(userId) {
			if (confirm("Tem certeza que deseja excluir este usuário?")) {
				window.location.href = "ServletUsuario?acao=excluir&idExcluir="
						+ userId;
			}
		}
	</script>

	<!-- Inclua os scripts do Bootstrap no final do corpo -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
