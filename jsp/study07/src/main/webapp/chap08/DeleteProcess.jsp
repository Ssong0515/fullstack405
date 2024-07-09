<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 24. 6. 27.
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bitc.fullstack405.study07.database.BoardDAO" %>
<%@ page import="javax.script.ScriptContext" %>
<%@ page import="bitc.fullstack405.study07.util.JSFunction" %>

<%--<jsp:include page="login/LoginCheck.jsp"></jsp:include>--%>

<%@ include file="login/LoginCheck.jsp" %>

<%-- 게시글 삭제 페이지 --%>

<%
    int num = Integer.parseInt(request.getParameter("num"));

    BoardDAO dao = new BoardDAO();
    dao.dbOpen();

    int result = dao.deleteBoard(num);

    dao.dbClose();

    if (result > 0) {
        // List.jsp로 이동
        JSFunction.alertLocation("삭제 되었습니다.", "List.jsp", out);
    } else {
        // View.jsp로 다시 돌아감
        JSFunction.alertBack("삭제 중 오류가 발생했습니다.", out);
    }
%>