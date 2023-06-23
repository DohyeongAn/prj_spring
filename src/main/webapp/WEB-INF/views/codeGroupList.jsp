<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

codeGroupList.jsp

<br>

<c:choose>
    <c:when test="${fn:length(list) eq 0}">
        <tr>
            <td class="text-cneter" colspan="9">There is no data</td>
        </tr>
    </c:when>
    <c:otherwise>
        <c:forEach items="${list}" var="list" varStatus="status">
            <c:out value="${list.seq}"></c:out>
            <c:out value="${list.name}"></c:out><br>
        </c:forEach>
    </c:otherwise>
</c:choose>