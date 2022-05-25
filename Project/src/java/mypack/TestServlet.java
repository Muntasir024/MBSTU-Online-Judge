/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author User
 */
public class TestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String UserN,email,password,confirm_pass;
        UserN = request.getParameter("Username");
        email = request.getParameter("email");
        password = request.getParameter("password");
        confirm_pass = request.getParameter("confirm_pass");
       

        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session s = sf.openSession();
        Transaction tr = s.beginTransaction();
        if(password.equals(confirm_pass)){
        Student si = new Student( UserN,email,password);
        
        s.save(si);
        HttpSession session = request.getSession();
                        session.setAttribute("userName",UserN);
                        
                       RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
                       rd.forward(request,response);
        }else{
            
            response.sendRedirect("signUp.jsp");
        }
        
        tr.commit();
        s.close();
        
        
          }
    }
    

