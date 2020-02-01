/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AccionSecretaria;

/**
 *
 * @author Rene Jose
 */
import java.util.List;
import java.util.LinkedList;
import java.sql.ResultSet;
import conexion.BaseConexion;
import Logica_Negocio.pojos.Pedido;
import java.sql.CallableStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
public class ListaPedidosPendientes {
    List<Pedido> lst_pedidos_pendientes= new LinkedList<Pedido>();
    public String lst_pedi_pendientes(){
        String sql= "{call sp_listado_pedido_poraprobar()}";
        CallableStatement resultado=BaseConexion.getprepareCall(sql);
        try{
            ResultSet result= resultado.getResultSet();
           while(result.next()){
              // crear un objeto Pedido
              Pedido obj_pedido= new Pedido();
              obj_pedido.setCodigo_pedido(result.getString(1));
              obj_pedido.setNombre_producto(result.getString(2));
              obj_pedido.setFecha(result.getDate(3));
              obj_pedido.setDias_restantes(result.getInt(4));
              obj_pedido.setDestinatario(result.getString(5));
              obj_pedido.setPregunta(result.getString(6));
              obj_pedido.setId_pedido(result.getInt(7));
              obj_pedido.setTipo_envio(String.valueOf(result.getInt(8)));
              obj_pedido.setCantidad_contenedores(result.getInt(9));
              obj_pedido.setEmplea_malla(result.getInt(10));
              obj_pedido.setPrecio_por_kilogramo(result.getDouble(11));
              obj_pedido.setPrecio_total_pedido(result.getDouble(12));
              obj_pedido.setDireccion(result.getString(13));
              obj_pedido.setId_pais(result.getInt(14));
              obj_pedido.setRegion_provincias(result.getString(15));
              obj_pedido.setCiudad(result.getString(16));
              obj_pedido.setId_cliente(result.getInt(17));
              obj_pedido.setId_producto(result.getInt(18));
              lst_pedidos_pendientes.add(obj_pedido);
           } 
           return "success";
        }
        catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
            return "error";
        }
        
    }
    
}
