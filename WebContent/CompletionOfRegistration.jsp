<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登録完了</title>
	</head>
	<body>
		<h2>登録完了</h2>
		<hr>
		<b>以下の内容で登録しました</b><br>

		<ul>
            <li>名  前<%= session.getAttribute("user_id") %></li>
            <li>ニックネーム<%= session.getAttribute("nickname") %></li>
            <li>Mail(PC)<%= session.getAttribute("mail") %></li>
            <li>パスワード<%= session.getAttribute("password") %></li>
        </ul>

        <a href="User_Regist.jsp">ＴＯＰへ戻る</a>

	</body>
</html>