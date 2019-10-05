    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

/**
 *
 * @author acer
 */
public class markrequest {
    
    private int id;
    private int userid;
    private int staffid;
    private String requeststatus;
    private String filename;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the userid
     */
    public int getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }

    /**
     * @return the staffid
     */
    public int getStaffid() {
        return staffid;
    }

    /**
     * @param staffid the staffid to set
     */
    public void setStaffid(int staffid) {
        this.staffid = staffid;
    }

    /**
     * @return the requeststatus
     */
    public String getRequeststatus() {
        return requeststatus;
    }

    /**
     * @param requeststatus the requeststatus to set
     */
    public void setRequeststatus(String requeststatus) {
        this.requeststatus = requeststatus;
    }

    /**
     * @return the filename
     */
    public String getFilename() {
        return filename;
    }

    /**
     * @param filename the filename to set
     */
    public void setFilename(String filename) {
        this.filename = filename;
    }
}
