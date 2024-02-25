package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dal.CustomerDAO;
import model.Customer;

/**
 * Servlet implementation class Change_passwords
 */
@WebServlet("/change_pass")
public class Change_passwords extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change_passwords() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String error ="";
		String url ="";
		CustomerDAO customerDAO = new CustomerDAO();
		
		String password_current = request.getParameter("password_current");
		String password = request.getParameter("password");
		String password_re = request.getParameter("password_re");
		
		HttpSession sesstion = request.getSession();
		Object obj = sesstion.getAttribute("customer");
		Customer cus = null;
		if(obj != null) {
			cus = (Customer) obj;
		}
		if(cus == null) {
			error += "You are not logged into the system!";
			url = "/customer/change_passwords.jsp";
		}else {
		//change
			if(customerDAO.checkPasswordExist(password_current)) {
				if(!password.equalsIgnoreCase(password_re)) {
					error += "Password do not match!";
					url = "/customer/change_passwords.jsp";
				}
			}else {
				error += "Current Password Were Wrong!";
					url = "/customer/change_passwords.jsp";
			}
		}
		if(customerDAO.checkPasswordExist(password_current) && password.equalsIgnoreCase(password_re)) {
			cus.setPassWord(password);
			customerDAO.changePassword(cus);
			url = "/customer/success.jsp";
		}
		request.setAttribute("error", error);
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}














