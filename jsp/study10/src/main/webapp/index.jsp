<%@ page import="java.util.function.Function" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<div class="container mt-5">
<ul class="list-group text-decoration-none">
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Remove.jsp" target="_blank">Remove 태그</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/If.jsp" target="_blank">If 태그</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Choose.jsp" target="_blank">Choose 태그</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/ForEachNormal.jsp" target="_blank">ForEach 태그1</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/ForEachExtend1.jsp" target="_blank">ForEach 태그2</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/ForEachExtend2.jsp" target="_blank">ForEach 태그3</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/ForTokens.jsp" target="_blank">ForTokens</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Import.jsp" target="_blank">Import</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Redirect.jsp" target="_blank">Redirect</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Url.jsp" target="_blank">Url</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Out.jsp" target="_blank">Out</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Catch.jsp" target="_blank">Catch</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Fmt1.jsp" target="_blank">Fmt1</a></li>
    <li class="list-group-item"><a href="http://localhost:8080/chap11/Fmt2.jsp" target="_blank">Fmt2</a></li>
</ul>

    <%!
        public void testFnc(PrintWriter out){
            out.println("test");
    }
    %>
    <input type="text" onclick="">

</div>
</body>
</html>