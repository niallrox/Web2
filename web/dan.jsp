<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${table}" var="result">
    <tr class="resultFromPhp">
        <th>${result.getX()} </th>
        <th>${result.getY()}</th>
        <th>${result.getR()}</th>
        <th>${result.getResult()}</th>
        <th>${result.timeFormat()}</th>
    </tr>
</c:forEach>
