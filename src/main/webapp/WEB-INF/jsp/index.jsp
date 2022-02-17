
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Pizza</title>
</head>
<body>
<main>
    <div style="display: flex;  width: 80%; margin: 0 auto; justify-content: center;">
        <h1>Pizza App </h1>
        <div>
<%--            <c:if test="${requestScope.pizzas.size()>0}">--%>

<%--
            <%
                request.getAttribute("pizzas");

            %>--%>
                <%--<c:set var="pizzas" value="${pizzas}" />--%>

<%--    https://betacode.net/10429/java-jsp-standard-tag-library#a1264566--%>

                <c:forEach items="${requestScope.get(pizzas)}" var="pizza" varStatus="status">
                    <h1>10</h1>

                    <%-- <tr>
                             <td>${task.count}</td>

                             <td>  <fmt:formatDate pattern="yyyy-MM-dd" value="${task.date}" /></td>
                             <br>
                     </tr>--%>

                    <div style="display: flex;  width: 30%; margin: 0 auto;
                                         background-color: lightblue; height: 35px; justify-content: space-around; margin-bottom: 0.2em;">
                        <div>${pizza.name}</div>

                    </div>
                </c:forEach>
<%--            </c:if>--%>
        </div>
    </div>
</main>

<%--<form method="post">
    <input name="name"/>
    <input type="submit">
</form>
<%
    if(request.getAttribute("name")!=null) {
        out.println("Your name " + request.getAttribute("name"));
    }
%>--%>

</body>
</html>
