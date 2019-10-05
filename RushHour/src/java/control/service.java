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
    
    
    
}
