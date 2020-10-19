import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {
    private ArrayList<String[]> result = new ArrayList<>();
    private ArrayList<String[]> point = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<String[]> result1 = new ArrayList<>();
        if (req.getParameter("com").equals("oldG")) {
            getServletContext().setAttribute("points", point);
            getServletContext().getRequestDispatcher("/graph.jsp").forward(req, resp);
        }
        if (req.getParameter("com").equals("old")) {
            getServletContext().setAttribute("table", result);
            getServletContext().getRequestDispatcher("/dan.jsp").forward(req, resp);
        } if(req.getParameter("com").equals("send") || req.getParameter("com").equals("svg")) {
            getServletContext().setAttribute("results", result);
            getServletContext().setAttribute("results1", result1);
            getServletContext().setAttribute("points", point);
            getServletContext().getNamedDispatcher("AreaCheckServlet").forward(req, resp);
        } if(req.getParameter("com").equals("clear")){
            result.clear();
            point.clear();
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    }
}
