/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Accion_Jefe_Planta;

/**
 *
 * @author Rene Jose
 */

import Logica_Negocio.pojos.Area_produccion;
import Logica_Negocio.pojos.Configuracion;
import Logica_Negocio.pojos.Persona;
import Logica_Negocio.pojos.Usuario;
import conexion.BaseConexion;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.CallableStatement;
import Logica_Negocio.pojos.jefe_area;
import java.util.List;
import java.util.LinkedList;
import javax.swing.JOptionPane;
public class JefePlanta_Configuraciones {
    Configuracion obj_configuracion;
    // listar la configuracion 
    List<jefe_area> lst_jefe_area= new LinkedList<jefe_area>();
    //::::::::::::: varibales por id :::::::::::::::::::
    int id_e;
    jefe_area obj_jefe_area;
    //:::::::::::: variables de jefe _planta ::::::::::::::
    List<Area_produccion> lst_areas_produccion= new LinkedList<Area_produccion>();
    
    
    //:::::::::::. variables ::::::::::::::.
    double costo_malla_e;
    double kilo_por_caja_e; 
   
    double tipo_cambio_venta_e;
    
    double tipo_cambio_compra_e;
    int cajas_por_pallet_e ;
    int pallet_por_contenedor_e;
    double precio_pallet_aire_e;
    double precio_pallet_mar_e ;
    
    // ::::::::... variablesde actualizacion
    
    String nombre_e;
    String apellidos_e;
    String email_e;
    String direccion_e;
    int estado_e;
    String telefono_e;
    String usuario_e;
    String contrasenia_e;
    int id_area_produccion_e;
    int id_jefe_area_e;
    int id_persona_e;
    
    
    
    public Configuracion getObj_configuracion() {
        return obj_configuracion;
    }

    public void setObj_configuracion(Configuracion obj_configuracion) {
        this.obj_configuracion = obj_configuracion;
    }

    public double getCosto_malla_e() {
        return costo_malla_e;
    }

    public void setCosto_malla_e(double costo_malla_e) {
        this.costo_malla_e = costo_malla_e;
    }

    public double getKilo_por_caja_e() {
        return kilo_por_caja_e;
    }

    public void setKilo_por_caja_e(double kilo_por_caja_e) {
        this.kilo_por_caja_e = kilo_por_caja_e;
    }
  
    public double getTipo_cambio_venta_e() {
        return tipo_cambio_venta_e;
    }

    public void setTipo_cambio_venta_e(double tipo_cambio_venta_e) {
        this.tipo_cambio_venta_e = tipo_cambio_venta_e;
    }
    
    public double getTipo_cambio_compra_e() {
        return tipo_cambio_compra_e;
    }

    public void setTipo_cambio_compra_e(double tipo_cambio_compra_e) {
        this.tipo_cambio_compra_e = tipo_cambio_compra_e;
    }

    public int getCajas_por_pallet_e() {
        return cajas_por_pallet_e;
    }

    

    public int getPallet_por_contenedor_e() {
        return pallet_por_contenedor_e;
    }

    public void setCajas_por_pallet_e(int cajas_por_pallet_e) {
        this.cajas_por_pallet_e = cajas_por_pallet_e;
    }

    public void setPallet_por_contenedor_e(int pallet_por_contenedor_e) {
        this.pallet_por_contenedor_e = pallet_por_contenedor_e;
    }

    

    public double getPrecio_pallet_aire_e() {
        return precio_pallet_aire_e;
    }

    public void setPrecio_pallet_aire_e(double precio_pallet_aire_e) {
        this.precio_pallet_aire_e = precio_pallet_aire_e;
    }

    public double getPrecio_pallet_mar_e() {
        return precio_pallet_mar_e;
    }

    public void setPrecio_pallet_mar_e(double precio_pallet_mar_e) {
        this.precio_pallet_mar_e = precio_pallet_mar_e;
    }

    public List<jefe_area> getLst_jefe_area() {
        return lst_jefe_area;
    }

    public void setLst_jefe_area(List<jefe_area> lst_jefe_area) {
        this.lst_jefe_area = lst_jefe_area;
    }

    public int getId_e() {
        return id_e;
    }

    public void setId_e(int id_e) {
        this.id_e = id_e;
    }

    public jefe_area getObj_jefe_area() {
        return obj_jefe_area;
    }

    public void setObj_jefe_area(jefe_area obj_jefe_area) {
        this.obj_jefe_area = obj_jefe_area;
    }

  //:::::::::::::. lista de areas de produccion :::::::::::::::::::

    public List<Area_produccion> getLst_areas_produccion() {
        return lst_areas_produccion;
    }

    public void setLst_areas_produccion(List<Area_produccion> lst_areas_produccion) {
        this.lst_areas_produccion = lst_areas_produccion;
    }

    public String getNombre_e() {
        return nombre_e;
    }

    public void setNombre_e(String nombre_e) {
        this.nombre_e = nombre_e;
    }

    public String getApellidos_e() {
        return apellidos_e;
    }

    public void setApellidos_e(String apellidos_e) {
        this.apellidos_e = apellidos_e;
    }

    public String getEmail_e() {
        return email_e;
    }

    public void setEmail_e(String email_e) {
        this.email_e = email_e;
    }

    public String getDireccion_e() {
        return direccion_e;
    }

    public void setDireccion_e(String direccion_e) {
        this.direccion_e = direccion_e;
    }

    public int getEstado_e() {
        return estado_e;
    }

    public void setEstado_e(int estado_e) {
        this.estado_e = estado_e;
    }

    public String getTelefono_e() {
        return telefono_e;
    }

    public void setTelefono_e(String telefono_e) {
        this.telefono_e = telefono_e;
    }

    public String getUsuario_e() {
        return usuario_e;
    }

    public void setUsuario_e(String usuario_e) {
        this.usuario_e = usuario_e;
    }

    public String getContrasenia_e() {
        return contrasenia_e;
    }

    public void setContrasenia_e(String contrasenia_e) {
        this.contrasenia_e = contrasenia_e;
    }

    public int getId_area_produccion_e() {
        return id_area_produccion_e;
    }

    public void setId_area_produccion_e(int id_area_produccion_e) {
        this.id_area_produccion_e = id_area_produccion_e;
    }

    public int getId_jefe_area_e() {
        return id_jefe_area_e;
    }

    public void setId_jefe_area_e(int id_jefe_area_e) {
        this.id_jefe_area_e = id_jefe_area_e;
    }

    public int getId_persona_e() {
        return id_persona_e;
    }

    public void setId_persona_e(int id_persona_e) {
        this.id_persona_e = id_persona_e;
    }
    
    
    
    
    
    
    // :::::::::::::::::::::::::. lista para jefe planta :::::::::::::::::::::::::::::::::::::::
    public String listar_jefes_areas(){
       try{
           lst_jefe_area.clear();
           String sql_listar = "select id_jefe_area,per.id_persona,are.id_area_produccion,nombre,apellidos,email,usuario,contrasenia,nombre_area,direccion,telefono\n"
                   + " from jefe_de_area jef inner join persona per on jef.id_persona=per.id_persona inner join usuario us on\n"
                   + " per.id_persona = us.id_persona inner join area_produccion are on\n"
                   + "jef.id_area_produccion = are.id_area_produccion group by id_jefe_area;";
           ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_listar);
           while (resultado.next()) {
               jefe_area obj_jefe_areA = new jefe_area();
               obj_jefe_areA.setId_jefe_area(resultado.getInt(1));
               obj_jefe_areA.setId_persona(resultado.getInt(2));
               Area_produccion obj_area = new Area_produccion();
               obj_area.setId_area_produccion(resultado.getInt(3));
               obj_jefe_areA.setNombre(resultado.getString(4));
               obj_jefe_areA.setApellidos(resultado.getString(5));
               obj_jefe_areA.setEmail(resultado.getString(6));
               // campos de usuario
               Usuario obj_user = new Usuario();
               obj_user.setUser(resultado.getString(7));
               obj_user.setPassword(resultado.getString(8));
               obj_jefe_areA.setUsuario(obj_user);
               obj_area.setNombre_area_produccion(resultado.getString(9));
               obj_jefe_areA.setDireccion(resultado.getString(10));
               obj_jefe_areA.setTelefono(resultado.getString(11));
               // enlazar el jefe de area con el area de produccion
               obj_jefe_areA.setObj_area_produccion(obj_area);
               lst_jefe_area.add(obj_jefe_areA);
           }
           return "success";
       }
       catch(SQLException ex){
           JOptionPane.showMessageDialog(null, ex);
          return "error";
       }
        
    }
    // ::::::::::::::::::::::::. actualizar por id :::::::::::::::::::::::::::::::::::::::::::
    
    public String jefe_area_por_id(){
       try{
              String sql_listar = "select id_jefe_area,per.id_persona,are.id_area_produccion,nombre,apellidos,email,usuario,nombre_area\n"
                   + " from jefe_de_area jef inner join persona per on jef.id_persona=per.id_persona inner join usuario us on\n"
                   + " per.id_persona = us.id_persona inner join area_produccion are on\n"
                   + "jef.id_area_produccion = are.id_area_produccion  where id_jefe_area = " +getId_e();
              
           ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_listar);
           while (resultado.next()) {
               obj_jefe_area=new jefe_area();
              //JOptionPane.showMessageDialog(null,resultado.getString(7));
               obj_jefe_area.setId_jefe_area(resultado.getInt(1));
               obj_jefe_area.setId_persona(resultado.getInt(2));
               Area_produccion obj_area = new Area_produccion();
               obj_area.setId_area_produccion(resultado.getInt(3));
               obj_jefe_area.setNombre(resultado.getString(4));
               obj_jefe_area.setApellidos(resultado.getString(5));
               obj_jefe_area.setEmail(resultado.getString(6));
               // campos de usuario
               Usuario obj_user = new Usuario();
               obj_user.setUser(resultado.getString(7));
               obj_jefe_area.setUsuario(obj_user);
               obj_area.setNombre_area_produccion(resultado.getString(8));
               // enlazar el jefe de area con el area de produccion
               obj_jefe_area.setObj_area_produccion(obj_area);
               
           }
           return "success";
       }
       catch(SQLException ex){
         return "error";
       }
    };
    
    
    
    
    ///:::::::::::::::::::::::::::::::::::::::::: configuraciones ::::::::::::::::::::::::::::////
    public String listar_configuracion() {
        try {
            obj_configuracion = new Configuracion();
            String sql_listar = "select * from configuracion";
            ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_listar);
            while (resultado.next()) {
                obj_configuracion.setId_configuracion(resultado.getInt(1));
                obj_configuracion.setCosto_malla(resultado.getDouble(2));
                obj_configuracion.setTipo_cambio_venta(resultado.getDouble(3));
                obj_configuracion.setTipo_cambio_compra(resultado.getDouble(4));
                obj_configuracion.setKilo_por_caja(resultado.getDouble(5));
                obj_configuracion.setCajas_por_pallet(resultado.getInt(6));
                obj_configuracion.setPallet_por_contenedor(resultado.getInt(7));
                obj_configuracion.setPrecio_pallet_mar(resultado.getDouble(8));
                obj_configuracion.setPrecio_pallet_aire(resultado.getDouble(9));
            }
            return "success";
        } catch (SQLException ex) {
            return "error";
        }
    }
    
    public String guardar_configuracion() {
        try {
            String sql= "{call sp_actualizar_configuracion(?, ?, ?, ?, ?, ?, ?,?)}";
            CallableStatement call= BaseConexion.getprepareCall(sql);
            call.setDouble(1,getCosto_malla_e());
            call.setDouble(2,getTipo_cambio_venta_e());
            call.setDouble(3,getTipo_cambio_compra_e());
            call.setDouble(4,getKilo_por_caja_e());
            call.setInt(5,getCajas_por_pallet_e());
            call.setInt(6,getPallet_por_contenedor_e());
            call.setDouble(7,getPrecio_pallet_mar_e());
            call.setDouble(8,getPrecio_pallet_aire_e());
            call.executeUpdate();
            return "success";
        } catch (SQLException ex) {
           
           return "error";
        }
    }
;
    
    // ::::::::::::::::: traer areas de produccion :::::::::::::::::
    
    public String traer_area_produccion() {
        try {
            String sql = "select * from area_produccion";
            ResultSet call = BaseConexion.getStatement().executeQuery(sql);
            while(call.next()){
              Area_produccion obj_area_produc= new Area_produccion();
              obj_area_produc.setId_area_produccion(call.getInt(1));
              obj_area_produc.setNombre_area_produccion(call.getString(2));
              obj_area_produc.setOrden(call.getInt(3));
              obj_area_produc.setEstado(call.getInt(4));
              lst_areas_produccion.add(obj_area_produc);
            };
            return "success";
        } catch (SQLException ex) {

            return "error";
        }

    }
    /*,

in id_persona_e int, in id_jefe_area_e int
    */
    // modificar jefes de areas 
       public String modificar_jefes_are() {
        try {
            String sql= "{call sistema_flp.sp_actualizar_jefes_area(?,?,?,?,?,?,?,?,?,?,?)}";
            CallableStatement call= BaseConexion.getprepareCall(sql);
            call.setString(1,getNombre_e());
            call.setString(2,getApellidos_e());
            call.setString(3,getEmail_e());
            call.setString(4,getDireccion_e());
            call.setInt(5,getEstado_e());
            call.setString(6,getTelefono_e());
            call.setString(7,getUsuario_e());
            call.setString(8,getContrasenia_e());
            call.setInt(9,getId_area_produccion_e());
            call.setInt(10,getId_persona_e());
            call.setInt(11,getId_jefe_area_e());
            call.executeUpdate();
            JOptionPane.showMessageDialog(null,"se envio con existo");
            return "success";
        } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null,"hubo un error "+ ex);
           return "error";
        }
    }
    
    
;
    
    
    
    
}
