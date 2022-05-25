
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
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


public class InsertQuestion extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int serialno;
        String description,input,output,number;
        number = request.getParameter("number1");
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
        
        String hql ="from ProblemSet where serialNo = "+number;

        Query q = s.createQuery(hql);
        
        List<ProblemSet> list = q.list();
        
        for(ProblemSet inp : list){
            serialno = inp.getSerialNo();
            description = inp.getDescription();
            input = inp.getInput();
            output = inp.getOutput();
            
           
//            System.out.println("serial no :"+serialno);
//            System.out.println("description :"+description);
//            System.out.println("input :"+input);
//            System.out.println("output :"+output);
            
            HttpSession session = request.getSession();
                        session.setAttribute("description",description);
                        session.setAttribute("input",input);
                        session.setAttribute("output",output);
                        System.out.println("userName:"+serialno);
                       RequestDispatcher rd = request.getRequestDispatcher("Simple_Sum.jsp");
                       rd.forward(request,response);
        }
        PrintWriter out = response.getWriter();
        
    }
   
}
