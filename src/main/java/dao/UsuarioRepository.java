package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexao.ConexaoBanco;
import model.Usuario;


public class UsuarioRepository {
	private Connection conn;
	
	public UsuarioRepository() {
		conn = ConexaoBanco.getConnection();
	}
	
	public List<Usuario> buscarTodosUsuarios() {
	    List<Usuario> usuarios = new ArrayList<>();

	    try {
	        String sql = "SELECT nome, email, pais FROM usuarios";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        ResultSet rs = stmt.executeQuery();

	        while (rs.next()) {
	            Usuario usuario = new Usuario();
	            usuario.setNome(rs.getString("nome")); //
	            usuario.setEmail(rs.getString("email"));
	            usuario.setPais(rs.getString("pais"));
	            usuarios.add(usuario);
	            
	            
	            System.out.println("Nome: " + usuario.getNome());
	            System.out.println("Email: " + usuario.getEmail());
	            System.out.println("País: " + usuario.getPais());
	            System.out.println("------------------------");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return usuarios;
	}
	
	
	  public boolean excluirUsuario(Long id) {
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        
	        try {
	            conn = ConexaoBanco.getConnection(); 
	            String sql = "DELETE FROM usuarios WHERE id = ?";
	            stmt = conn.prepareStatement(sql);
	            stmt.setLong(1, id);
	            
	            int rowsAffected = stmt.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	           
	            return false;
	        } finally {
	            ConexaoBanco.fecharConexao(conn);
	        }
	    }
	
	public Usuario insereUsuario(Usuario objeto) throws Exception{
		if (objeto.ehNovo()) {
			String sql = "INSERT INTO user(login, senha) VALUES(?, ?);";
			
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, objeto.getNome());
			stmt.setString(2, objeto.getEmail());
			
			stmt.execute();
			
			conn.commit();	
		}else {
			String sql = "UPDATE user SET email=?, senha=? WHERE id = "+objeto.getNome()+";";
			
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, objeto.getNome());
			stmt.setString(2, objeto.getEmail());
			
			stmt.executeUpdate();
			
			conn.commit();
		}
		return this.consultarUsuario(objeto.getNome());
	}
	
	public Usuario consultarUsuario(String string) throws Exception{
		Usuario user01 = new Usuario();
		
		
		return user01;
	}
	
	public boolean vericaUsuarioPorEmail(String email) throws Exception {
	    String sql = "SELECT COUNT(1) > 0 AS EXISTE FROM user WHERE email = ?";
	    
	    PreparedStatement stmt = conn.prepareStatement(sql);
	    stmt.setString(1, email);
	    
	    ResultSet res = stmt.executeQuery();
	    
	    res.next();
	    return res.getBoolean("EXISTE");
	}
	
	public boolean editarUsuario(Long id, String nome, String email, String pais) {
	    try {
	        String sql = "UPDATE usuarios SET nome = ?, email = ?, pais = ? WHERE id = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setString(1, nome);
	        stmt.setString(2, email);
	        stmt.setString(3, pais);
	        stmt.setLong(4, id);

	        int rowsAffected = stmt.executeUpdate();
	        return rowsAffected > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}
}
