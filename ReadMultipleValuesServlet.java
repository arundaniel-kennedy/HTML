import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ReadMultipleValuesServlet extends HttpServlet {
@Override
public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        String message="";
        String values[] = request.getParameterValues("CheckBoxGrp");
        if(values!=null)
        {
            for(int i=0;i<values.length;i++)
        {
            message= message+ "<BR/>" + values[i];
        }
    }
    response.setContentType("text/html");
    PrintWriter writer = response.getWriter();
    writer.println(message);
    }

  public void doPost(HttpServletRequest request, HttpServletResponse response)
   throws IOException, ServletException
   {
       doGet(request, response);
   }
}
