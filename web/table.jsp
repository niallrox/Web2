<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<tr class="resultFromPhp">
    <th><%= ((String[])request.getAttribute("result"))[0] %></th>
    <th><%= ((String[])request.getAttribute("result"))[1] %></th>
    <th><%= ((String[])request.getAttribute("result"))[2] %></th>
    <th><%= ((String[])request.getAttribute("result"))[3] %></th>
    <th><%= ((String[])request.getAttribute("result"))[4] %></th>
</tr>