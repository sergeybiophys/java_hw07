<%@ page import="java.sql.ResultSet" %>
<%@ page import="sv.work.home.database.DataBase" %>
<%--
  Created by IntelliJ IDEA.
  User: elekta
  Date: 01.02.2022
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.rawgit.com/kimeiga/bahunya/css/bahunya-0.1.3.css"/>
  <title>Order Form</title>
</head>
<body>
<div style="text-align: center;">

    <h4 id='pzName'>

    </h4>

</div>

<div style="text-align: center">
    <h4>Specify additional toppings if necessary </h4>
</div>
    <%
        request.setAttribute("toppings", DataBase.getToppings());
    %>
    <div style="display: flex;flex-direction: column; background-color: azure;">
        <c:forEach var="topping" items="${toppings}">


            <%-- <tr>
                     <td>${task.count}</td>

                     <td>  <fmt:formatDate pattern="yyyy-MM-dd" value="${task.date}" /></td>
                     <br>
             </tr>--%>

            <div class="topping-card" name="${topping.name}" id="topping${topping.name}" style="display: flex; flex-direction: row;
            justify-content: center; text-align: center; border: 2px solid black;">
                <div >
                    <h5 style="color: black;">${topping.name}</h5>
                </div>
                    <%--                <div>
                                        <img src="${pageContext.request.contextPath}${pizza.image}" height="190px" width="190px" alt="..."/>
                                    </div>--%>

                <div>
                    <input  type="checkbox"/>
                </div>
                <div>
                    <input type="number"/>
                </div>
                <div style="color: black">
                    <h5>${topping.price}GRN</h5>
                </div>

            </div>



        </c:forEach>
    </div>


<div style="text-align: center">
  <h3>Fill the form</h3>
</div>
<div style="display: flex; justify-content: center">

  <form method='post' action='/add'>
    <label>Name:    <input   name='name'/></label><br/>
    <label>Email:   <input name='email' type="email" /></label><br/>
    <label>Mobile:  <input  name='mobile' type="tel" /></label><br/>
    <label>Address: <input name='address' type="text"/></label><br/>
<%--    <label>Group:
      <select name="group">
        <%
          ResultSet groups = DbConnection.getAllGroups();
          while (groups.next())
          {
            Integer id = groups.getInt("id");
            String name = groups.getString("name");
            out.println("<option value="+id+">"+name+"</option>");
          }
        %>
      </select>--%>

    </label>
    <input value='CREATE THE ORDER' style="margin-left:85px; margin-top: 30px; " type='submit'/>
  </form>
</div>
</body>
</html>
<script>
    document.getElementById('pzName').textContent=localStorage.pzName;

</script>
