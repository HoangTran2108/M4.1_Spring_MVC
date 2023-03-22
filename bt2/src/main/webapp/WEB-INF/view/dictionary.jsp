<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 23/3/2023
  Time: 5:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> trans = new HashMap<>();
%>

<%
    trans.put("orange", "cam");
    trans.put("banana", "chuối");
    trans.put("mango", "xoài");
    trans.put("coconut", "dừa");
    String search = request.getParameter("search");
    String result = trans.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>

</body>
</html>
