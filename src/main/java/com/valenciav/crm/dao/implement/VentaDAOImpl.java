/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.dao.implement;

import static com.valenciav.crm.dao.implement.PersonaNaturalDAOImpl.LOG;
import com.valenciav.crm.model.PersonaNatural;
import com.valenciav.crm.model.Venta;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Shuan
 */
public class VentaDAOImpl {
    
    static Logger LOG = Logger.getLogger(PersonaNaturalDAOImpl.class);  
    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public List<Venta> obtenerVentasPersonas() {
        
        List<Venta> lista;

        String query = "select ven_id, usu_id, ven_persona, ven_fecha, ven_itotal, ven_gtotal from venta where ven_persona is not null";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        try {
            lista = jdbcTemplate.query(query, new RowMapper<Venta>() {

                @Override
                public Venta mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Venta ven = new Venta();
                    ven.setIdVenta(String.format("%05d", rs.getInt("ven_id")));
                    ven.setIdUsuario(rs.getString("usu_id"));
                    ven.setClientePersona(rs.getString("ven_persona"));
                    ven.setFechaVenta(rs.getString("ven_fecha"));
                    ven.setImporteTotal(rs.getDouble("ven_itotal"));
                    ven.setGananciaTotal(rs.getDouble("ven_gtotal"));
                    
                    LOG.debug("Generando instancia de la clase Ventas: --> Datos:[" + ven.toString() + "]");

                    return ven;
                }
            });

            return lista;
        } catch (DataAccessException e) {
            LOG.error("Error en la consulta a base de datos, messagge:", e);
            return null;
        }
    }
    
    
    public List<Venta> obtenerVentasEmpresas() {
        
        List<Venta> lista;

        String query = "select ven_id, usu_id, ven_empresa, ven_fecha, ven_itotal, ven_gtotal from venta where ven_empresa is not null";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        try {
            lista = jdbcTemplate.query(query, new RowMapper<Venta>() {

                @Override
                public Venta mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Venta ven = new Venta();
                    ven.setIdVenta(String.format("%05d", rs.getInt("ven_id")));
                    ven.setIdUsuario(rs.getString("usu_id"));
                    ven.setClienteEmpresa(rs.getString("ven_empresa"));
                    ven.setFechaVenta(rs.getString("ven_fecha"));
                    ven.setImporteTotal(rs.getDouble("ven_itotal"));
                    ven.setGananciaTotal(rs.getDouble("ven_gtotal"));
                    
                    LOG.debug("Generando instancia de la clase Ventas: --> Datos:[" + ven.toString() + "]");

                    return ven;
                }
            });

            return lista;
        } catch (DataAccessException e) {
            LOG.error("Error en la consulta a base de datos, messagge:", e);
            return null;
        }
    }
    
}
