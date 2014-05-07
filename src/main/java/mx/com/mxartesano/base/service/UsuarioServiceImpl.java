/*
 * Prospectiva Recibos de nomina
 */

package mx.com.mxartesano.base.service;

import java.util.List;
import mx.com.mxartesano.base.model.Usuario;
import mx.com.mxartesano.base.persistence.UsuarioMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Ivan Emilio Garcia Cifuentes <prospectiva.com.mx>
 */
@Service
public class UsuarioServiceImpl implements UsuarioService{
    @Autowired
    private UsuarioMapper usuarioMapper;

    @Override
    public List<Usuario> obtenerUsuarios() {
        return usuarioMapper.obtenerUsuarios();
    }

    @Override
    public List<Usuario> obtenerUsuariosPorStatus(String status) {
        return usuarioMapper.obtenerUsuariosPorStatus(status);
    }

    @Override
    public Usuario obtenerUsuarioPorId(Integer id) {
        return usuarioMapper.obtenerUsuarioPorId(id);
    }

    @Override
    public void registrarUsuario(Usuario u) {
        u.setStatus("A");
        usuarioMapper.registrarUsuario(u);
        System.out.println("ID Generado: " + u.getIdUsuario());
        
    }

    @Override
    public void modificarUsuario(Usuario u) {
        usuarioMapper.modificarUsuario(u);
    }

    @Override
    public void eliminarUsuario(Usuario u) {
        usuarioMapper.eliminarUsuario(u);
    }
    
}
