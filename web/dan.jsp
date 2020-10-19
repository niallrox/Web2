<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${table}" var="result">
    <tr class="resultFromPhp">
        <th>${result[0]} </th>
        <th>${result[1]}</th>
        <th>${result[2]}</th>
        <th>${result[3]}</th>
        <th>${result[4]}</th>
    </tr>
</c:forEach>
