/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.com.mxartesano.base.model;

import java.io.Serializable;

/**
 *
 * @author ivan
 */
public class DemoEstatus implements Serializable{
    private Integer id;
    private String nombre;
    private String estado;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
    
}
