<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Usuario"%>
<%@page import="dao.UsuarioRepository"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Usuário</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark">

    <%
    int userId = Integer.parseInt(request.getParameter("id"));
    UsuarioRepository userRepository = new UsuarioRepository();
    Usuario usuario = userRepository.buscarUsuarioPorId(userId); // Adicione essa função no UsuarioRepository

    if (usuario != null) {
    %>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card p-4 bg-dark text-white">
            <h1 class="mb-4 text-center">Editar Usuário</h1>

            <form action="ServletUsuario?acao=editar" method="post">
                <input type="hidden" name="id" value="<%=usuario.getId()%>">
                <div class="mb-3">
                    <label for="nome" class="form-label">Nome:</label>
                    <input type="text" class="form-control" id="nome" name="nome" value="<%=usuario.getNome()%>" style="background-color: #343a40; color: white;">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%=usuario.getEmail()%>" style="background-color: #343a40; color: white;">
                </div>
                <div class="mb-3">
                    <label for="senha" class="form-label">Senha:</label>
                    <input type="password" class="form-control" id="senha" name="senha" style="background-color: #343a40; color: white;">
                </div>
                <div class="mb-3">
                    <label for="pais" class="form-label">País:</label>
                    <input type="text" class="form-control" id="pais" name="pais" value="<%=usuario.getPais()%>" style="background-color: #343a40; color: white;">
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </form>
        </div>
    </div>
    <%
    } else {
    out.println("Usuário não encontrado.");
    }
    %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
