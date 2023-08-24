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
	 <form action="processar-cadastro-logado.jsp" method="post">
            <!-- Removido o campo ID -->

            <div class="mb-3">
                <label for="nome" class="form-label d-flex w-100">Nome:</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>

            <div class="mb-3">
                <label for="senha" class="form-label d-flex w-100">Senha:</label>
                <input type="password" class="form-control" id="senha" name="senha" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label d-flex w-100">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="sexo" class="form-label d-flex w-100">Sexo:</label>
                <select class="form-select" id="sexo" name="sexo">
                    <option value="masculino">Masculino</option>
                    <option value="feminino">Feminino</option>
                    <option value="outro">Outro</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="pais" class="form-label d-flex w-100">País:</label>
                <select class="form-select" id="pais" name="pais">
                    <option value="brasil">Brasil</option>
                    <option value="eua">Estados Unidos</option>
                    <option value="portugal">Portugal</option>
                    <!-- Outras opções de países aqui -->
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
</div>

</body>
</html>