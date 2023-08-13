<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Painel Administrativo</title>
</head>
<body>
<div class="container">
	<h3>Painel Administrativo - Cadastro de Usuário</h3>
	<jsp:include page="navbar.jsp"></jsp:include>
</div>
<div class="container">
	<form action="<%= request.getContextPath() %>/ServletUsuario" method="post">
		<div class="mb-3">
		  <label for="formGroupExampleInput" class="form-label">Usuário</label>
		  <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Nome do Usuário">
		</div>
		<div class="mb-3">
		  <label for="formGroupExampleInput2" class="form-label">Senha</label>
		  <input type="password" class="form-control" name="senha" id="senha" placeholder="Senha do Usuário">
		</div>
		<input type="submit" value="Salvar">
	</form>
</div>
<div class="container">
	<span id="mensagem">${mensagem}</span>
</div>
</body>
</html>