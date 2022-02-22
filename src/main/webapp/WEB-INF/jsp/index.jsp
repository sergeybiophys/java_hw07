
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="sv.work.home.database.DataBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">--%>
    <style>
        div.pizza-card:hover {
            background-color: lightsteelblue!important;
            transform: scale(110%);
        }
        div.pizza-card {

        }

    </style>
    <title>Pizza</title>
</head>
<body>
<div style="display: flex; flex-wrap: wrap;justify-content: center">
    <h1>Pizza App </h1>
</div>

<main >
    <div style="display: flex; flex-wrap: wrap; width: 80%; margin: 0 auto; height: 800px;  background-color: black; justify-content: space-around;">


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
               <%-- <a href="/form" class="block">--%>
                    <div class="pizza-card" name="${pizza.name}" id="${pizza.id}" style="display: flex; flex-direction: column; width: 250px; height: 400px;
                                       background-color: ghostwhite; border: 3px inset lightgoldenrodyellow; align-items: center;">
                        <div style="margin-top: 5px;">
                            <h3>${pizza.name}</h3>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}${pizza.image}" height="190px" width="190px" alt="..."/>
                        </div>
                        <div>
                                ${pizza.price}GRN
                        </div>

                    </div>
                <%--</a>--%>
                <script>
                    $(".pizza-card").click(function (){
                       /* let postData = {"pizzaName":${pizza.name}};
                        $.ajax({
                            type: "POST",
                            url: '/form',
                            data: postData,
                            dataType: "json",
                            processdata: true,
                            success: function (response){
                                $('#${pizza.id}').attr('pzName','${pizza.name}');
                                $('#${pizza.id}').attr('pzPrice','${pizza.price}');

                            },
                            error: function (error){

                            }

                        });*/
                        localStorage['pzName']='${pizza.name}';
;

                        window.location.href = '/form';
                    });
                </script>


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
