
package dangki;

public class bean_getlink {
    private String linkdai;
    private String shortlink;
    private String ID_user;
    private String datetime;

    public bean_getlink(String linkdai, String shortlink, String datetime) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getID_user() {
        return ID_user;
    }

    public void setID_user(String ID_user) {
        this.ID_user = ID_user;
    }

    public String getLinkdai() {
        return linkdai;
    }

    public void setLinkdai(String linkdai) {
        this.linkdai = linkdai;
    }

    public String getShortlink() {
        return shortlink;
    }

    public void setShortlink(String shortlink) {
        this.shortlink = shortlink;
    }

}
