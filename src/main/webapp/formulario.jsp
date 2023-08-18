<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Registro</title>
    <!-- Inclua os links para o CSS do Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark text-white text-center d-flex align-items-center justify-content-center" style="min-height: 100vh;">

<div class="container">
    <div style="max-width: 500px; margin: 0 auto;">
        <h1 class="mb-4">Formulário de Registro</h1>

        <form action="processar-formulario.jsp" method="post">
            <!-- Removido o campo ID -->

            <div class="mb-3">
                <label for="nome" class="form-label">Nome:</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>

            <div class="mb-3">
                <label for="senha" class="form-label">Senha:</label>
                <input type="password" class="form-control" id="senha" name="senha" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="sexo" class="form-label">Sexo:</label>
                <select class="form-select" id="sexo" name="sexo">
                    <option value="masculino">Masculino</option>
                    <option value="feminino">Feminino</option>
                    <option value="outro">Outro</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="pais" class="form-label">País:</label>
                <select class="form-select" id="pais" name="pais">
                    <option value="brasil">Brasil</option>
                    <option value="eua">Estados Unidos</option>
                    <option value="portugal">Portugal</option>
                    <!-- Outras opções de países aqui -->
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
        
        <div class="mt-3">
            <a href="index.jsp" class="btn btn-secondary">Voltar</a>
        </div>
    </div>
</div>

<!-- Inclua os scripts do Bootstrap no final do corpo -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
