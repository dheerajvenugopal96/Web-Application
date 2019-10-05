/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author acer
 */

@Controller
public class NavControl {
    
    @Autowired service se;
    @RequestMapping(value="home.html",method=RequestMethod.GET)
    public String gethome(ModelMap m)
    {
        List li=se.getsubjects();
        m.put("list", li);
        return "home";
    }
    
    @RequestMapping(value="reg.html",method=RequestMethod.POST)
    public String reg(@RequestParam String category,@RequestParam String fname,@RequestParam String lname,@RequestParam String email,@RequestParam String phone,@RequestParam String password,@RequestParam String year,@RequestParam String subject)
    {
        register r =new register();
        r.setFname(fname);
        
        r.setLname(lname);
        r.setEmail(email);
        r.setMobile(phone);
        r.setPass(password);
        r.setYear(year);
        if(category.equals("staff"))
        {
            r.setCategory("staff");   
            r.setAprstats("pending");
            r.setSubject(subject);
        }
         
        else
        {
            r.setCategory("student");
            r.setAprstats("n/a");
            r.setSubject("n/a");
        }
        
        se.saveusers(r);
        return "redirect:home.html";
    }
    
    @RequestMapping(value="admin.html",method=RequestMethod.GET)
    public String getadmin()
    {
        return "admin";
    }
    
    @RequestMapping(value="login.html",method=RequestMethod.POST)
    public String login(@RequestParam String email,@RequestParam String password,HttpSession ses,ModelMap m)
    {
        
        List li=se.getuser(email);
        Iterator it=li.iterator();
       
        if(email.equals("admin")&& password.equals("admin"))
        {
            return "redirect:admin.html";
        }
        
         if(li.isEmpty())
        {
            m.put("msg", "no");
            return "home";
        }
         else
         {
            
             while(it.hasNext())
             {
                  register r =(register) it.next();
                  String em=r.getEmail();
                  String pas=r.getPass();
                  String cat=r.getCategory();
                  String apr=r.getAprstats();
                  if(em.equals(email)&&pas.equals(password)&&cat.equals("student"))
                  {
                      ses.setAttribute("idd", r.getId());
                      return "redirect:home.html";
                      
                  }
                  else if(em.equals(email)&&pas.equals(password)&&cat.equals("staff"))
                  {
                      if(apr.equals("pending"))
                      {
                          m.put("msgstaff","no");
                          return "home";
                      }
                      else
                      {
                          ses.setAttribute("idd", r.getId());
                      return "redirect:home.html";
                      }
                      
                  }
                      
                  else
                  {
                      m.put("msg","no");
                      return "home";
                  }
             }
         }
        
        return "redirect:home.html";
    }
    
    
    @RequestMapping(value="addsubject.html",method=RequestMethod.GET)
    public String addsubject()
    {
        
        return "addsubject";
    }
    
    @RequestMapping(value="subject.html",method=RequestMethod.POST)
    public String subject(@RequestParam String name)
    {
        subject s=new subject();
        s.setName(name);
        se.savesubject(s);
        return "redirect:addsubject.html";
    }
    
    @RequestMapping(value="logout.html",method=RequestMethod.GET)
    public String logout()
    {
        return "logout";
    }
    
    @RequestMapping(value = "viewstudents.html",method=RequestMethod.GET)
    public String viewstudents(ModelMap m)
    {
        List li=se.getstudents();
        m.put("list", li);
        return "viewstudents";
    }
    
    @RequestMapping(value="verifystaff.html",method=RequestMethod.GET)
    public String verifystaff(ModelMap m)
    {
        List li=se.getstaff();
        m.put("list", li);
        return "verifystaff";
    }
    
    @RequestMapping(value="approve.html",method=RequestMethod.GET)
    public String approve(@RequestParam int id)
    {
        se.approvestaff(id);
        return "redirect:verifystaff.html";
    }
    
    @RequestMapping(value="uploadnotes.html",method=RequestMethod.GET)
    public String uploadnotes(ModelMap m)
    {
        List li=se.getsubjects();
        m.put("list", li);
        return "uploadnotes";
    }
    
    @RequestMapping(value="notes.html",method=RequestMethod.POST)
    public String notes(HttpSession ses,@RequestParam String subject,@RequestParam String topic,@RequestParam String ntype,@RequestParam String year,@RequestParam("file") CommonsMultipartFile file,@RequestParam String module,@RequestParam String detail) throws IOException
    {
        int id=(int) ses.getAttribute("idd");
        note n =new note();
        n.setSid(id);
        String name=se.getStudentname(id);
        n.setStudentname(name);
        n.setSubname(subject);
        n.setTopic(topic);
        n.setNotetype(ntype);
        n.setYear(year);
        n.setModule(module);
        n.setTopicdescription(detail);
        //String filepath="C:\\Users\\acer\\Documents\\RushHour\\web\\notes\\";
        String filepath="C:\\Users\\Dheeru\\Desktop\\prgming\\RushHour\\RushHour\\web\\notes\\";
        String filename=file.getOriginalFilename();
        String path=filepath+filename;
        Path pa=Paths.get(path);
        byte[] bytes=file.getBytes();
        Files.write(pa,bytes);
        
        n.setFilepath(filename);
        se.savenote(n);
        
        return "redirect:uploadnotes.html";
    }
    
    
    @RequestMapping(value="viewnotes.html",method=RequestMethod.GET)
    public String viewnotes(ModelMap m)
    {
        List li2=se.getsubjects();
//        List li=se.notesview();
//        m.put("list", li);
        m.put("list2", li2);
        return "viewnotes";
    }
    
    @RequestMapping(value="viewselectednotes.html",method=RequestMethod.GET)
    public String viewselectednotes(ModelMap m,@RequestParam String subname)
    {
        List li2=se.getsubjects();
        m.put("list2", li2); 
        List li=se.getsubject(subname);
        m.put("list", li);
        return "viewselectednotes";
    }
    
    
    @RequestMapping(value="showvideo.html",method=RequestMethod.GET)
    public String showvideo(HttpSession ses,@RequestParam String sub,ModelMap m)
    {
        
        int id=(int) ses.getAttribute("idd");
        List li=se.getvideo(sub);
        
        List li2=se.showallvideo(sub);
        m.put("list2", li2);
//        List li2=se.getTopics(sub);
        m.put("list", li);
        
        List li3=se.reviewcheck(id);
        m.put("list3", li3);
        return "showvideo";
    }
    
    @RequestMapping(value="searchvideos.html",method=RequestMethod.GET)
    public String searchvideos(HttpSession ses,@RequestParam String topic,ModelMap m,@RequestParam String sub){
        
         int id=(int) ses.getAttribute("idd");
        List li=se.getvideo(sub);
        m.put("list", li);
        List li2=se.videos(topic,sub);
        m.put("videolist", li2);
        List li3=se.reviewcheck(id);
        m.put("list3", li3);
        return "showvideo";
    }
    
    @RequestMapping(value="feedback.html",method=RequestMethod.GET)
    public String feedback(HttpSession ses,@RequestParam int id,ModelMap m)
    {
        int uid=(int) ses.getAttribute("idd");
        List li3=se.reviewcheck(uid);
        m.put("list3", li3);
        List li=se.getnotes(id);
        m.put("list", li);
        return "feedback";
    }
    
    @RequestMapping(value="review.html",method=RequestMethod.POST)
    public RedirectView review(HttpSession ses,@RequestParam int noteid,@RequestParam int videorating,@RequestParam String comment)
    {
        comment c=new comment();
        c.setNid(noteid);
        int id=(int) ses.getAttribute("idd");
        c.setSid(id);
        c.setRating(videorating);
        c.setReview(comment);
        se.savecomment(c);
        RedirectView rv=new RedirectView();
        rv.setContextRelative(true);
        rv.setUrl("feedback.html?id="+noteid);
        return rv;

        
    }
    
    @RequestMapping(value="viewcomments.html",method=RequestMethod.GET)
    public String viewcomments(@RequestParam int id)
    {
            
            return "viewcomments";
    }
    
    @RequestMapping(value="showpdf.html",method=RequestMethod.GET)
    public String showpdf(@RequestParam String sub,ModelMap m)
    {
        List li=se.getpdf(sub);
        m.put("list", li);
        return "showpdf";
    }
    
        @RequestMapping(value="viewpdf.html",method=RequestMethod.GET)
    public String viewpdf(@RequestParam int id,ModelMap m)
    {
            List li=se.getpdfbyid(id);
            m.put("list", li);
            return "viewpdf";
    }
    
        @RequestMapping(value="showdoc.html",method=RequestMethod.GET)
    public String showdoc(@RequestParam String sub,ModelMap m)
    {
        List li=se.getdoc(sub);
        m.put("list", li);
        return "showdoc";
    }
    
            @RequestMapping(value="download.html",method=RequestMethod.GET)
    public String viewdoc(@RequestParam int id,ModelMap m,HttpServletResponse response) throws FileNotFoundException, IOException
    {
            List li=se.getdocbyid(id);
            m.put("list", li);
            Iterator it=li.iterator();
            String filename="";
            while(it.hasNext())
            {
                note n =(note) it.next();
                filename=n.getFilepath();
            }
            response.setContentType("text/html");  
                PrintWriter out = response.getWriter();  
               
                String filepath = "C:\\Users\\Dheeru\\Desktop\\prgming\\RushHour\\RushHour\\web\\notes\\";   
                response.setContentType("APPLICATION/OCTET-STREAM");   
                response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   

                FileInputStream fileInputStream = new FileInputStream(filepath + filename);  

                int i;   
                while ((i=fileInputStream.read()) != -1) {  
                out.write(i);   
                }   
                fileInputStream.close();   
                out.close();   
                    return "showdoc";
    }
    
    
            @RequestMapping(value="showppt.html",method=RequestMethod.GET)
    public String showppt(@RequestParam String sub,ModelMap m)
    {
        List li=se.getppt(sub);
        m.put("list", li);
        return "showppt";
    }
}
