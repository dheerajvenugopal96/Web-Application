/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.CriteriaQuery;
import org.springframework.orm.hibernate3.HibernateTemplate;

/**
 *
 * @author acer
 */
public class daoimpl implements dao {
    
    private HibernateTemplate hb;

    /**
     * @return the hb
     */
    public HibernateTemplate getHb() {
        return hb;
    }

    /**
     * @param hb the hb to set
     */
    public void setHb(HibernateTemplate hb) {
        this.hb = hb;
    }

    @Override
    public void saveusers(register r) {
        hb.save(r);
    }

    @Override
    public void savesubject(subject s) {
       hb.save(s);
    }

    @Override
    public List getsubjects() {
        List li=hb.find("from subject s");
        return li;
    }

    @Override
    public List getuser(String email) {
        List li=hb.find("from register r where r.email=?",email);
        return li;
        
    }

    @Override
    public List getstudents() {
        List li=hb.find("from register r where r.category='student'");
        return li;
    }

    @Override
    public List getstaff() {
        List li=hb.find("from register r where r.category='staff' and r.aprstats='pending'");
        return li;
        
    }

    @Override
    public void approvestaff(int id) {
        SessionFactory sf=hb.getSessionFactory();
        Session ses=sf.openSession();
        Transaction t=ses.beginTransaction();
        String query="update register r set r.aprstats='approved' where r.id= :a";
        Query q=ses.createQuery(query);
        q.setParameter("a", id);
        q.executeUpdate();
        t.commit();
        ses.close();
        
    }



    @Override
    public String getStudentname(int id) {
        
        SessionFactory sf=hb.getSessionFactory();
        Session ses=sf.openSession();
        Transaction t=ses.beginTransaction();
        String query="select r.fname from register r where r.id= :a";
        String query2="select r.lname from register r where r.id= :b";
        Query q=ses.createQuery(query);
        Query q2=ses.createQuery(query2);
        q.setParameter("a", id);
        q2.setParameter("b", id);
        String fname=(String) q.uniqueResult();
        String lname=(String) q2.uniqueResult();
        String result=fname+" "+lname;
        t.commit();
        ses.close();
        return result;
       
        
    }

    @Override
    public List notesview() {

        List li=hb.find("from note n where n.id=1");
        return li;
    }

    @Override
    public List getsubject(String subject) {
        List li=hb.find("from note n where n.subname=?",subject);
        return li;
    }

    @Override
    public List getvideo(String sub) {
        
        List li=hb.find("from note n where n.notetype='video' and n.subname=? group by n.topic",sub); 
        return li;
    }

    @Override
    public List getnote(int id,String subject,String module) {
        SessionFactory sf=hb.getSessionFactory();
        Session ses=sf.openSession();
        Transaction t=ses.beginTransaction();
        String query="from note n where n.id= :a and  n.subname= :b and n.module= :c";
        Query q=ses.createQuery(query);
        q.setParameter("a", id);
        q.setParameter("b", subject);
        q.setParameter("c", module);
        List li=q.list();
        t.commit();
        ses.close();
        return li;
    }

    @Override
    public void savenote(note n) {
        hb.save(n);
    }

    @Override
    public List getTopics(String sub) {
        
        List li=hb.find("from note n where n.subname=?",sub);
        return li;
    }

    @Override
    public List videos(String topic, String subject) {
        List li=hb.find("from note n where n.notetype='video' and n.topic=? and n.subname=?",topic,subject);
        return li;
    }

    @Override
    public List showallvideos(String sub) {
        List li=hb.find("from note n where n.notetype='video' and n.subname=?",sub);
        return li;
    }

    @Override
    public List getnotes(int id) {
       List li=hb.find("from note n where n.id=?",id);
       return li;
    }

    @Override
    public void savecomment(comment c) {
        hb.save(c);
    }

    @Override
    public List reviewcheck(int id) {
        SessionFactory sf=hb.getSessionFactory();
        Session ses=sf.openSession();
        Transaction t=ses.beginTransaction();
        String query="from comment c where c.sid= :a";
        Query q=ses.createQuery(query);
        q.setParameter("a", id);
        List li=q.list();
        return li;
        
    }

    @Override
    public List getpdf(String sub) {
        List li=hb.find("from note n where n.notetype='pdf' and n.subname=?",sub);
        return li;
    }

    @Override
    public List getpdfbyid(int id) {
        List li=hb.find("from note n where n.id=?",id);
        return li;
    }

    @Override
    public List getdoc(String sub) {
        List li=hb.find("from note n where n.notetype='doc' and n.subname=?",sub);
        return li;
    }

    @Override
    public List getdocbyid(int id) {
        List li=hb.find("from note n where n.id=?",id);
        return li;
    }

    @Override
    public List getppt(String sub) {
         List li=hb.find("from note n where n.notetype='ppt' and n.subname=?",sub);
        return li;
    }
    
}
