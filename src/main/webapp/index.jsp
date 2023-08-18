<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>UC9 - Desenvolvimento de Sistemas</title>
<style>

body {
  padding-top: 3rem;
  padding-bottom: 3rem;
  color: rgb(var(--bs-tertiary-color-rgb));
}

.carousel {
  margin-bottom: 4rem;
}

.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

.carousel-item {
  height: 32rem;
}

.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
/* rtl:begin:ignore */
.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}
/* rtl:end:ignore */

.featurette-divider {
  margin: 5rem 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */
/* rtl:begin:remove */
.featurette-heading {
  letter-spacing: -.05rem;
}

@media (min-width: 40em) {
  .carousel-caption p {
    margin-bottom: 1.25rem;
    font-size: 1.25rem;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

@media (min-width: 62em) {
  .featurette-heading {
    margin-top: 7rem;
  }
}
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }
    </style>

</head>
<body>


<header data-bs-theme="dark">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse d-flex justify-content-end gap-2" id="navbarCollapse">
          <a class="btn btn-light"  href="login.jsp">Login</a>
           <a href="formulario.jsp" class="btn btn-outline-light">Cadastro</a>
      </div>
    </div>
  </nav>
</header>

<main>

  <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="mx-auto img-fluid" width="100%" height="100%" src="https://images.unsplash.com/photo-1553877522-43269d4ea984?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"/>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Simplifique a Gestão de Usuários</h1>
            <p class="opacity-75">Simplificamos cada etapa do gerenciamento de usuários para economizar seu tempo valioso.</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="mx-auto img-fluid" width="100%" height="100%" src="https://images.unsplash.com/photo-1570126646281-5ec88111777f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1141&q=80"/>
        <div class="container">
          <div class="carousel-caption">
            <h1>Personalização</h1>
            <p>Adapte os campos e as permissões de acordo com as necessidades específicas da sua organização.</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img class="mx-auto img-fluid" width="100%" height="100%" src="https://images.unsplash.com/photo-1473308822086-710304d7d30c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1631&q=80"/>
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>Suporte Excepcional</h1>
            <p>Nossa equipe de suporte está pronta para ajudar você em todas as etapas, garantindo que você aproveite ao máximo nossa solução.</p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <h2 class="fw-normal">Criação Simples</h2>
        <p>Adicione novos usuários com apenas alguns cliques. Nossa interface intuitiva permite que você insira facilmente os detalhes essenciais e defina permissões personalizadas.</p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <h2 class="fw-normal">Detalhes Completos</h2>
        <p> Visualize informações detalhadas de cada usuário sempre que precisar. Desde informações de contato até histórico de atividades, você terá uma visão completa de cada usuário.</p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <h2 class="fw-normal">Remoção Segura</h2>
        <p>Quando necessário, você pode remover usuários da maneira mais segura possível. Nossa funcionalidade de exclusão garante que os dados sejam tratados de acordo com as melhores práticas de segurança.</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-6">
        <h2 class="featurette-heading fw-normal lh-1">Gerencie usuários de forma eficiente e intuitiva com nossa solução completa de CRUD <span class="text-body-secondary">(Create, Read, Update, Delete).</span></h2>
        <p class="lead mt-5">Bem-vindo à plataforma líder em gestão de usuários! Nossa solução de CRUD foi projetada para atender às necessidades de empresas e organizações que buscam uma maneira fácil e eficaz de gerenciar seus usuários. Com uma interface intuitiva e recursos avançados, você pode controlar o ciclo de vida completo dos seus usuários com total tranquilidade.</p>
      </div>
      <div class="col-md-6">
        <img class="mx-auto" width="500" height=700 src="https://images.unsplash.com/photo-1618788372246-79faff0c3742?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=627&q=80"/>
      </div>
    </div>

    <hr class="featurette-divider">
  </div>

</main>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
