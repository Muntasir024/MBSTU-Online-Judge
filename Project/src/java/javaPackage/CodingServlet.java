package javaPackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CodingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String language = request.getParameter("language");
        String code = request.getParameter("programming");
        String problem_no = request.getParameter("problem_no");

        try {
            System.out.println("code:" + code);
            String array[] = code.split(" ");
            String name = array[2].replace("{", " ").replace("public", " ");
            String className = name.trim();

            String fileBasePath = "C:\\Users\\User\\";
            File f = new File(fileBasePath + className + ".java");
            System.out.println("classname:" + className);
            FileWriter fr = new FileWriter(f);
            fr.write(code);
            fr.close();

            String line;
            PrintWriter out = response.getWriter();
            String javaFilePath = "C:/Program Files/Java/jdk1.8.0_171/bin/javac " + fileBasePath + className + ".java";
//          String javaFilePath = "javac " + fileBasePath+ className+".java";

            System.out.println("javaFilePath:" + javaFilePath);

            //compile
            Process p = Runtime.getRuntime().exec(javaFilePath);

            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            System.out.println("Compiling is in progress...." + br.readLine());
            while ((line = br.readLine()) != null) {
                System.out.println(line);

            }
            br.close();

            System.out.println("className:" + className);
            //Run
            try {
                Process p3 = Runtime.getRuntime().exec("C:/Program Files/Java/jdk1.8.0_171/bin/java -cp " + fileBasePath + "  " + className.trim());
//            Process p3 = Runtime.getRuntime().exec("java -cp C:/Users/User/ "+className.trim());

                BufferedReader brError = new BufferedReader(new InputStreamReader(p3.getErrorStream()));
                String error = brError.readLine();
                //System.out.println("error ::" + error);
                

                BufferedReader br3 = new BufferedReader(new InputStreamReader(p3.getInputStream()));

                StringBuffer totalOutput = new StringBuffer("");
                while ((line = br3.readLine()) != null) {
                    System.out.println(line);
                    totalOutput.append(line);

                }
                br.close();

                String s1 = totalOutput.toString();

                System.out.println(s1);
                String first = "1001";
                String second = "1002";
                String secondA = "A=12.5664";
                String sum = "sum 9";

                String compilation_error = "Error: Could not find or load main class " + className;

                if (problem_no.equals(first)) {
                    if (s1.equals(sum)) {

                        request.setAttribute("label", "accepted");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    }
                    if (compilation_error.equals(error)) {
                        request.setAttribute("label", "Compilation error");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    } else {
                        request.setAttribute("label", "Presentation error");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    }
                }
                else{
                    request.setAttribute("label", "Wrong Answer");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                }
                
                if (problem_no.equals(second)) {
                    if (s1.equals(secondA)) {

                        request.setAttribute("label", "accepted");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    }
                    if (compilation_error.equals(error)) {
                        request.setAttribute("label", "Compilation error");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    } else {
                        request.setAttribute("label", "Presentation error");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                    }
                }
                else{
                    request.setAttribute("label", "Wrong Answer");
                        RequestDispatcher rd = request.getRequestDispatcher("Output_result.jsp");
                        rd.forward(request, response);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
