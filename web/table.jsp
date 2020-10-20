<%@ page import="Foundation.OGRow" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<tr class="resultFromPhp">
    <th><%= ((OGRow)request.getAttribute("result")).getX() %></th>
    <th><%= ((OGRow)request.getAttribute("result")).getY() %></th>
    <th><%= ((OGRow)request.getAttribute("result")).getR() %></th>
    <th><%= ((OGRow)request.getAttribute("result")).getResult() %></th>
    <th><%= ((OGRow)request.getAttribute("result")).timeFormat() %></th>
</tr>