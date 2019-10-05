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
public interface service {

    public void saveusers(register r);

    public void savesubject(subject s);

    public List getsubjects();

    public List getuser(String email);

    public List getstudents();

    public List getstaff();

    public void approvestaff(int id);



    public String getStudentname(int id);

    public List notesview();

    public List getsubject(String subject);

    public List getvideo(String sub);

    public List getnote(int id,String subject,String module);

    public void savenote(note n);

    public List getTopics(String sub);

    public List videos(String topic, String subject);

    public List showallvideo(String sub);

    public List getnotes(int id);

    public void savecomment(comment c);

    public List reviewcheck(int id);

    public List getpdf(String sub);

    public List getpdfbyid(int id);

    public List getdoc(String sub);

    public List getdocbyid(int id);

    public List getppt(String sub);

    public void saveseminar(seminar s);

    public List getseminar();

    public List viewseminarbyid(int id);

    public List getallstaff();

    public void saverequest(markrequest m);

    public void update(int mid, String filename);

    public List getmarkstable(int id);

    public void saveassignment(assignment a);

    public String getyear(int id);

    public List getassignments();

    public void saveqpaper(qpapers q);

    public List getqpapers();

    public void savemodule(mweightage m);

    public List checkrepeat(String subject,String year);

    public void updatepercentages(String subject, String year, int mod1, int mod2, int mod3, int mod4);

    public List getfromweights(String year);

    public List getweightage(String subject, String year);

    public void savepropages(propages p);

    public List getprojectmodel();

    public void savechat(chat c);

    public List getChats(String year);

    public List checkdeadline(String date,String year);

    public void savereport(report r);

    public List getreport(int id);

    public void savebook(book b);

    public List getbooks();

    public List getbookbyid(int id);

    public void updateavl(String avl, int book);

    public List getbooksbysubject(String subject);

    
    
    
    
}
