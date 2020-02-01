/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acciongenerico;

import com.opensymphony.xwork2.ActionSupport;
import Logica_Negocio.pojos.Usuario;
import conexion.BaseConexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import javax.swing.JOptionPane;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
/**
 *
 * @author Rene Jose
 */
public class AccionLoguear extends ActionSupport implements SessionAware{
    SessionMap<String,String> sessionmap;  
    public  Usuario obj_user=new Usuario();
    private String txt_user;
    private String txt_contrasenia;
    private static int id_usuario;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    
    
    public String getTxt_user() {
        return txt_user;
    }

    public void setTxt_user(String txt_user) {
        this.txt_user = txt_user;
    }

    public String getTxt_contrasenia() {
        return txt_contrasenia;
    }

    public void setTxt_contrasenia(String txt_contrasenia) {
        this.txt_contrasenia = txt_contrasenia;
    }

    public Usuario getObj_user() {
        return obj_user;
    }

    public void setObj_user(Usuario obj_user) {
        this.obj_user = obj_user;
    }
    
    
    public String Logueo(){
        
        String valor=validacionloguear(getTxt_user(),getTxt_contrasenia());
        
        if (valor.equalsIgnoreCase("exitoso")) {
            sessionmap.put("id_usuario",String.valueOf(obj_user.getId_usuario()));
            sessionmap.put("nombre_ususrio",String.valueOf(obj_user.getNombre()));
            sessionmap.put("tipo_usuario",String.valueOf(obj_user.getDescripcion_tipousuario()));
            switch(obj_user.getId_tipousuario()){
                // administrador
                 case 1:
                    return "cliente";
                  case 2:
                      
                    return "secretaria";
                  case 3:
                    return "jefe_area";
                  case 4:
                    return "jefe_planta";
                  default:
                    return "noencontro";  
            }
        }
        sessionmap.invalidate();
        return "error";
    
    }
    
    
    // vamos a poner nuestro metodo de logica de negocio
    public String validacionloguear(String user, String pass){
      
        try{
         String sql="{call sp_general_logueo(?,?)};";
         CallableStatement st=BaseConexion.getprepareCall(sql);
         st.setString(1,user);
         st.setString(2,pass);
         st.execute();  
            ResultSet resultado=st.getResultSet();
            while(resultado.next()){
                  obj_user.setId_usuario(resultado.getInt(1));   
                  obj_user.setId_tipousuario(resultado.getInt(2));
                  obj_user.setNombre(resultado.getString(3));
                  obj_user.setDescripcion_tipousuario(resultado.getString(4));
                  setId_usuario(resultado.getInt(1));
            }
           resultado.close();
        }
        catch(Exception e){
            return "erroneo";
        }
       return "exitoso"; 
    }
    
    public String ruteador(){
        return "success";
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sessionmap=(SessionMap)map;
          
    }
    
    
    
}
