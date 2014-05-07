/*
 * Prospectiva Recibos de nomina
 */

package mx.com.mxartesano.base.model;

import java.io.Serializable;

/**
 * Clase modelo para usuarios
 * @author Ivan Emilio Garcia Cifuentes <prospectiva.com.mx>
 */
public class Usuario implements Serializable{
    private Integer idUsuario;
    private String username;
    private String password;
    private String status;

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
    
}
