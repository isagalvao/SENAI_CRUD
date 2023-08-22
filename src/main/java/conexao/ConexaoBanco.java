package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBanco {
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/crudjspjava";
    private static final String USER = "root";
    private static final String PASSWORD = "Senai666";
    private static Connection conn = null;

    public static Connection getConnection() {
        if (conn == null) {
            conectar();
        }
        return conn;
    }

    private static void conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            
            // Desativar o autocommit
            conn.setAutoCommit(false);
            
        } catch (ClassNotFoundException | SQLException e) {
           System.out.println("Não conectou.");
            e.printStackTrace();
        }
    }
    
    public static void fecharConexao(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
