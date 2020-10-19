<%@ page import="org.w3c.dom.ls.LSOutput" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 19.10.2020
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="CSS/result.css">
</head>
<body>
<script src="JS/jquery-3.4.1.js"></script>
<script>
    $.ajax({
        type: "POST",
        url: "ControllerServlet",
        data: {Y: y, X: x, R: r, com: 'send'},
        success: function (answer) {
        }
    })
</script>
<td valign="top">
    <header class="cap animate__animated animate__fadeInDown">
        Леднев Иван, Рыбальченко Максим P3231 Вариант 2730
    </header>
    <table class="resultR" cellspacing="0">
        <tr class="resultHeader">
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>RESULT</th>
            <th>TIME</th>
        </tr>
        <tr class="resultFromPhp">
            <th><%= ((ArrayList<String[]>) request.getServletContext().getAttribute("results1")).get(0)[0] %></th>
            <th><%= ((ArrayList<String[]>) request.getServletContext().getAttribute("results1")).get(0)[1] %></th>
            <th><%= ((ArrayList<String[]>) request.getServletContext().getAttribute("results1")).get(0)[2] %></th>
            <th><%= ((ArrayList<String[]>) request.getServletContext().getAttribute("results1")).get(0)[3] %></th>
            <th><%= ((ArrayList<String[]>) request.getServletContext().getAttribute("results1")).get(0)[4] %></th>
        </tr>
    </table>
</td>
<footer class="bottom">
    <a id="bottom-link" href="index.jsp">Вернуться назад</a>
</footer>
<script>
</script>
</body>
</html>
