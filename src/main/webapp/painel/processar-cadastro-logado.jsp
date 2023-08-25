<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Processamento do Formulário</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-dark text-white text-center d-flex align-items-center justify-content-center" style="min-height: 100vh;">

<div class="container">
    <div class="card bg-dark text-white">
        <div class="card-body">
            <%
               
                String nome = request.getParameter("nome");
                String senha = request.getParameter("senha");
                String email = request.getParameter("email");
                String sexo = request.getParameter("sexo");
                String pais = request.getParameter("pais");

             
                String jdbcUrl = "jdbc:mysql://127.0.0.1:3306/crudjspjava?useSSL=false";
                String user = "root";
                String password = "Senai666";

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(jdbcUrl, user, password);

                  
                    String verificaEmailQuery = "SELECT COUNT(1) AS EXISTE FROM usuario WHERE email = ?";
                    PreparedStatement verificaEmailStmt = connection.prepareStatement(verificaEmailQuery);
                    verificaEmailStmt.setString(1, email);
                    ResultSet verificaEmailResult = verificaEmailStmt.executeQuery();

                    verificaEmailResult.next();
                    boolean emailJaExiste = verificaEmailResult.getInt("EXISTE") > 0;

                    if (emailJaExiste) {
                        out.println("<div class=\"alert alert-danger\" role=\"alert\">");
                        out.println("<h4 class=\"alert-heading\">Erro no cadastro:</h4>");
                        out.println("<p>O email já está cadastrado.</p>");
                        out.println("</div>");
                    } else {
                       
                        String insertQuery = "INSERT INTO usuario (nome, password, email, sexo, pais) VALUES (?, ?, ?, ?, ?)";
                        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
                        preparedStatement.setString(1, nome);
                        preparedStatement.setString(2, senha);
                        preparedStatement.setString(3, email);
                        preparedStatement.setString(4, sexo);
                        preparedStatement.setString(5, pais);

                        preparedStatement.executeUpdate();

                        out.println("<div class=\"alert alert-success\" role=\"alert\">");
                        out.println("<h4 class=\"alert-heading\">Cadastro realizado com sucesso!</h4>");
                        out.println("</div>");

                        preparedStatement.close();
                    }

                    verificaEmailStmt.close();
                    connection.close();
                } catch (Exception e) {
                    out.println("<div class=\"alert alert-danger\" role=\"alert\">");
                    out.println("<h4 class=\"alert-heading\">Ocorreu um erro:</h4>");
                    out.println("<p>" + e.getMessage() + "</p>");
                    out.println("</div>");
                    e.printStackTrace();
                }
            %>

            <a href="cadastro.jsp" class="btn btn-primary">Voltar</a>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
