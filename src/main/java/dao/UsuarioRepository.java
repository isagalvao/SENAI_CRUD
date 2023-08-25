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
	        String sql = "SELECT id, nome, email, pais, password FROM usuario";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        ResultSet rs = stmt.executeQuery();

	        while (rs.next()) {
	            Usuario usuario = new Usuario();
	            usuario.setId(rs.getInt("id"));
	            usuario.setNome(rs.getString("nome"));
	            usuario.setEmail(rs.getString("email"));
	            usuario.setPais(rs.getString("pais"));
	            usuario.setPassword(rs.getString("password"));
	            usuarios.add(usuario);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return usuarios;
	}
	
	
	  public boolean excluirUsuario(int id) {
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        
	        try {
	            conn = ConexaoBanco.getConnection(); 
	            String sql = "DELETE FROM usuario WHERE id = ?";
	            stmt = conn.prepareStatement(sql);
	            stmt.setInt(1, id);
	            
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
	
	public boolean editarUsuario(int id, String nome, String email, String password) {
	    try {
	        String sql = "UPDATE usuarios SET nome = ?, email = ?, password = ? WHERE id = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setString(1, nome);
	        stmt.setString(2, email);
	        stmt.setString(3, password);
	        stmt.setInt(4, id);

	        int rowsAffected = stmt.executeUpdate();
	        return rowsAffected > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
	}
	
	public String obterNomeUsuario(String usuario) {
	    String nomeUsuario = null;
	    try {
	        String sql = "SELECT nome FROM usuario WHERE nome = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setString(1, usuario);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            nomeUsuario = rs.getString("nome");
	        }
	        
	        stmt.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return nomeUsuario;
	}
	public Usuario buscarUsuarioPorId(int id) {
	    try {
	        String sql = "SELECT id, nome, email, pais, password FROM usuario WHERE id = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            Usuario usuario = new Usuario();
	            usuario.setId(rs.getInt("id"));
	            usuario.setNome(rs.getString("nome"));
	            usuario.setEmail(rs.getString("email"));
	            usuario.setPais(rs.getString("pais"));
	            usuario.setPassword(rs.getString("password"));
	            return usuario;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return null; // Retorna null se o usuário não for encontrado
	}
	
}
