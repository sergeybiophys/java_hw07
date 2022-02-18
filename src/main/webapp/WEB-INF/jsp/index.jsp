
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="sv.work.home.database.DataBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Pizza</title>
</head>
<body>
<main style="display: flex;  width: 80%; height: 500px; margin: 0 auto; ">
    <div style="display: flex; flex-direction: column;  width: 80%; margin: 0 auto; justify-content: center;">
        <div>
            <h1>Pizza App </h1>
        </div>

            <%
               request.setAttribute("pizzas",DataBase.getAll());
            %>

<%--            <c:if test="${requestScope.pizzas.size()>0}">--%>

<%--
            <%
                request.getAttribute("pizzas");

            %>--%>
                <%--<c:set var="pizzas" value="${pizzas}" />--%>

<%--    https://betacode.net/10429/java-jsp-standard-tag-library#a1264566--%>

                <c:forEach var="pizza" items="${pizzas}">


                    <%-- <tr>
                             <td>${task.count}</td>

                             <td>  <fmt:formatDate pattern="yyyy-MM-dd" value="${task.date}" /></td>
                             <br>
                     </tr>--%>

                    <div style="display: flex; flex-direction: column;  width: 250px; height: 350px; margin: 0 auto;
                                       background-color: ghostwhite; border: 3px inset lightgoldenrodyellow; align-items: center;">
                        <div>
                            ${pizza.name}
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}${pizza.image}" height="200" width="200" alt="..."/>
                        </div>
                        <div>
                            ${pizza.price}
                        </div>

                    </div>
                </c:forEach>
<%--            </c:if>--%>

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
