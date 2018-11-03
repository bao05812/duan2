package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dangki.bean_dangnhap;
import dangki.bean_getlink;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.RequestBody;

@Controller

public class control_dangnhap {

    private Connection con;
    private ResultSet rs;
    private PreparedStatement pstm;

    @RequestMapping("dangnhap")
    public String login() {
        return "dangnhap";
    }

    @RequestMapping("menu")
    public String dangxuat() {
        return "menu";
    }

    

    @RequestMapping(params = "login_user")
    public String loadtable(ModelMap model, @RequestParam("user") String user) {
        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database";
            con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from banglink where username =?";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            rs = pstm.executeQuery(sql);
            if (rs.next()) {
                String linkdai = rs.getString("ORGINAL_LINK");
                Date tgrut = rs.getDate("DATETIME");
                String linkngan = rs.getString("SHORT_LINK");

            }
            con.close();
            pstm.close();
            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
