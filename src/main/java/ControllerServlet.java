import Foundation.OGRow;
import Foundation.Point;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {
    private List<OGRow> result = Collections.synchronizedList(new ArrayList<>()) ;
    private List<Point> point = Collections.synchronizedList(new ArrayList<>());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OGRow resultNow = new OGRow(0,0,0,"0", LocalTime.now());
        if (req.getParameter("com").equals("oldG")) {
            getServletContext().setAttribute("points", point);
            getServletContext().getRequestDispatcher("/graph.jsp").forward(req, resp);
        }
        if (req.getParameter("com").equals("old")) {
            getServletContext().setAttribute("table", result);
            getServletContext().getRequestDispatcher("/dan.jsp").forward(req, resp);
        } if(req.getParameter("com").equals("send") || req.getParameter("com").equals("svg")) {
            getServletContext().setAttribute("results", result);
            getServletContext().setAttribute("resultNow", resultNow);
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
