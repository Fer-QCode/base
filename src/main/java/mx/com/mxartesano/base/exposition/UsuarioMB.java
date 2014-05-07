/*
 * Prospectiva Recibos de nomina
 */

package mx.com.mxartesano.base.exposition;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import mx.com.mxartesano.base.model.Usuario;
import mx.com.mxartesano.base.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 *
 * @author Ivan Emilio Garcia Cifuentes <prospectiva.com.mx>
 */
@Scope("session")
@Controller
public class UsuarioMB implements Serializable{
    @Autowired
    private UsuarioService usuarioService;
    private List<Usuario> usuarios;
    private Usuario usuario;
    private Integer porcentaje;
    
    @PostConstruct
    public void init(){
        reset();
    }
    
    public void reset(){
        usuario = new Usuario();
        cargarUsuarios();
    }
    
    private void cargarUsuarios(){
        usuarios = new ArrayList<Usuario>();
        try {
            usuarios = usuarioService.obtenerUsuarios();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void registrarUsuario(){
        System.out.println("Username: " + usuario.getUsername());
        System.out.println("Password: " + usuario.getPassword());
        
        try {
            usuarioService.registrarUsuario(usuario);
            FacesMessage fm = new FacesMessage("Registrado correctamente");
            fm.setSeverity(FacesMessage.SEVERITY_INFO);
            
            FacesContext.getCurrentInstance().addMessage(null, fm);
            
            
            reset();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Integer getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(Integer porcentaje) {
        this.porcentaje = porcentaje;
    }
    
    
    
}
