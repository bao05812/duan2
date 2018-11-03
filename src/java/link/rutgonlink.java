package link;
import java.util.Random;
import java.util.Date;
public class rutgonlink {
    public static String getRandomString(int dodai) {
        
        String ketqua = "";
        String shortlink = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm0123456789";
        String randomchuoi = shortlink;
 
        for (int i = 0; i < dodai; i++) {
            int temp = (int) Math.round(Math.random() * randomchuoi.length());
            ketqua += randomchuoi.charAt(temp);
        }
        return ketqua;
}
 
}
