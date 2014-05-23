package jp.co.jjs.java_seminar;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session_serv
 */
@WebServlet("/Session_serv")
public class Session_serv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Session_serv() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        sessions(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        sessions(request, response);
    }

    protected void sessions(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String user_id  = "";
        String nickname = "";
        String mail     = "";
        String password = "";

        user_id  = request.getParameter("user_id");
        nickname = request.getParameter("nickname");
        mail     = request.getParameter("mail");
        password = request.getParameter("password");

        HttpSession session = request.getSession(true);
        session.setAttribute("user_id", user_id);
        session.setAttribute("nickname", nickname);
        session.setAttribute("mail", mail);
        session.setAttribute("password", password);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Confirm.jsp");
        dispatcher.forward(request, response);
    }

}
