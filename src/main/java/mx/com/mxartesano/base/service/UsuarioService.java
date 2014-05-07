/*
 * Prospectiva Recibos de nomina
 */

package mx.com.mxartesano.base.service;

import java.util.List;
import mx.com.mxartesano.base.model.Usuario;

/**
 *
 * @author Ivan Emilio Garcia Cifuentes <prospectiva.com.mx>
 */
public interface UsuarioService {
    public List<Usuario> obtenerUsuarios();
    public List<Usuario> obtenerUsuariosPorStatus(String status);
    public Usuario obtenerUsuarioPorId(Integer id);
}
