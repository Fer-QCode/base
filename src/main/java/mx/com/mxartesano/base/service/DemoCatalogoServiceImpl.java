/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.mxartesano.base.service;

import java.util.List;
import mx.com.mxartesano.base.model.DemoEstatus;
import mx.com.mxartesano.base.persistence.DemoCatalogoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ivan
 */
@Service
public class DemoCatalogoServiceImpl implements DemoCatalogoService{
    @Autowired
    private DemoCatalogoMapper mapper;

    @Override
    public List<DemoEstatus> obtenerEstatus() {
        return mapper.obtenerEstatus();
    }
    
}
