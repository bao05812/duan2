
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import link.rutgonlink;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class control_chuyenlink {
    private Connection conn;
    private ResultSet rs;
    private PreparedStatement pstm;
    
    
        
    @RequestMapping(params ="getshort")
    public String login(ModelMap model, @RequestParam("linkdai") String linkdai,
            @RequestParam("shortlink") String shortlink) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database";
             conn = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into banglink values(?,?,?,?,?)";
             pstm = conn.prepareStatement(sql);
            pstm.setString(1, null);
            pstm.setString(2, shortlink);
            pstm.setString(3, linkdai);            
            pstm.setString(4, shortlink);            
            pstm.setString(5, null);
            pstm.executeUpdate();
            
            model.addAttribute("message","Link rút gọn của bạn: ");
            model.addAttribute("linkngan","san.ro/"+shortlink);
            model.addAttribute("linkdaj",linkdai);
        } catch (Exception e) {
            e.printStackTrace();
        }
    return "menu"; 
    }
      @RequestMapping(params ="getshort1")
    public String login1(ModelMap model, @RequestParam("linkdai") String linkdai,
            @RequestParam("shortlink") String shortlink) {
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database";
             conn = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into banglink values(?,?,?,?,?)";
             pstm = conn.prepareStatement(sql);
            pstm.setString(1, null);
            pstm.setString(2, shortlink);
            pstm.setString(3, linkdai);            
            pstm.setString(4, shortlink);            
            pstm.setString(5, null);
            pstm.executeUpdate();
            
            model.addAttribute("message1","Link rút gọn của bạn: ");
            model.addAttribute("linkngan1","san.ro/"+shortlink);
            model.addAttribute("linkdaj1",linkdai);
        } catch (Exception e) {
            e.printStackTrace();
        }
    return "login_user"; 
    } 
    @RequestMapping(params = "btnlogin")
    public String login2(ModelMap model, @RequestParam("id") String id,
            @RequestParam("password") String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database";
            conn = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from bangdangki where Username=? and Password_user =?";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, id);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            if (rs.next()) {
                
                model.addAttribute("user", id);
                int lv = rs.getInt("lv");
                if (lv == 0) {
                    return "login_user";
                } else if (lv == 1) {
                    return "quanlylink";
                }
                
            } 
            pstm.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    }

