package com.valenciav.crm.dao.implement;

import com.valenciav.crm.model.Departamento;
import com.valenciav.crm.model.Usuario;
import org.apache.log4j.Logger;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Shuan
 */
public class UsuarioDAOImpl {

    static Logger LOG = Logger.getLogger(UsuarioDAOImpl.class);
    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public Usuario validarUsuario(String id, String password){
        Usuario usuario;

        String query = "select usu_id, usu_password, usu_nombre, usu_aPaterno, usu_aMaterno, usu_departamento from usuario where usu_id= ? and usu_password = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        try {

            usuario = jdbcTemplate.queryForObject(query, new Object[]{id, password}, new RowMapper<Usuario>() {

                @Override
                public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Usuario usuario = new Usuario();
                    usuario.setIdUsiario(rs.getString("usu_id"));
                    usuario.setPassword(rs.getString("usu_password"));
                    usuario.setNombre(rs.getString("usu_nombre"));
                    usuario.setaPaterno(rs.getString("usu_aPaterno"));
                    usuario.setaMaterno(rs.getString("usu_aMaterno"));
                    usuario.setDepartamento(buscarDepartamento(rs.getString("usu_departamento")));
                    return usuario;
                }
            });
            LOG.debug("Generando instancia de la clase Usuario: --> Datos:[" + usuario.toString() + "]");
            return usuario;
        } catch (DataAccessException e) {
            LOG.error("Error en la consulta a base de datos, messagge:[{}]", e);
            return null;
        }
    }
    
    private Departamento buscarDepartamento(String id) {

        String query = "select dep_id, dep_nombre from departamento where dep_id = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        try {
            Departamento departamento = jdbcTemplate.queryForObject(query, new Object[]{id}, new RowMapper<Departamento>() {

                @Override
                public Departamento mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Departamento dep = new Departamento();
                    dep.setIdDepartamento(rs.getString("dep_id"));
                    dep.setNombreDepartamento(rs.getString("dep_nombre"));
                    LOG.debug("Generando instancia de la clase Departamento: --> Datos:[" + dep.toString() + "]");

                    return dep;
                }
            });

            return departamento;
        } catch (DataAccessException e) {
            LOG.error("Error en la consulta a base de datos, messagge:", e);
            return null;
        }
    }
}
