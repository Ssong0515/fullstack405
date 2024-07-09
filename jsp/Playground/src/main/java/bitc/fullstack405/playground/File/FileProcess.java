package bitc.fullstack405.playground.File;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.security.cert.Extension;

@WebServlet("/FileProcess.do")
public class FileProcess extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Part part = request.getPart("attached");
            part.write("C:/upload/" + File.separator + "testFile1.jpg");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/.FilewriteStreamEX.jsp");
    }
}
