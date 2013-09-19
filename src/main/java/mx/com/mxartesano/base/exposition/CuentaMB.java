/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.mxartesano.base.exposition;

import org.springframework.context.annotation.Scope;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

/**
 *
 * @author mxartesano
 */
@Controller
@Scope("session")
public class CuentaMB {
    
    public String getUsername(){
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }

   
    
}
