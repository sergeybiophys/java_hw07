package sv.work.home.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MakeOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //List<Pizza> tmp = DataBase.GetAll();
        //req.setAttribute("pizzas", DataBase.getAll());
        //RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/index.jsp");
        //dispatcher.forward(req,resp);

        req.getRequestDispatcher("/WEB-INF/jsp/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
