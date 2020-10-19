<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 20.10.2020
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="JS/graph.js"></script>
<c:forEach items="${points}" var="point">
    <script>setPointer(${point[0]}, ${point[1]})</script>
</c:forEach>
