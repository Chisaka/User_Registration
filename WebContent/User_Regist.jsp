<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user登録</title>
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        <h1>ユーザ登録</h1>
        <hr>
        <h2>ユーザ情報を入力してください</h2>

        <form action="Session_serv" method="post">
            <ul>
                <li>名  前<input type="text" name="user_id" value="<%= session.getAttribute("user_id") %>" /></li>
                <li>ニックネーム<input type="text" name="nickname" value="<%= session.getAttribute("nickname") %>" /></li>
                <li>Mail(PC)<input type="text" name="mail" value="<%= session.getAttribute("mail") %>" /></li>
                <li>パスワード<input type="password" name="password" value="<%= session.getAttribute("password") %>" /></li>
            </ul>
            <input type="submit" value="確認" />
        </form>

    </body>
</html>