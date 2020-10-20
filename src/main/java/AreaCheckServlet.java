import Foundation.OGRow;
import Foundation.Point;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.List;


@WebServlet(name = "AreaCheckServlet")
public class AreaCheckServlet extends HttpServlet {
    private static final String result = "result";
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double x = Double.parseDouble(req.getParameter("X"));
        double y = Double.parseDouble(req.getParameter("Y"));
        double r = Double.parseDouble(req.getParameter("R"));
        String xP = String.valueOf(req.getParameter("xP"));
        String yP = String.valueOf(req.getParameter("yP"));
        String res = result(x, y, r);
        LocalTime time = LocalTime.now();
        OGRow ogRow = null;
        Point points = null;
        try {
            if (req.getParameter("com").equals("send")) {
                if (checkData(x, y, r)) {
                    ogRow = new OGRow(x, y, r, res, time);
                }
            } else {
                if (r != 0) {
                    points = new Point(xP,yP);
                    ogRow = new OGRow(x, y, r, res, time);
                }
            }
        } finally {
            req.setAttribute(result, ogRow);
            ((List<Point>) getServletContext().getAttribute("points")).add(points);
            ((List<OGRow>) getServletContext().getAttribute(result+"s")).add(ogRow);
            ((OGRow) getServletContext().getAttribute(result+"Now")).setRow(ogRow);
            getServletContext().getRequestDispatcher("/"+result+".jsp").forward(req, resp);
        }
    }

    private String result(double x, double y, double r) {
        if (x >= 0 && y >= 0 && y <= (-0.5 * x + r / 2)) {
            return "True";
        }
        if (x <= 0 && y >= 0 && (x * x + y * y) <= (r * r) / 4) {
            return "True";
        }
        if (y <= 0 && y >= -r / 2 && x >= 0 && x <= r) {
            return "True";
        }
        return "False";
    }

    private boolean checkData(double x, double y, double r) {
        Double[] xInterval = {-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0};
        Double[] rInterval = {1.0, 1.5, 2.0, 2.5, 3.0};
        if (Arrays.asList(xInterval).contains(x) && (y > -3 && y < 3) && Arrays.asList(rInterval).contains(r)) {
            return true;
        } else return false;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}