package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;

import java.io.IOException;
import dao.UsuarioRepository;

public class ServletUsuario extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UsuarioRepository userRepository = new UsuarioRepository();

    public ServletUsuario() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String mensagem = "";
            String acao = request.getParameter("acao");
            Usuario user01 = new Usuario();
            
            if (acao != null && acao.equals("excluir")) {
            	int idExcluir = Integer.parseInt(request.getParameter("idExcluir"));
                boolean excluidoComSucesso = userRepository.excluirUsuario(idExcluir);

                if (excluidoComSucesso) {
                    mensagem = "Usuário excluído com sucesso!";
                } else {
                    mensagem = "Erro ao excluir o usuário.";
                }
            } else if (acao != null && acao.equals("editar")) {
            	int id = Integer.parseInt(request.getParameter("id"));
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
                String pais = request.getParameter("pais");
                
                boolean editadoComSucesso = userRepository.editarUsuario(id, nome, email, senha);
                
                if (editadoComSucesso) {
                    mensagem = "Usuário editado com sucesso!";
                } else {
                    mensagem = "Erro ao editar o usuário.";
                }
            } else {
                String usuario = request.getParameter("usuario");
                String password = request.getParameter("senha");

                user01.setUsuario(usuario);
                user01.setPassword(password);

                if (userRepository.vericaUsuarioPorEmail(user01.getUsuario()) && user01.getId() == 0) {
                    mensagem = "Usuário já cadastrado, informe outro usuário!!!";
                } else {
                    if (user01.ehNovo()) {
                        mensagem = "Gravado com Sucesso!!";
                    } else {
                        mensagem = "Atualizado com Sucesso!!";
                     
                        String nome = request.getParameter("nome");
                        String email = request.getParameter("email");
                        String pais = request.getParameter("pais");
                        user01.setNome(nome);
                        user01.setEmail(email);
                        user01.setPais(pais);
                        userRepository.editarUsuario(user01.getId(), nome, email, pais);
                    }
                    user01 = userRepository.insereUsuario(user01);
                }
            }

            request.setAttribute("mensagem", mensagem);
            request.setAttribute("user01", user01);
            request.getRequestDispatcher("painel/cadastro.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            RequestDispatcher redireciona = request.getRequestDispatcher("error.jsp");
            request.setAttribute("mensagem", e.getMessage());
            redireciona.forward(request, response);
        }
    }
}
