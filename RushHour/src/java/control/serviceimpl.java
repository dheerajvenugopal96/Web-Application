/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.List;

/**
 *
 * @author acer
 */
public class serviceimpl implements service{
    
    private dao sd;

    /**
     * @return the sd
     */
    public dao getSd() {
        return sd;
    }

    /**
     * @param sd the sd to set
     */
    public void setSd(dao sd) {
        this.sd = sd;
    }

    @Override
    public void saveusers(register r) {
        sd.saveusers(r);
    }

    @Override
    public void savesubject(subject s) {
        sd.savesubject(s);
    }

    @Override
    public List getsubjects() {
        return sd.getsubjects();
    }

    @Override
    public List getuser(String email) {
        return sd.getuser(email);
    }

    @Override
    public List getstudents() {
        return sd.getstudents();
    }

    @Override
    public List getstaff() {
        return sd.getstaff();
    }

    @Override
    public void approvestaff(int id) {
        sd.approvestaff(id);
    }



    @Override
    public String getStudentname(int id) {
        return sd.getStudentname(id);
    }

    @Override
    public List notesview() {
        
        return sd.notesview();
    }

    @Override
    public List getsubject(String subject) {
        return sd.getsubject(subject);
    }

    @Override
    public List getvideo(String sub) {
        return sd.getvideo(sub);
    }

    @Override
    public List getnote(int id,String subject,String module) {
        return sd.getnote(id,subject,module);
    }

    @Override
    public void savenote(note n) {
        sd.savenote(n);
    }

    @Override
    public List getTopics(String sub) {
        return sd.getTopics(sub);
    }

    @Override
    public List videos(String topic, String subject) {
        return sd.videos(topic,subject);
    }

    @Override
    public List showallvideo(String sub) {
        return sd.showallvideos(sub);
    }

    @Override
    public List getnotes(int id) {
        return sd.getnotes(id);
    }

    @Override
    public void savecomment(comment c) {
        sd.savecomment(c);
    }

    @Override
    public List reviewcheck(int id) {
        return sd.reviewcheck(id);
    }

    @Override
    public List getpdf(String sub) {
        
        return sd.getpdf(sub);
    }

    @Override
    public List getpdfbyid(int id) {
        return sd.getpdfbyid(id);
    }

    @Override
    public List getdoc(String sub) {
        return sd.getdoc(sub);
    }

    @Override
    public List getdocbyid(int id) {
    
        return sd.getdocbyid(id);
    }

    @Override
    public List getppt(String sub) {
        return sd.getppt(sub);
    }
    
}
