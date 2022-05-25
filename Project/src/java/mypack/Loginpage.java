
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author User
 */
public class Loginpage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String UserN,password ,table_uName,table_uPassword,t_userial,t_uemail;
        UserN = request.getParameter("Username");
        password = request.getParameter("password");
  
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
        
       String hql ="from Student";
        Query q = s.createQuery(hql);
        
        List<Student> list = q.list();
        
        
        int x = 0;
        for(Student stu : list){
            
            table_uName = stu.getUname();
            table_uPassword = stu.getUpassword();
            t_userial = stu.getSerialNo().toString();
            t_uemail = stu.getMail();
            
            if(UserN.equals(table_uName)){
                if(password.equals(table_uPassword))
                    {
                        HttpSession session = request.getSession();
                        session.setAttribute("userName",table_uName);
                        System.out.println("userName:"+table_uName);
                       RequestDispatcher rd = request.getRequestDispatcher("problem_set.jsp");
                       rd.forward(request,response);
//                        request.setAttribute("label", "table_uName");
//                        RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
//                        rd.forward(request, response);
            }               
            }else{
                x++;
            }            
        }
       
        if(x>1){
            
            response.sendRedirect("login.jsp");
        }      
    }
}