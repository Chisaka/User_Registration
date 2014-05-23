<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登録内容確認</title>
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>

        <h2>確認画面</h2>
        <hr>
        <div align="center">
            <hr>
            <b>以下の内容でよろしいですか？</b><br>
            <form action="CompletionOfRegistration.jsp" method="post">
            <h3>
            名  前 : <%= session.getAttribute("user_id") %><br>
            ニックネーム : <%= session.getAttribute("nickname") %><br>
            Mail(PC) : <%= session.getAttribute("mail") %><br>
            パスワード : <%= session.getAttribute("password") %><br>
            </h3>
            <a href="Initializ">OK</a>
            </form>
            <a href="User_Regist.jsp">Cancel</a>
        </div>
    </body>
</html>