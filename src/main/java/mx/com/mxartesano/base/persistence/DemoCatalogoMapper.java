/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.mxartesano.base.persistence;

import java.util.List;
import mx.com.mxartesano.base.model.DemoEstatus;

/**
 *
 * @author ivan
 */
public interface DemoCatalogoMapper {
    public List<DemoEstatus> obtenerEstatus();
    
}
