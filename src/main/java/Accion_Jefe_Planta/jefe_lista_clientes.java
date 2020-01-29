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
            resul.setString(1, sql);
            
            resul.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(jefe_lista_clientes.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  "";
    };
    
    
}
