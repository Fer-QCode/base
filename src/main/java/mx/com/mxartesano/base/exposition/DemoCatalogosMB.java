/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.mxartesano.base.exposition;

import java.util.List;
import javax.annotation.PostConstruct;
import mx.com.mxartesano.base.model.DemoEstatus;
import mx.com.mxartesano.base.service.DemoCatalogoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author ivan
 */
@Controller
public class DemoCatalogosMB {
    @Autowired
    private DemoCatalogoService service;
    private List<DemoEstatus> estatus;
    
    @PostConstruct
    public void init(){
        estatus = service.obtenerEstatus();
    }

    public List<DemoEstatus> getEstatus() {
        return estatus;
    }

    public void setEstatus(List<DemoEstatus> estatus) {
        this.estatus = estatus;
    }
}
