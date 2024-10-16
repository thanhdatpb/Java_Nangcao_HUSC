package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class tamController
 */
@WebServlet("/tamController")
public class tamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PrintWriter out = response.getWriter();
//		out.print("<html><body>Alo </html></body");
		
		HttpSession session = request.getSession();
		session.setAttribute("test", "thu 1 ti");
		
		//Tao bien request
		request.setAttribute("tam", "ha ha ha");
		
		String tama = request.getParameter("txta");
		String tamb = request.getParameter("txtb");
		if(tama != null && tamb != null) {
			int a = Integer.parseInt(tama);
			int b = Integer.parseInt(tamb);
			int kq = 0;
			if(request.getParameter("butcong") != null) {
				kq = a+b;
			}
			if(request.getParameter("buttru") != null) {
				kq = a-b;
				request.setAttribute("kq", kq);
				request.setAttribute("a", a);
				request.setAttribute("b", b);
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
