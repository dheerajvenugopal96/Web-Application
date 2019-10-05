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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
        
        
//         String host="smtp.gmail.com";
//	   String port="587";
//	  final String userName="mysoft.123@gmail.com";
//	  final String passu="mysoft123";
//          
//           try
//	 {
//      // sets SMTP server properties
//      Properties properties = new Properties();
//      properties.put("mail.smtp.host", host);
//      properties.put("mail.smtp.port", port);
//      properties.put("mail.smtp.auth", "true");
//      properties.put("mail.smtp.starttls.enable", "true");
//      properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
//      
//      // creates a new session with an authenticator
//      Authenticator auth = new Authenticator() {
//          public PasswordAuthentication getPasswordAuthentication() {
//              return new PasswordAuthentication(userName, passu);
//          }
//      };
//
//      Session session = Session.getInstance(properties, auth);
//
//      // creates a new e-mail message
//      Message msg = new MimeMessage(session);
//
//      msg.setFrom(new InternetAddress(userName));
//      InternetAddress[] toAddresses = { new InternetAddress(email) };
//      msg.setRecipients(Message.RecipientType.TO, toAddresses);
//      msg.setSubject(subject);
//      msg.setSentDate(new Date());
//      msg.setText("Thank You For using Rush Hour - A Trusted Web Application for Students To Learn Better");
//
//      // sends the e-mail
//      Transport.send(msg);
//	 }
//	 catch(Exception e)
//	 {
//		 e.printStackTrace();
//	 }
          
          
        
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
            ses.setAttribute("category", "admin");
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
                      ses.setAttribute("category", r.getCategory());
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
                          ses.setAttribute("category", r.getCategory());
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
        String filepath="C:\\Users\\acer\\Documents\\RushHour\\web\\notes\\";
        //String filepath="C:\\Users\\Dheeru\\Desktop\\prgming\\RushHour\\RushHour\\web\\notes\\";
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
    public String viewpdf(HttpSession ses,@RequestParam int id,ModelMap m)
    {
        
        int uid=(int) ses.getAttribute("idd");
            List li=se.getpdfbyid(id);
            String filename="";
            String subject="";
            Iterator it=li.iterator();
            while(it.hasNext())
            {
                note n =(note) it.next();
                filename=n.getFilepath();
                subject=n.getSubname();
            }
            
             report r =new report();
            r.setUid(uid);
            r.setSubject(subject);
            r.setFilename(filename);
            se.savereport(r);
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
    public String viewdoc(HttpSession ses,@RequestParam int id,ModelMap m,HttpServletResponse response) throws FileNotFoundException, IOException
    {
        int uid=(int) ses.getAttribute("idd");
            List li=se.getdocbyid(id);
            m.put("list", li);
            Iterator it=li.iterator();
            String filename="";
            String subject="";
            while(it.hasNext())
            {
                note n =(note) it.next();
                filename=n.getFilepath();
                subject=n.getSubname();
            }
            
            report r =new report();
            r.setUid(uid);
            r.setSubject(subject);
            r.setFilename(filename);
            se.savereport(r);
            
            
            
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
    
    @RequestMapping(value="uploadseminartopics.html",method=RequestMethod.GET)
    public String uploadseminartopics()
    {
        
     
        
        return "uploadseminartopics";
    }
    
    @RequestMapping(value="uploadseminar.html",method=RequestMethod.POST)
    public String uploadseminar(@RequestParam String topicname,String description,String content)
    {
        seminar s=new seminar();
        s.setTopicname(topicname);
        s.setDescription(description);
        s.setContent(content);
        se.saveseminar(s);
        return "redirect:uploadseminartopics.html";
    }
    
    @RequestMapping(value="viewseminartopics.html",method=RequestMethod.GET)
    public String viewseminartopics(ModelMap m)
    {
        List li=se.getseminar();
        m.put("list", li);
        return "viewseminartopics";
    }
    
    @RequestMapping(value="viewtopicdetail.html",method=RequestMethod.GET)
    public String viewtopicdetail(@RequestParam int id,ModelMap m)
    {
        
        List li=se.viewseminarbyid(id);
        m.put("list", li);
        return "viewtopicdetail";
    }
    
    @RequestMapping(value="userdash.html",method=RequestMethod.GET)
    public String userdash()
    {
        
        
        return "userdash";
    }
    
    @RequestMapping(value="viewmarks.html",method=RequestMethod.GET)
    public String viewmarks(ModelMap m,HttpSession ses)
    {
        List li=se.getallstaff();
        int id=(int) ses.getAttribute("idd");
        List li2=se.getmarkstable(id);
        m.put("list2", li2);
        m.put("list", li);
        return "viewmarks";
    }
    
    @RequestMapping(value = "addrequest.html",method=RequestMethod.POST)
    public String addrequest(@RequestParam int staffid,HttpSession ses)
    {
        
        
        int id=(int) ses.getAttribute("idd");
        markrequest m=new markrequest();
        m.setUserid(id);
        m.setStaffid(staffid);
        m.setRequeststatus("requested");
        m.setFilename("unset");
        se.saverequest(m);
                
        return "redirect:viewmarks.html";
    }
    
    @RequestMapping(value="uploadmarklist.html",method=RequestMethod.GET)
    public String uploadmarklist()
    {
        
        
        return "uploadmarklist";
    }
    
    @RequestMapping(value="updatemarklist.html",method=RequestMethod.POST)
    public String updatemarklist(@RequestParam("file") CommonsMultipartFile file,@RequestParam int mid,int uid) throws IOException
    {
        System.out.println("Enter Here");
        String filepath="C:\\Users\\acer\\Documents\\RushHour\\web\\notes\\";
        String filename=uid+"_"+file.getOriginalFilename();
        String path=filepath+filename;
        Path pa=Paths.get(path);
        byte[] bytes=file.getBytes();
        Files.write(pa, bytes);
        se.update(mid,filename);
        return "redirect:uploadmarklist.html";
    }
    
    @RequestMapping(value="viewexcelcontent.html",method=RequestMethod.GET)
    public String viewexcelcontent(@RequestParam String filename,ModelMap m)
    {
        
  
       return "viewexcelcontent";
    }
    
    @RequestMapping(value="downloadexcel.html",method=RequestMethod.GET)
    public String downloadexcel(@RequestParam String filename,HttpServletResponse response) throws IOException
    {
        
                response.setContentType("text/html");  
                PrintWriter out = response.getWriter();  
               
                String filepath = "C:\\Users\\acer\\Documents\\RushHour\\web\\notes\\";   
                response.setContentType("APPLICATION/OCTET-STREAM");   
                response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   

                FileInputStream fileInputStream = new FileInputStream(filepath + filename);  

                int i;   
                while ((i=fileInputStream.read()) != -1) {  
                out.write(i);   
                }   
                fileInputStream.close();   
                out.close();   
        
        return "redirect:viewmarks.html";
    }
    
    
    @RequestMapping(value="addassignments.html",method=RequestMethod.GET)
    public String addassignments(ModelMap m)
    {
        
        List li=se.getsubjects();
        m.put("list", li);
        return "addassignments";
    }
    
    @RequestMapping(value="assignmentadd.html",method=RequestMethod.POST)
    public String assignmentadd(@RequestParam String subject,String topicname,String deadline,HttpSession ses)
    {
        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        assignment a=new assignment();
        a.setSubject(subject);
        a.setTopicname(topicname);
        a.setDeadline(deadline);
        a.setYear(year);
        se.saveassignment(a);
        
        return "redirect:addassignments.html";
    }
    
    @RequestMapping(value="viewassignments.html",method=RequestMethod.GET)
    public String viewassignments(HttpSession ses,ModelMap m)
    {
        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        m.put("year", year);
        List li=se.getassignments();
        m.put("list", li);
        
        return "viewassignments";
    }
    
    @RequestMapping(value="questionpapers.html",method=RequestMethod.GET)
    public String questionpapers(ModelMap m)
    {
        
        List li=se.getsubjects();
        m.put("list", li);
        return "questionpapers"; 
    }
    
    @RequestMapping(value="qpaperadd.html",method=RequestMethod.POST)
    public String qpaperadd(@RequestParam String subject,String year,String qyear,@RequestParam("file") CommonsMultipartFile file) throws IOException
    {
        qpapers q=new qpapers();
        q.setSubject(subject);
        q.setYear(year);
        q.setQyear(qyear);
        q.setFilename(file.getOriginalFilename());
        String filepath="C:\\Users\\acer\\Documents\\RushHour\\web\\notes\\";
        String filename=file.getOriginalFilename();
        String path=filepath+filename;
        Path pa=Paths.get(path);
        byte[] bytes=file.getBytes();
        Files.write(pa, bytes);
        se.saveqpaper(q);
        
        
        
        return "redirect:questionpapers.html";
    }
    
    @RequestMapping(value="viewqpapers.html",method=RequestMethod.GET)
    public String viewqpapers(HttpSession ses,ModelMap m)
    {
        
        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        m.put("year", year);
        List li=se.getqpapers();
        m.put("list", li);
        return "viewqpapers";
    }
    
    @RequestMapping(value="uploadqpercentage.html",method=RequestMethod.GET)
    public String uploadqpercentage(ModelMap m)
    {
        
        List li=se.getsubjects();
        m.put("list", li);
        return "uploadqpercentage";
    }
    
    @RequestMapping(value="addpercent.html",method=RequestMethod.POST)
    public String addpercent(@RequestParam String subject,String year,int mod1,int mod2,int mod3,int mod4)
    {
        List li=se.checkrepeat(subject,year);
        if(li.isEmpty())
        {
        mweightage m=new mweightage();
        m.setSubject(subject);
        m.setYear(year);
        m.setMod1(mod1);
        m.setMod2(mod2);
        m.setMod3(mod3);   
        m.setMod4(mod4);
        se.savemodule(m);
        }
        else
        {
            se.updatepercentages(subject,year,mod1,mod2,mod3,mod4);
        }
        return "redirect:admin.html";
    }
    
    @RequestMapping(value="viewmoduleweightage.html",method=RequestMethod.GET)
    public String viewmoduleweightage(HttpSession ses,ModelMap m)
    {
        
        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        m.put("year", year);
        List li=se.getfromweights(year);
        m.put("list", li);
        return "viewmoduleweightage";
    }
  
    @RequestMapping(value="showchart.html",method=RequestMethod.GET)
    public String showweightage(@RequestParam String subject,String year,ModelMap m)
    {
        m.put("year", year);
        return "showchart";
    }
    
    @RequestMapping(value="uploadprojectmodel.html",method=RequestMethod.GET)
    public String uploadprojectmodel(ModelMap m)
    {
        List li=se.getprojectmodel();
        m.put("list", li);
        return "uploadprojectmodel";
    }
    
    @RequestMapping(value="savepropages.html",method=RequestMethod.POST)
    public String savepropages(@RequestParam("file") CommonsMultipartFile file,@RequestParam("file2") CommonsMultipartFile file2,@RequestParam("file3") CommonsMultipartFile file3,@RequestParam("file4") CommonsMultipartFile file4,@RequestParam("file5") CommonsMultipartFile file5,@RequestParam("file6") CommonsMultipartFile file6,@RequestParam("file7") CommonsMultipartFile file7,@RequestParam("file8") CommonsMultipartFile file8,@RequestParam("file9") CommonsMultipartFile file9,@RequestParam("file10") CommonsMultipartFile file10,@RequestParam("file11") CommonsMultipartFile file11) throws IOException
    {
        String filepath="C:\\Users\\acer\\Documents\\RushHour\\web\\propages\\";
        String f1=file.getOriginalFilename();
         String f2=file2.getOriginalFilename();
          String f3=file3.getOriginalFilename();
           String f4=file4.getOriginalFilename();
            String f5=file5.getOriginalFilename();
             String f6=file6.getOriginalFilename();
              String f7=file7.getOriginalFilename();
               String f8=file8.getOriginalFilename();
                String f9=file9.getOriginalFilename();
                 String f10=file10.getOriginalFilename();
                  String f11=file11.getOriginalFilename();
                  
                  String pa=filepath+f1;
                  String pa2=filepath+f2;
                  String pa3=filepath+f3;
                  String pa4=filepath+f4;
                  String pa5=filepath+f5;
                  String pa6=filepath+f6;
                  String pa7=filepath+f7;
                  String pa8=filepath+f8;
                  String pa9=filepath+f9;
                  String pa10=filepath+f10;
                  String pa11=filepath+f11;
                  
                  Path pat=Paths.get(pa);
                  Files.write(pat,file.getBytes());
                  
                  Path pat2=Paths.get(pa2);
                  Files.write(pat2,file2.getBytes());
                  
                  Path pat3=Paths.get(pa3);
                  Files.write(pat3,file3.getBytes());
                  
                  Path pat4=Paths.get(pa4);
                  Files.write(pat4,file4.getBytes());
                  
                  Path pat5=Paths.get(pa5);
                  Files.write(pat5,file5.getBytes());
                  
                  Path pat6=Paths.get(pa6);
                  Files.write(pat6,file6.getBytes());
                  
                  Path pat7=Paths.get(pa7);
                  Files.write(pat7,file7.getBytes());
                  
                  Path pat8=Paths.get(pa8);
                  Files.write(pat8,file8.getBytes());
                  
                  Path pat9=Paths.get(pa9);
                  Files.write(pat9,file9.getBytes());
                  
                  Path pat10=Paths.get(pa10);
                  Files.write(pat10,file10.getBytes());
                  
                  Path pat11=Paths.get(pa11);
                  Files.write(pat11,file11.getBytes());
                  
                  propages p=new propages();
                  p.setPage1(f1);
                  p.setPage2(f2);
                  p.setPage3(f3);
                  p.setPage4(f4);
                  p.setPage5(f5);
                  p.setPage6(f6);
                  p.setPage7(f7);
                  p.setPage8(f8);
                  p.setPage9(f9);
                  p.setPage10(f10);
                  p.setPage11(f11);
                  
                  se.savepropages(p);
                  
                  
        return "redirect:admin.html";
    }
    
    @RequestMapping(value="reset.html",method=RequestMethod.GET)
    public String reset() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rh", "root", "");
        Statement st=con.createStatement();
        String query="truncate table propages";
        st.executeUpdate(query);
        con.close();
        
        return "redirect:uploadprojectmodel.html";
    }
    
    @RequestMapping(value="viewprojectmodel.html",method=RequestMethod.GET)
    public String viewprojectmodel(ModelMap m)
    {
        List li=se.getprojectmodel();
        m.put("list", li);
        
        return "viewprojectmodel";
    }
    
    @RequestMapping(value="chatgroup.html",method=RequestMethod.GET)
    public String chatgroup(HttpSession ses,ModelMap m)
    {
         DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
          LocalDateTime now = LocalDateTime.now();
          String date=(String)dtf.format(now);
          
        
          
          
        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        List li=se.getChats(year);
//        Iterator it=li.iterator();
//        while(it.hasNext())
//        {
//            chat c=(chat) it.next();
//            System.out.println(c.getMessage());
//        }
        m.put("list", li);
       
        m.put("year",year);
        
          List li2=se.checkdeadline(date,year);
          m.put("list2", li2);
          
        
        return "chatgroup";
    }
    
    @RequestMapping(value="storechat.html",method=RequestMethod.POST)
    public String storechat(HttpSession ses,@RequestParam String message)
    {
        
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("hh:mm");
             LocalDateTime now = LocalDateTime.now();
             LocalDateTime time=LocalDateTime.now();
            String date=(String)dtf.format(now);
            String time2=(String)dtf2.format(time);

        int id=(int) ses.getAttribute("idd");
        String year=se.getyear(id);
        String name=se.getStudentname(id);
        chat c=new chat();
        c.setUid(id);
        c.setYear(year);
        c.setMessage(message);
        c.setActype((String)ses.getAttribute("category"));
        c.setMsgdate(date);
        c.setMsgtime(time2);
        c.setUname(name);
        se.savechat(c);
        
        return "redirect:chatgroup.html";
    }
    
    @RequestMapping(value="sendmessage.html",method=RequestMethod.GET)
    public String sendmessage()
    {
        
        
        return "sendmessage";
    }
    
    @RequestMapping(value="send.html",method=RequestMethod.POST)
    public String send(@RequestParam String year,String message,HttpSession ses)
    {
         DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("hh:mm");
             LocalDateTime now = LocalDateTime.now();
             LocalDateTime time=LocalDateTime.now();
            String date=(String)dtf.format(now);
            String time2=(String)dtf2.format(time);
            
        int id=(int) ses.getAttribute("idd");
        chat c=new chat();
        
        String cat=(String) ses.getAttribute("category");
        if(cat.equals("admin"))
        {
            c.setUname("admin");
        }
        else if(cat.equals("staff"))
        {
            String name=se.getStudentname(id);
            c.setUname(name);
        }
        
        c.setUid(0);
        c.setYear(year);
        c.setMessage(message);
        c.setActype((String) ses.getAttribute("category"));
        c.setMsgdate(date);
        c.setMsgtime(time2);
       
        se.savechat(c);
        
        
        
        return "redirect:sendmessage.html";
    }
    
    @RequestMapping(value="viewreport.html",method=RequestMethod.GET)
    public String viewreport(@RequestParam int id,ModelMap m)
    {
        
        List li=se.getreport(id);
        m.put("list", li);
        return "viewreport";
    }
    
    //start library add
    
    @RequestMapping(value="addlibrarybooks.html",method=RequestMethod.GET)
    public String addlibrarybooks(ModelMap m)
    {
        
        List li=se.getsubjects();
        m.put("list", li);
        
        return "addlibrarybooks";
    }
    
    @RequestMapping(value="bookadd.html",method=RequestMethod.POST)
    public String bookadd(@RequestParam String subject,String bookname,String authorname,String avl)
    {
        book b=new book();
        b.setSubject(subject);
        b.setBookname(bookname);
        b.setAuthor(authorname);
        b.setAvlstatus(avl);
        se.savebook(b);
        
        return "redirect:addlibrarybooks.html";
    }
    
    @RequestMapping(value="cavl.html",method=RequestMethod.GET)
    public String cavl(ModelMap m)
    {
        
        List li=se.getbooks();
        m.put("list", li);
        
        return "cavl";
    }
    
    @RequestMapping(value="getnames.html",method=RequestMethod.GET)
    @ResponseBody
    public String getnames(@RequestParam int id)
    {
        
        List li=se.getbookbyid(id);
        Iterator it=li.iterator();
        String author="";
        String avl="";
        while(it.hasNext())
        {
            book b=(book) it.next();
            author=b.getAuthor();
            avl=b.getAvlstatus();
            
            
        }
        
        String inf=author+"_"+avl;
        
        return inf;
    }
    
    
    @RequestMapping(value="updateavl.html",method=RequestMethod.POST)
    public String updateavl(@RequestParam int book,String avl)
    {
        se.updateavl(avl,book);
        
        return "redirect:cavl.html";
    }
    
    @RequestMapping(value="viewbooks.html",method=RequestMethod.GET)
    public String viewbooks(ModelMap m)
    {
        List li=se.getsubjects();
        m.put("list", li);
        
        return "viewbooks";
    }
    
    @RequestMapping(value="searchbook.html",method=RequestMethod.POST)
    public String searchbook(@RequestParam String subject,ModelMap m)
    {
        
        List li=se.getbooksbysubject(subject);
        m.put("list2", li);
        return "viewbooks";
    }
    
    //end libray functions.Class-Book,book.hbm.xml | jsp -addlibrarybook,cavl,viewbooks

}
