<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="<%= request.getContextPath() %>/painel/inicio.jsp"><img src="data:image/png;base64,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" width="32"></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/painel/cadastro.jsp">Cadastro</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/painel/relatorio.jsp">Relatórios</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Action</a></li>
	            <li><a class="dropdown-item" href="#">Another action</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Something else here</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link disabled">Disabled</a>
	        </li>
	      </ul>
	      <form class="d-flex" role="search">
	      	<a class="nav-link" href="<%= request.getContextPath() %>/ServletOi?acao=logout"><%= request.getSession().getAttribute("usuario") %> - Logout(Sair)</a>
	      </form>
	    </div>
	  </div>
	</nav>