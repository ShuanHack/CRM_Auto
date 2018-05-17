/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valenciav.crm.dao.implement;

import static com.valenciav.crm.dao.implement.PersonaNaturalDAOImpl.LOG;
import com.valenciav.crm.model.Empresa;
import com.valenciav.crm.model.PersonaNatural;
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
public class ClienteDAOImpl {

    static Logger LOG = Logger.getLogger(ClienteDAOImpl.class);

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void registrarPersona(PersonaNatural persona) {
        String query = "insert into personanatural(pn_dni, pn_nombres, pn_apaterno, pn_amaterno, pn_movil, pn_telefono, pn_email, pn_monto) values (?,?,?,?,?,?,?,?)";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        Object[] parametros = new Object[]{persona.getDni(), persona.getNombre(), persona.getaPaterno(), persona.getaMaterno(), persona.getMovil(), persona.getTelefono(), persona.getEmail(), persona.getMonto()};

        try {
            int out = jdbcTemplate.update(query, parametros);

            if (out != 0) {
                LOG.debug("Persona Natural registrada exitosamente -> Datos=[" + persona.toString() + "]");
            }
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en el registro", e);
        }

    }

    public void registrarEmpresa(Empresa empresa) {
        String query = "insert into empresa(emp_ruc, emp_rsocial, emp_tipo, emp_movil, emp_telefono, emp_email, emp_monto) values (?,?,?,?,?,?,?)";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        Object[] parametros = new Object[]{empresa.getRuc(), empresa.getRazonSocial(), empresa.getRubro(), empresa.getMovil(), empresa.getTelefono(), empresa.getEmail(), empresa.getMonto()};

        try {
            int out = jdbcTemplate.update(query, parametros);

            if (out != 0) {
                LOG.debug("Empresa registrada exitosamente -> Datos=[" + empresa.toString() + "]");
            }
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en el registro", e);
        }

    }

    public List<PersonaNatural> obtenerClientesPersona() {

        List<PersonaNatural> lista;

        String query = "select pn_dni, pn_nombres, pn_aPaterno, pn_aMaterno, pn_movil, pn_telefono, pn_email, pn_monto from personanatural";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        try {
            lista = jdbcTemplate.query(query, new RowMapper<PersonaNatural>() {

                @Override
                public PersonaNatural mapRow(ResultSet rs, int rowNum) throws SQLException {
                    PersonaNatural pers = new PersonaNatural(rs.getString("pn_movil"), rs.getString("pn_telefono"), rs.getString("pn_email"), rs.getDouble("pn_monto"));
                    pers.setDni(rs.getString("pn_dni"));
                    pers.setNombre(rs.getString("pn_nombres"));
                    pers.setaPaterno(rs.getString("pn_aPaterno"));
                    pers.setaMaterno(rs.getString("pn_aMaterno"));
                    LOG.debug("Generando instancia de la clase Departamento: --> Datos:[" + pers.toString() + "]");

                    return pers;
                }
            });

            return lista;
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la consulta a base de datos", e);
            return null;
        }
    }

    public List<Empresa> obtenerClientesEmpresas() {

        List<Empresa> lista;

        String query = "select emp_ruc, emp_rSocial, tipoempresa.te_descripcion, emp_movil, emp_telefono, emp_email, emp_monto from empresa inner join tipoempresa where empresa.emp_tipo = tipoempresa.te_id";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        try {
            lista = jdbcTemplate.query(query, new RowMapper<Empresa>() {

                @Override
                public Empresa mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Empresa emp = new Empresa(rs.getString("emp_movil"), rs.getString("emp_telefono"), rs.getString("emp_email"), rs.getDouble("emp_monto"));
                    emp.setRuc(rs.getString("emp_ruc"));
                    emp.setRazonSocial(rs.getString("emp_rSocial"));
                    emp.setRubro(rs.getString("tipoempresa.te_descripcion"));
                    LOG.debug("Generando instancia de la clase Departamento: --> Datos:[" + emp.toString() + "]");

                    return emp;
                }
            });

            return lista;
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la consulta a base de datos", e);
            return null;
        }
    }

    public boolean buscarPersonaByDni(String dni) {
        String query = "select pn_movil, pn_telefono, pn_email, pn_monto from personanatural where pn_dni=?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        try {
            PersonaNatural persona = jdbcTemplate.queryForObject(query, new Object[]{dni}, new RowMapper<PersonaNatural>() {

                @Override
                public PersonaNatural mapRow(ResultSet rs, int rowNum) throws SQLException {
                    PersonaNatural person = new PersonaNatural(rs.getString("pn_movil"), rs.getString("pn_telefono"), rs.getString("pn_email"), rs.getDouble("pn_monto"));
                    LOG.debug("ResultSet: " + rs.getString("pn_movil") + " " + rs.getString("pn_telefono") + " " + rs.getString("pn_email") + " " + rs.getDouble("pn_monto"));
                    LOG.debug("La persona se encuentra registrada: " + person.toString());
                    return person;
                }
            });

            LOG.debug("La persona se encuentra registrada: " + persona.toString());
            return true;
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la consulta a base de datos", e);
            return false;
        }
    }

    public boolean buscarPersonaByRuc(String ruc) {
        String query = "select emp_movil, emp_telefono, emp_email, emp_monto from empresa where emp_ruc=?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        try {
            Empresa empresa = jdbcTemplate.queryForObject(query, new Object[]{ruc}, new RowMapper<Empresa>() {

                @Override
                public Empresa mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Empresa emp = new Empresa(rs.getString("emp_movil"), rs.getString("emp_telefono"), rs.getString("emp_email"), rs.getDouble("emp_monto"));
                    LOG.debug("ResultSet: " + rs.getString("emp_movil") + " " + rs.getString("emp_telefono") + " " + rs.getString("emp_email") + " " + rs.getDouble("emp_monto"));
                    LOG.debug("La persona se encuentra registrada: " + emp.toString());
                    return emp;
                }
            });

            LOG.debug("La persona se encuentra registrada: " + empresa.toString());
            return true;
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la consulta a base de datos", e);
            return false;
        }
    }

    public void editarPersona(PersonaNatural persona) {
        String query = "update personanatural set pn_nombres=?, pn_aPaterno=?, pn_aMaterno=?, pn_movil=?, pn_telefono=?, pn_email=? where pn_dni=?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        Object[] parametros = new Object[]{persona.getNombre(), persona.getaPaterno(), persona.getaMaterno(), persona.getMovil(), persona.getTelefono(), persona.getEmail(), persona.getDni()};

        try {
            int out = jdbcTemplate.update(query, parametros);
            if (out != 0) {
                LOG.debug("Los datos de la Persona con DNI: " + persona.getDni() + " han sido actualizados");
            }
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la actualizacion de datos", e);
        }

    }

    public void editarEmpresa(Empresa empresa) {
        String query = "update empresa set emp_rSocial=?, emp_tipo=?, emp_movil=?, emp_telefono=?, emp_email=? where emp_ruc=?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        Object[] parametros = new Object[]{empresa.getRazonSocial(), empresa.getRubro(), empresa.getMovil(), empresa.getTelefono(), empresa.getEmail(), empresa.getRuc()};

        try {
            int out = jdbcTemplate.update(query, parametros);
            if (out != 0) {
                LOG.debug("Los datos de la Empresa con RUC: " + empresa.getRuc() + " han sido actualizados");
            }
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la actualizacion de datos", e);
        }

    }

    public void eliminarPersonaByDni(String dni) {
        LOG.debug("El cliente con DNI = " + dni );
        String query = "delete from personanatural where pn_dni=?;";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        try {
            int out = jdbcTemplate.update(query, dni);
            LOG.debug("La salida Out es = " + out );
            if (out != 0) {
                LOG.debug("El cliente (Persona) con DNI = " + dni + " ha sido eliminado" );
            }
        } catch (DataAccessException e) {
            LOG.error("Ocurrio un error en la eliminacion del cliente", e);
        }

    }

}
