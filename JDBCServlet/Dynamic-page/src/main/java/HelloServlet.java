import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sayhello")
public class HelloServlet extends HttpServlet {
	
	public void service(HttpServletRequest req , HttpServletResponse res) throws ServletException,IOException {
		
		String name = req.getParameter("str");
		
		
		PrintWriter pw = res.getWriter();
		pw.println("<html>");
		pw.println("<body>");
		pw.println("<div style='text-align:center'>");
		pw.println("<h1> Hello " +name + "</h1>");
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
		
		
	}

}
