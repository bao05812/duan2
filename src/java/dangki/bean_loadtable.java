//
//package dangki;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.PreparedStatement;
//import java.util.ArrayList;
//import java.util.List;
//import org.springframework.stereotype.Controller;
//@Controller
//public class bean_loadtable {
//    public bean_loadtable() {
//    }
//    private Connection con;
//    private ResultSet rs;
//    private PreparedStatement pstm;
////    C
//    public String showProduct(){
//        try {
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=duan2_database";
//            con = DriverManager.getConnection(url, "sa", "123");
//            String sql = "select * from banglink where Username=? ";
//            pstm = con.prepareStatement(sql);
//            pstm.setString(1, "2");
//           
//            rs = pstm.executeQuery();
//            if (rs.next()) {
//                model.addAttribute("message", "Login Success");
//                model.addAttribute("user", id);
//                return "login_user";
//            con.close();
//            pstm.close();
//            rs.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
//}
