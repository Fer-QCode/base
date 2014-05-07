/*
 * Prospectiva Recibos de nomina
 */

package mx.com.mxartesano.base.exposition;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
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
    
    @PostConstruct
    public void init(){
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

    public List<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
}
