package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("txtnun");
	        String password = request.getParameter("txtnpass");

	        // Simple validation logic
	        if ("abc".equals(username) && "123".equals(password)) {
	            // Valid login, create session and redirect
	            HttpSession session = request.getSession();
	            session.setAttribute("username", username);
	            response.sendRedirect("tc.jsp");
	        } else {
	            // Invalid login, set error message and forward back to login page
	            request.setAttribute("errorMessage", "Invalid username or password.");
	            request.getRequestDispatcher("Login/dangnhap.jsp").forward(request, response);
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
