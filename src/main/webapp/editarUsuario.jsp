<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Usuario"%>
<%@page import="dao.UsuarioRepository"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Usuário</title>
</head>
<body>

	<%
	int userId = Integer.parseInt(request.getParameter("id"));
	UsuarioRepository userRepository = new UsuarioRepository();
	Usuario usuario = userRepository.buscarUsuarioPorId(userId); // Adicione essa função no UsuarioRepository

	if (usuario != null) {
	%>
	<h1>Editar Usuário</h1>

	<form action="ServletUsuario?acao=editar" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>">

		<label for="nome">Nome:</label> <input type="text" id="nome"
			name="nome" value="<%=usuario.getNome()%>"><br> <label
			for="email">Email:</label> <input type="email" id="email"
			name="email" value="<%=usuario.getEmail()%>"><br> <label
			for="senha">Senha:</label> <input type="password" id="senha"
			name="senha"><br> <label for="pais">País:</label> <input
			type="text" id="pais" name="pais" value="<%=usuario.getPais()%>"><br>

		<input type="submit" value="Salvar">
	</form>
	<%
	} else {
	out.println("Usuário não encontrado.");
	}
	%>

</body>
</html>
