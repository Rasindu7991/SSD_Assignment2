package servlet;

import org.gradle.demo.DriveQuickstart;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"}, loadOnStartup = 1)
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().print("Hello, World!");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("button3") != null) {
            try {
                DriveQuickstart.main();

            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
        }

        if (request.getParameter("button4") != null) {
            try {
                TimeUnit.SECONDS.sleep(3);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            try {
                DriveQuickstart.uploadFile();

            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
        }

        request.getRequestDispatcher("response.jsp").forward(request, response);
    }
}