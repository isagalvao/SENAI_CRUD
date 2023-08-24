<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Painel Administrativo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa;">
<jsp:include page="navbar.jsp"></jsp:include>
 <div class="card text-white text-center p-5" style="background-color: #1c2331; background-image: url('https://images.unsplash.com/photo-1483478550801-ceba5fe50e8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'); background-size: cover; background-position: center; height: 500px; display: flex; justify-content: center; align-items: center;">
    <div style="background-color: rgba(0, 0, 0, 0.6); padding: 20px; border-radius: 10px;">
        <h1 class="display-4 text-white">Bem-vindo ao Painel Administrativo <%= request.getSession().getAttribute("usuario") %></h1>
        <p class="lead text-white">Segurança é fundamental para um sistema de cadastro. Mantenha suas informações protegidas.</p>
    </div>
</div>

<div class="container mt-5">

 
    <div class="card text-white mt-5 p-4" style="background-color: #1c2331">
        <h2 class="h4">Assine nossa newsletter</h2>
        <form class="row mt-3">
            <div class="col-md-6">
                <input type="text" class="form-control" placeholder="Nome">
            </div>
            <div class="col-md-6">
                <input type="email" class="form-control" placeholder="Email">
            </div>
            <div class="col-md-12 mt-3">
                <button type="submit" class="btn btn-light">Assinar</button>
            </div>
        </form>
    </div>
</div>


<footer class="text-white" style="background-color: #1c2331; margin-top:4rem ">
    <div class="container py-4">
        <section class="d-flex justify-content-between py-3" style="background-color: #6351ce;">
            <div class="me-5">
                <span>Esteja conectado e atualizado</span>
            </div>
            <div>
                <a href="" class="text-white me-4">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-github"></i>
                </a>
            </div>
        </section>
        <section class="text-center text-md-start mt-5">
            <div class="row mt-3">
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <h6 class="text-uppercase fw-bold">CRUD-SENAI</h6>
                    <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color: #7c4dff; height: 2px">
                    <p>Construimos aplicações seguras, responsivas e inteligentes.</p>
                </div>
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <h6 class="text-uppercase fw-bold">Produtos</h6>
                    <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color: #7c4dff; height: 2px">
                    <p><a href="#!" class="text-white">Segurança digital</a></p>
                    <p><a href="#!" class="text-white">Criptografia</a></p>
                    <p><a href="#!" class="text-white">Apis</a></p>
                    <p><a href="#!" class="text-white">Banco de dados</a></p>
                </div>
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <h6 class="text-uppercase fw-bold">Links Uteis</h6>
                    <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color: #7c4dff; height: 2px">
                    <p><a href="#!" class="text-white">Minha conta</a></p>
                    <p><a href="#!" class="text-white">Seja um afiliado</a></p>
                    <p><a href="#!" class="text-white">Pacotes</a></p>
                    <p><a href="#!" class="text-white">Ajuda</a></p>
                </div>
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <h6 class="text-uppercase fw-bold">Entre Em Contato</h6>
                    <hr class="mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; background-color: #7c4dff; height: 2px">
                    <p><i class="fas fa-home me-3"></i> Florianópolis-BR</p>
                    <p><i class="fas fa-envelope me-3"></i> crudSenai@example.com</p>
                    <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                </div>
            </div>
        </section>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 CRUD-SENAI. All rights reserved.
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
