/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Accion_Clientes;

/**
 *
 * @author Rene Jose
 */
import Logica_Negocio.pojos.Paises;
import java.util.List;
import Logica_Negocio.pojos.Producto;
import Logica_Negocio.pojos.TestPrueba;
import conexion.BaseConexion;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.util.LinkedList;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import org.apache.struts2.ServletActionContext;
public class Clientes_Registrar_Pedidos {
   public List<Producto> lst_productos; 
   public List<Paises> lst_paises; 
   Map<String,Object> datos_json=new HashMap<String,Object>();
   // registrar
   //:::::::::::. creaciona de variables para regustrar pedidos
   int maximo_dias_llegada_e;
   String tipo_envio_e;
   int cantidad_contenedores_e;
   int emplea_malla_e;
   double precio_por_kilogramo_e;
   double precio_total_pedido_e;
   String destinatario_e;
   String  direccion_e;
   String  email_e;
   int id_pais_e;
   String region_provincia_e;
   String ciudad_e;
   String codigo_postal_e;
   String telefono_e;
   byte[] archivo_e;
   String observaciones_e;
   int id_cliente_e;
   int id_producto_e;
   
   int id_user_cliente_e;
   File fichero_enviado;
   /*Part fichero_enviado;

    public Part getFichero_enviado() {
        return fichero_enviado;
    }

    public void setFichero_enviado(Part fichero_enviado) {
        this.fichero_enviado = fichero_enviado;
    }
*/

   HttpServletRequest request=ServletActionContext.getRequest();  
   HttpSession session=request.getSession();  
    public int getId_user_cliente_e() {
        return id_user_cliente_e;
    }

    public void setId_user_cliente_e(int id_user_cliente_e) {
        this.id_user_cliente_e = id_user_cliente_e;
    }

   
    public File getFichero_enviado() {
        return fichero_enviado;
    }

    public void setFichero_enviado(File fichero_enviado) {
        this.fichero_enviado = fichero_enviado;
    }

  
   
 
    public Map<String, Object> getDatos_json() {
        return datos_json;
    }

    public void setDatos_json(Map<String, Object> datos_json) {
        this.datos_json = datos_json;
    }
   
   
    public List<Producto> getLst_productos() {
        return lst_productos;
    }
    public void setLst_productos(List<Producto> lst_productos) {
        this.lst_productos = lst_productos;
    }

    public List<Paises> getLst_paises() {
        return lst_paises;
    }

    public void setLst_paises(List<Paises> lst_paises) {
        this.lst_paises = lst_paises;
    }

    public int getMaximo_dias_llegada_e() {
        return maximo_dias_llegada_e;
    }

    public void setMaximo_dias_llegada_e(int maximo_dias_llegada_e) {
        this.maximo_dias_llegada_e = maximo_dias_llegada_e;
    }

    public String getTipo_envio_e() {
        return tipo_envio_e;
    }

    public void setTipo_envio_e(String tipo_envio_e) {
        this.tipo_envio_e = tipo_envio_e;
    }

    public int getCantidad_contenedores_e() {
        return cantidad_contenedores_e;
    }

    public void setCantidad_contenedores_e(int cantidad_contenedores_e) {
        this.cantidad_contenedores_e = cantidad_contenedores_e;
    }

    public int getEmplea_malla_e() {
        return emplea_malla_e;
    }

    public void setEmplea_malla_e(int emplea_malla_e) {
        this.emplea_malla_e = emplea_malla_e;
    }

    public double getPrecio_por_kilogramo_e() {
        return precio_por_kilogramo_e;
    }

    public void setPrecio_por_kilogramo_e(double precio_por_kilogramo_e) {
        this.precio_por_kilogramo_e = precio_por_kilogramo_e;
    }

    public double getPrecio_total_pedido_e() {
        return precio_total_pedido_e;
    }

    public void setPrecio_total_pedido_e(double precio_total_pedido_e) {
        this.precio_total_pedido_e = precio_total_pedido_e;
    }

    public String getDestinatario_e() {
        return destinatario_e;
    }

    public void setDestinatario_e(String destinatario_e) {
        this.destinatario_e = destinatario_e;
    }

    public String getDireccion_e() {
        return direccion_e;
    }

    public void setDireccion_e(String direccion_e) {
        this.direccion_e = direccion_e;
    }

    public String getEmail_e() {
        return email_e;
    }

    public void setEmail_e(String email_e) {
        this.email_e = email_e;
    }

    public int getId_pais_e() {
        return id_pais_e;
    }

    public void setId_pais_e(int id_pais_e) {
        this.id_pais_e = id_pais_e;
    }

    public String getRegion_provincia_e() {
        return region_provincia_e;
    }

    public void setRegion_provincia_e(String region_provincia_e) {
        this.region_provincia_e = region_provincia_e;
    }

    public String getCiudad_e() {
        return ciudad_e;
    }

    public void setCiudad_e(String ciudad_e) {
        this.ciudad_e = ciudad_e;
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

    public byte[] getArchivo_e() {
        return archivo_e;
    }

    public void setArchivo_e(byte[] archivo_e) {
        this.archivo_e = archivo_e;
    }

    public String getObservaciones_e() {
        return observaciones_e;
    }

    public void setObservaciones_e(String observaciones_e) {
        this.observaciones_e = observaciones_e;
    }

    

    public int getId_cliente_e() {
        return id_cliente_e;
    }

    public void setId_cliente_e(int id_cliente_e) {
        this.id_cliente_e = id_cliente_e;
    }

    public int getId_producto_e() {
        return id_producto_e;
    }

    public void setId_producto_e(int id_producto_e) {
        this.id_producto_e = id_producto_e;
    }
    
    
    
   // lsitar los productos para llenar combo 
   public String llenar_combo_productos(){
    // se e,ncesita el id del producto , nombre, precio 
    
   // JOptionPane.showMessageDialog(null,"la ptm las sesiones "+ (String)session.getAttribute("nombre_ususrio") );
   
     lst_productos = new LinkedList<Producto>();
        // sentencia sql 
        try {
            String sql_query = "SELECT `id_producto`,`nombre`,`descripcion`,`peso`,`tipo_caja`,"
                    + "`precio_por_kilo` FROM `producto` where `estado`=1";
            ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_query);
             
            while (resultado.next()) {
                Producto obj_productos= new Producto();
                obj_productos.setId_producto(resultado.getInt(1));
                obj_productos.setNombre(resultado.getString(2));
                obj_productos.setDescipcion(resultado.getString(3));
                obj_productos.setPeso(resultado.getDouble(4));
                obj_productos.setTipo_caja(resultado.getString(5));
                obj_productos.setPrecio_por_kilo(resultado.getDouble(6));
                lst_productos.add(obj_productos);
            }
           // datos_json.put("lista_productos",lst_productos);
        } catch (SQLException ex) {
            System.out.println("excepcion: " + ex);
             JOptionPane.showMessageDialog(null,ex);
        }
       return "success";
   }
   
   //  listar todos los productos activos 
    public String listar_productos(){
        lst_productos = new LinkedList<Producto>();
        // sentencia sql 
        try {
            String sql_query = " select * from producto where estado= 1";
            ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_query);
            while (resultado.next()) {
                Producto obj_productos= new Producto();
                obj_productos.setId_producto(resultado.getInt(1));
                obj_productos.setNombre(resultado.getString(2));
                obj_productos.setDescipcion(resultado.getString(resultado.getString(3)));
                obj_productos.setPeso(resultado.getDouble(4));
                obj_productos.setFecha_registro(resultado.getDate(5));
                obj_productos.setFecha_publicacion(resultado.getDate(6));
                obj_productos.setTipo_caja(resultado.getString(7));
                obj_productos.setFoto(resultado.getBytes(8));
                obj_productos.setCalificacion(resultado.getInt(9));
                obj_productos.setPrecio_por_kilo(resultado.getDouble(10));
                lst_productos.add(obj_productos);
            }

        } catch (SQLException ex) {
            System.out.println("excepcion: " + ex);
        }
        
       return "succes";
    }
    
     // lsitar los productos para llenar combo 
   public String llenar_combo_paises(){
    // se e,ncesita el id del producto , nombre, precio 
     lst_paises = new LinkedList<Paises>();
        // sentencia sql 
        try {
            String sql_query = "select * from paises where estado=1";
            ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_query);
             
            while (resultado.next()) {
                Paises obj_productos= new Paises();
                obj_productos.setId_paises(resultado.getInt(1));
                obj_productos.setNombre_paises(resultado.getString(2));
                obj_productos.setMax_dias_llegada(resultado.getInt(3));
                obj_productos.setMin_dias_llegada(resultado.getInt(4));
                lst_paises.add(obj_productos);
            }
           // datos_json.put("lista_productos",lst_productos);
        } catch (SQLException ex) {
            System.out.println("excepcion: " + ex);
             JOptionPane.showMessageDialog(null,ex);
        }
       return "success";
   }
    
  //::::::: regsitar pedidos :::
   /*
   
   <{in archivo_e blob}>, <{in observaciones_e varchar(200)}>, <{in id_cliente_e int}>,
   <{in id_producto_e int}>);
   */
    public String registrar_pedido(){
      String sql="{call sp_registrar_pedidos(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"; 
      CallableStatement result=BaseConexion.getprepareCall(sql);
      try{
          //input = new FileInputStream(new File(file));
         
          result.setInt(1, getMaximo_dias_llegada_e());
          result.setString(2, getTipo_envio_e());
          result.setInt(3, getCantidad_contenedores_e());
          result.setInt(4,getEmplea_malla_e());
          result.setDouble(5,getPrecio_por_kilogramo_e());
          result.setDouble(6,getPrecio_total_pedido_e());
          result.setString(7,getDestinatario_e());
          result.setString(8,getDireccion_e());
          result.setString(9,getEmail_e());
          result.setInt(10,getId_pais_e());
          result.setString(11,getRegion_provincia_e());
          result.setString(12,getCiudad_e());
          result.setString(13,getCodigo_postal_e());
          result.setString(14,getTelefono_e());
          //Part InputStream = getFichero_enviado(); //this line is not needed at all
          FileInputStream in;
          try {
              in = new FileInputStream(getFichero_enviado());
               JOptionPane.showMessageDialog(null,"tamaño es "+ getFichero_enviado().length());
         //result.setBinaryStream(15, in,(int) getFichero_enviado().length());
         result.setBlob(15, in);
          } catch (FileNotFoundException ex) {
               JOptionPane.showMessageDialog(null,ex);
          }
          //result.setBlob(15, (Blob) InputStream);
          result.setString(16,getObservaciones_e());
          // id_cliente_e , id_producto_e
          result.setInt(17, getId_user_cliente_e());
          result.setInt(18, getId_producto_e());
       //   result.setBlob(15, getArchivo_e());
          result.executeUpdate();
       
        return "success";
      }
      catch(SQLException ex){
         JOptionPane.showMessageDialog(null, ex);
      }
      
      return "error";
    };   
    
     public String test_prueba(){
      FileInputStream input = null;  
        
      //String sql="{call sp_registrar_pedidos(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"; 
      //CallableStatement result=BaseConexion.getprepareCall(sql);
      
          //input = new FileInputStream(new File(file));
          /*
          result.setInt(1, getMaximo_dias_llegada_e());
          result.setString(2, getTipo_envio_e());
          result.setInt(3, getCantidad_contenedores_e());
          result.setInt(4,getEmplea_malla_e());
          result.setDouble(5,getPrecio_por_kilogramo_e());
          result.setDouble(6,getPrecio_total_pedido_e());
          result.setString(7,getDestinatario_e());
          result.setString(8,getDireccion_e());
          result.setString(9,getEmail_e());
          result.setInt(10,getId_pais_e());
          result.setString(11,getRegion_provincia_e());
          result.setString(12,getCiudad_e());
          result.setString(13,getCodigo_postal_e());
          result.setString(14,getTelefono_e());*/
       //   result.setBlob(15, getArchivo_e());
       
      return "success";
    };
    
    
       // lsitar los productos para llenar combo 
   public String traer_is_cliente(){
    // se e,ncesita el id del producto , nombre, precio 
     lst_paises = new LinkedList<Paises>();
        // sentencia sql 
        try {
            String sql_query = "select id_cliente from usuario us inner join persona"
                    + " per on us.id_persona= per.id_persona\n" +
                "inner join cliente cli on per.id_persona=cli.id_persona where us.id_usuario= "+session.getAttribute("id_usuario");
            ResultSet resultado = BaseConexion.getStatement().executeQuery(sql_query);
             
            while (resultado.next()) {
                setId_user_cliente_e(resultado.getInt(1));
            }
           // datos_json.put("lista_productos",lst_productos);
        } catch (SQLException ex) {
            System.out.println("excepcion: " + ex);
             JOptionPane.showMessageDialog(null,ex);
        }
       return "success";
   }
     
     
     
}
