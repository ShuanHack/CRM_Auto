///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.valenciav.crm.dao.implement;
//
//import com.valenciav.crm.dao.ClienteDAO;
//import com.valenciav.crm.model.PersonaNatural;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.List;
//import javax.sql.DataSource;
//import org.apache.log4j.Logger;
//import org.springframework.dao.DataAccessException;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//
///**
// *
// * @author Shuan
// */
//public class EmpresaDAOImpl implements ClienteDAO{
//    static Logger LOG = Logger.getLogger(EmpresaDAOImpl.class);  
//    private DataSource dataSource;
//
//    public void setDataSource(DataSource dataSource) {
//        this.dataSource = dataSource;
//    }
//
//    @Override
//    public void registrar(EmpresaDAOImpl persona) {
//        String query = "insert into PersonaNatural (pn_dni, pn_nombres, pn_aPaterno, pn_aMaterno, pn_movil, pn_telefono, pn_email, pn_monto) values (?,?,?,?,?,?,?,?)";
//
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//
//        Object[] parametros = new Object[]{persona.getDni(), persona.getNombre(), persona.getaPaterno(), persona.getaMaterno(), persona.getMovil(), persona.getTelefono(), persona.getEmail(), persona.getMonto()};
//
//        try {
//            int out = jdbcTemplate.update(query, parametros);
//
//            if (out != 0) {
//                LOG.debug("Cliente registrado con DNI/RUC =" + persona.getDni());
//            } else {
//                LOG.debug("No se pudo registrar al cliente");
//            }
//        } catch (DataAccessException e) {
//            e.printStackTrace();
//        }
//        
//        
//    }
//    
//    public List<PersonaNatural> obtenerClientes() {
//        
//        List<PersonaNatural> lista;
//
////        String query = "select dep_id, dep_nombre from departamento where dep_id = ?";
//        String query = "select pn_dni, pn_nombres, pn_aPaterno, pn_aMaterno, pn_movil, pn_telefono, pn_email, pn_monto from personanatural";
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//        try {
//            lista = jdbcTemplate.query(query, new RowMapper<PersonaNatural>() {
//
//                @Override
//                public PersonaNatural mapRow(ResultSet rs, int rowNum) throws SQLException {
//                    PersonaNatural dep = new PersonaNatural(rs.getString("pn_movil"), rs.getString("pn_telefono"), rs.getString("pn_email"), rs.getDouble("pn_monto"));
//                    dep.setDni(rs.getString("pn_dni"));
//                    dep.setNombre(rs.getString("pn_nombres"));
//                    dep.setaPaterno(rs.getString("pn_aPaterno"));
//                    dep.setaMaterno(rs.getString("pn_aMaterno"));
//                    LOG.debug("Generando instancia de la clase Departamento: --> Datos:[" + dep.toString() + "]");
//
//                    return dep;
//                }
//            });
//
//            return lista;
//        } catch (DataAccessException e) {
//            LOG.error("Error en la consulta a base de datos, messagge:", e);
//            return null;
//        }
//    }
//
//    @Override
//    public PersonaNatural buscarById(String id) {
////        String query = "select cli_id, cli_nombres, cli_aPaterno, cli_aMaterno, cli_monto from Cliente where cli_id = ?";
////        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
////
////        //using RowMapper anonymous class, we can create a separate RowMapper for reuse
////        Cliente cliente = jdbcTemplate.queryForObject(query, new Object[]{id}, new RowMapper<Cliente>() {
////
////            @Override
////            public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
//////                Cliente cliente = new Cliente(rs.getString("cli_id"), rs.getString("cli_nombres"), rs.getString("cli_aPaterno"), rs.getString("cli_aMaterno"), null);
////                Cliente cliente = new Cliente();
////                cliente.setId(rs.getString("cli_id"));
////                cliente.setNombres(rs.getString("cli_nombres"));
////                cliente.setaPaterno(rs.getString("cli_aPaterno"));
////                cliente.setaMaterno(rs.getString("cli_aMaterno"));
//////                cliente.setMontoAcumulado(rs.getDouble("cli_monto"));
//////                cliente.setEmpresa(rs.getObject("ruc_empresa", Empresa.class));
////
////                return cliente;
////            }
////        });
//
////        return cliente;
//        return null;
//    }
//
//    @Override
//    public void editar(PersonaNatural persona) {
////        String query = "update Cliente set cli_nombres=?, cli_aPaterno=?, cli_aMaterno=?, cli_monto=? where cli_id=?";
////        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
////        Object[] parametros = new Object[]{persona.getNombres(), persona.getaPaterno(), persona.getaMaterno(), persona.getMontoAcumulado(), persona.getId()};
////
////        int out = jdbcTemplate.update(query, parametros);
////        if (out != 0) {
////            System.out.println("Cliente actualizado con DNI/RUC = " + persona.getId());
////        } else {
////            System.out.println("Cliente no pdo ser actualizado");
////        }
//    }
//
//    @Override
//    public void eliminarById(String id) {
//        String query = "delete from Cliente where cli_id=?";
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//
//        int out = jdbcTemplate.update(query, id);
//        if (out != 0) {
//            System.out.println("Cliente eliminado");
//        } else {
//            System.out.println("No se pudo eliminaar al cliente");
//        }
//    }
////
////    @Override
////    public List<Cliente> listar() {
////
////    }
//}
