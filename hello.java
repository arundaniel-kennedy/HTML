import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class hello extends HttpServlet{
  public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    out.println("<html><head><title>svce</title></head>");
    out.println("<body>helloworld</body></html>");
  }
}
