/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica_Negocio.pojos;

/**
 *
 * @author Rene Jose
 */
public class Usuario extends Persona{
    private int id_usuario;
    
    private int id_tipousuario;
    
    
  
    private String descripcion_tipousuario;
    

    public Usuario() {
    }

   

    public String getDescripcion_tipousuario() {
        return descripcion_tipousuario;
    }

    public void setDescripcion_tipousuario(String descripcion_tipousuario) {
        this.descripcion_tipousuario = descripcion_tipousuario;
    }


    
    
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

 

    public int getId_tipousuario() {
        return id_tipousuario;
    }

    public void setId_tipousuario(int id_tipousuario) {
        this.id_tipousuario = id_tipousuario;
    }

 
    
    
}
