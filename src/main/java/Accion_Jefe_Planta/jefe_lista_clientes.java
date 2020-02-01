/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Accion_Jefe_Planta;

import Logica_Negocio.pojos.Cliente;
import Logica_Negocio.pojos.Tarjeta;
import Logica_Negocio.pojos.Usuario;
import conexion.BaseConexion;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author Rene Jose
 */
public class jefe_lista_clientes {
    // lsitado de clientes 
    List<Cliente> lst_clientes=new ArrayList<Cliente>();
    // id 
    static int id_clientes_e;
    
    // variables para guardar datos 
    String nombre_representante_e;
    String razon_social_e ;
    String email_e;
    String pais_e;
    String region_e;
    String ciudad_e;
    String direccion_e;
    String codigo_postal_e;
    String telefono_e;
    String password_e;
    // id para la actualizacion 
    int id_persona_e;
    int id_usuario_e;
    int id_cliente_e;
    int id_e;
    public List<Cliente> getLst_clientes(){
        return lst_clientes;
    }

    public int getId_clientes_e() {
        return id_clientes_e;
    }

    public void setId_clientes_e(int id_clientes_e) {
        this.id_clientes_e = id_clientes_e;
    }

    
    // get y setters
    public void setLst_clientes(List<Cliente> lst_clientes) {
        this.lst_clientes = lst_clientes;
    }

    // metodo que envie el id
    public String ruteador(){
       // JOptionPane.showMessageDialog(null,getId_clientes_e());
      return "success";
    }

    public String getNombre_representante_e() {
        return nombre_representante_e;
    }

    public void setNombre_representante_e(String nombre_representante_e) {
        this.nombre_representante_e = nombre_representante_e;
    }

    public String getRazon_social_e() {
        return razon_social_e;
    }

    public void setRazon_social_e(String razon_social_e) {
        this.razon_social_e = razon_social_e;
    }

    public String getEmail_e() {
        return email_e;
    }

    public void setEmail_e(String email_e) {
        this.email_e = email_e;
    }

    public String getPais_e() {
        return pais_e;
    }

    public void setPais_e(String pais_e) {
        this.pais_e = pais_e;
    }

    public String getRegion_e() {
        return region_e;
    }

    public void setRegion_e(String region_e) {
        this.region_e = region_e;
    }

    public String getCiudad_e() {
        return ciudad_e;
    }

    public void setCiudad_e(String ciudad_e) {
        this.ciudad_e = ciudad_e;
    }

    public String getDireccion_e() {
        return direccion_e;
    }

    public void setDireccion_e(String direccion_e) {
        this.direccion_e = direccion_e;
    }

    public String getCodigo_postal_e() {
        return codigo_postal_e;
    }

    public void setCodigo_postal_e(String codigo_postal_e) {
        this.codigo_postal_e = codigo_postal_e;
    }

    public String getTelefono_e() {
        return telefono_e;
    }

    public void setTelefono_e(String telefono_e) {
        this.telefono_e = telefono_e;
    }

    public String getPassword_e() {
        return password_e;
    }

    public void setPassword_e(String password_e) {
        this.password_e = password_e;
    }

    public int getId_persona_e() {
        return id_persona_e;
    }

    public void setId_persona_e(int id_persona_e) {
        this.id_persona_e = id_persona_e;
    }

    public int getId_usuario_e() {
        return id_usuario_e;
    }

    public void setId_usuario_e(int id_usuario_e) {
        this.id_usuario_e = id_usuario_e;
    }

    public int getId_cliente_e() {
        return id_cliente_e;
    }

    public void setId_cliente_e(int id_cliente_e) {
        this.id_cliente_e = id_cliente_e;
    }

    public int getId_e() {
        return id_e;
    }

    public void setId_e(int id_e) {
        this.id_e = id_e;
    }
    
    
    
    // carga de datos 
    public String carga_datos_modificar(){
      /*
        rerpresentante; razon social;email;pais;region_provincia,direccion;codigo-.postal;telefono;clave
        */
         String sql= "SELECT razon_social,pais,region,\n" +
                "    ciudad,codigo_postal,id_tarjeta,cli.estado,\n" +
                "    nombre,apellidos,email,direccion,telefono,usuario,contrasenia,us.id_usuario,per.id_persona,cli.id_cliente,"
                +   "(select count(*) from pedidos where id_cliente = cli.id_persona) as cant_cliente \n" +
                "    FROM cliente cli inner join persona per on cli.id_persona= per.id_persona\n" +
                "    inner join usuario us on per.id_persona=us.id_persona where cli.estado=1 and cli.id_cliente= "+ getId_clientes_e() +";\n" +
                " ";  
        //JOptionPane.showMessageDialog(null,getId_clientes_e());
              try{
            ResultSet resultado =  BaseConexion.getStatement().executeQuery(sql);
            while(resultado.next()){
                Cliente cliente= new Cliente();
                cliente.setRazon_social(resultado.getString(1));
                cliente.setPais(resultado.getString(2));
                cliente.setRegion(resultado.getString(3));
                cliente.setCiudad(resultado.getString(4));
                cliente.setCodigo_postal(resultado.getString(5));
                // tarjeta de credito 
                cliente.setId_tarjeta(resultado.getInt(6));
                cliente.setEstado(resultado.getInt(7));
                cliente.setNombre(resultado.getString(8));
                cliente.setApellidos(resultado.getString(9));
                cliente.setEmail(resultado.getString(10));
                cliente.setDireccion(resultado.getString(11));
                cliente.setTelefono(resultado.getString(12));
                // usuario
                Usuario obj_user= new Usuario();
                obj_user.setUser(resultado.getString(13));
                obj_user.setPassword(resultado.getString(14));
                obj_user.setId_usuario(resultado.getInt(15));
                cliente.setUsuario(obj_user);
                cliente.setId_persona(resultado.getInt(16));
                cliente.setId_cliente(resultado.getInt(17));
                cliente.setCantidad_pedidos(resultado.getInt(18));
                lst_clientes.add(cliente);
            }
        }
        catch(SQLException ex){
            
        }
      return  "success";
    };
    
    
    // metodo para lisatado de los clientes
    public String listar_clientes() {
        String sql= "SELECT razon_social,pais,region,\n" +
                "    ciudad,codigo_postal,id_tarjeta,cli.estado,\n" +
                "    nombre,apellidos,email,direccion,telefono,usuario,contrasenia,us.id_usuario,per.id_persona,cli.id_cliente,"
                +   "(select count(*) from pedidos where id_cliente = cli.id_persona) as cant_cliente \n" +
                "    FROM cliente cli inner join persona per on cli.id_persona= per.id_persona\n" +
                "    inner join usuario us on per.id_persona=us.id_persona where cli.estado=1;\n" +
                " ";
        try{
            ResultSet resultado =  BaseConexion.getStatement().executeQuery(sql);
            while(resultado.next()){
                Cliente cliente= new Cliente();
                cliente.setRazon_social(resultado.getString(1));
                cliente.setPais(resultado.getString(2));
                cliente.setRegion(resultado.getString(3));
                cliente.setCiudad(resultado.getString(4));
                cliente.setCodigo_postal(resultado.getString(5));
                // tarjeta de credito 
                cliente.setId_tarjeta(resultado.getInt(6));
                cliente.setEstado(resultado.getInt(7));
                cliente.setNombre(resultado.getString(8));
                cliente.setApellidos(resultado.getString(9));
                cliente.setEmail(resultado.getString(10));
                cliente.setDireccion(resultado.getString(11));
                cliente.setTelefono(resultado.getString(12));
                // usuario
                Usuario obj_user= new Usuario();
                obj_user.setUser(resultado.getString(13));
                obj_user.setPassword(resultado.getString(14));
                obj_user.setId_usuario(resultado.getInt(15));
                cliente.setUsuario(obj_user);
                cliente.setId_persona(resultado.getInt(16));
                cliente.setId_cliente(resultado.getInt(17));
                cliente.setCantidad_pedidos(resultado.getInt(18));
                lst_clientes.add(cliente);
            }
        }
        catch(SQLException ex){
            
        }
        return "success";
    }
    // guardar los clientes 
  
    public String guardar_cliente(){
        String sql="{CALL sp_actualizar_cliente(?,?,?,?,?,?,?,?,?,?,?,?,?)}";
        CallableStatement resul= BaseConexion.getprepareCall(sql);
        try {
            resul.setString(1, getNombre_representante_e());
            resul.setString(2, getRazon_social_e());
            resul.setString(3, getEmail_e());
            resul.setString(4, getPais_e());
            resul.setString(5, getRegion_e());
            resul.setString(6, getCiudad_e());
            resul.setString(7, getDireccion_e());
            resul.setString(8, getCodigo_postal_e());
            resul.setString(9, getTelefono_e());
            resul.setString(10, getPassword_e());
            resul.setInt(11, getId_persona_e());
            resul.setInt(12, getId_usuario_e());
            resul.setInt(13, getId_cliente_e());
            resul.executeUpdate();
            return  "success";
        } catch (SQLException ex) {
            Logger.getLogger(jefe_lista_clientes.class.getName()).log(Level.SEVERE, null, ex);
            
            return  "error";
        }
        
    };
    
    // eliminar un cliente
    public String eliminar_jclientes(){
    String sql="update cliente set estado = 0 where  id_cliente=" + getId_e() ;
        PreparedStatement resul= BaseConexion.getPreparedStatement(sql);
        try {
            resul.executeUpdate();
            return  "success";
        } catch (SQLException ex) {
            Logger.getLogger(jefe_lista_clientes.class.getName()).log(Level.SEVERE, null, ex);
            
            return  "error";
        }
    };
    
    
    
    
    
    
}
