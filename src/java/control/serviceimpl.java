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

    @Override
    public void saveseminar(seminar s) {
        sd.saveseminar(s);
    }

    @Override
    public List getseminar() {
        return sd.getseminar();
    }

    @Override
    public List viewseminarbyid(int id) {
        return sd.viewseminarbyid(id);
    }

    @Override
    public List getallstaff() {
        return sd.getallstaff();
    }

    @Override
    public void saverequest(markrequest m) {
        sd.saverequest(m);
    }

    @Override
    public void update(int mid, String filename) {
        sd.update(mid,filename);
    }

    @Override
    public List getmarkstable(int id) {
        return sd.getmarkstable(id);
    }

    @Override
    public void saveassignment(assignment a) {
        sd.saveassignment(a);
    }

    @Override
    public String getyear(int id) {
        return sd.getyear(id);
    }

    @Override
    public List getassignments() {
        return sd.getassignments();
    }

    @Override
    public void saveqpaper(qpapers q) {
       sd.saveqpaper(q);
    }

    @Override
    public List getqpapers() {
        return sd.getpapers();
    }

    @Override
    public void savemodule(mweightage m) {
       sd.savemodule(m);
    }

    @Override
    public List checkrepeat(String subject,String year) {
       return sd.checkrepeat(subject,year);
    }

    @Override
    public void updatepercentages(String subject, String year, int mod1, int mod2, int mod3, int mod4) {
        sd.updatepercentages(subject,year,mod1,mod2,mod3,mod4);
    }

    @Override
    public List getfromweights(String year) {
        return sd.getfromweights(year);
    }

    @Override
    public List getweightage(String subject, String year) {
        return sd.getweightage(subject,year);
    }

    @Override
    public void savepropages(propages p) {
        sd.savepropages(p);
    }

    @Override
    public List getprojectmodel() {
        return sd.getprojectmodel();
    }

    @Override
    public void savechat(chat c) {
        sd.savechat(c);
    }

    @Override
    public List getChats(String year) {
        return sd.getChats(year);
    }

    @Override
    public List checkdeadline(String date,String year) {
        return sd.checkdeadline(date,year);
    }

    @Override
    public void savereport(report r) {
            sd.savereport(r);
    }

    @Override
    public List getreport(int id) {
    
        return sd.getreport(id);
    }

    @Override
    public void savebook(book b) {
        sd.savebook(b);
    }

    @Override
    public List getbooks() {
        return sd.getbooks();
    }

    @Override
    public List getbookbyid(int id) {
        return sd.getbookbyid(id);
    }

    @Override
    public void updateavl(String avl, int book) {
        sd.updateavl(avl,book);
    }

    @Override
    public List getbooksbysubject(String subject) {
        return sd.getbooksbysubject(subject);
    }

  
    
}
