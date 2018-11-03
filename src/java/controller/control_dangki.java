
package controller;
import dangki.bean_dangki;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class control_dangki {
    private Connection conn;
    private ResultSet rs;
    private PreparedStatement pstm;
    @RequestMapping("dangki")
    public String load_trangdngki(){
    return "dangki";
    }
    @RequestMapping(params = "btndangki")
    public String insert(ModelMap model, 
            @RequestParam("username") String id,
            @RequestParam("password_user") String password,
            @RequestParam("mail_name") String mail) {
        try {
               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost;databaseName=duan2_database";
             conn = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into bangdangki values (?,?,?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, null);
            pstm.setString(2, id);
            pstm.setString(3, password);
            pstm.setString(4, mail);
            pstm.setString(5, null);
            pstm.setInt(6, 0);
            pstm.executeUpdate();
            pstm.close();
            conn.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return "dangnhap";
    }
}
