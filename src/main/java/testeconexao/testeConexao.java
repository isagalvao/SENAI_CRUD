package testeconexao;

import conexao.ConexaoBanco;

import java.sql.Connection;

public class testeConexao {
    public static void main(String[] args) {
        Connection connection = ConexaoBanco.getConnection();
        
        if (connection != null) {
            System.out.println("Conexão estabelecida com sucesso!");
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Falha ao estabelecer a conexão.");
        }
    }
}
