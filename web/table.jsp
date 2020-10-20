<%@ page import="Foundation.OGRow" %>
<%@ page import="AreaCheckServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<tr class="resultFromPhp">
    <th><%= ((OGRow)request.getAttribute(AreaCheckServlet.result)).getX() %></th>
    <th><%= ((OGRow)request.getAttribute(AreaCheckServlet.result)).getY() %></th>
    <th><%= ((OGRow)request.getAttribute(AreaCheckServlet.result)).getR() %></th>
    <th><%= ((OGRow)request.getAttribute(AreaCheckServlet.result)).getResult() %></th>
    <th><%= ((OGRow)request.getAttribute(AreaCheckServlet.result)).timeFormat() %></th>
</tr>