
import com.valenciav.crm.dao.implement.UsuarioDAOImpl;
import com.valenciav.crm.model.Cliente;
import java.util.List;
import javax.sql.DataSource;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.valenciav.crm.dao.ClienteDAO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Shuan
 */
public class Main {
    
    public static void main(String[] args) {
        int num = 1;
        
//        String longitud = String.valueOf(num);
        String nueva = String.format("%05d", num);
        
//        for (int i = longitud.length(); i <= 10; i++) {
//            longitud += "0";
//        }
        
        System.out.println(nueva);
    }
}
