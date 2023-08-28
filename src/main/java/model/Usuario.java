package model;

import java.io.Serializable;

public class Usuario implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private int id;
    private String usuario;
    private String password;
    private String nome;
    private String email;
    private String pais;
    
    public boolean ehNovo() {
        return id == 0;
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    
    public String getUsuario() {
        return usuario;
    }
    
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getNome() {
        return nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    } 
    
    public String getPais() {
        return pais;
    }
    
    public void setPais(String pais) {
        this.pais = pais;
    }    
}
