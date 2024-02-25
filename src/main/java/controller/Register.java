package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.CustomerDAO;
import model.Customer;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name = request.getParameter("user_name");
		String full_name = request.getParameter("full_name");
		String password = request.getParameter("password");
		String password_re = request.getParameter("password_re");
		String address = request.getParameter("address");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		String emai_news = request.getParameter("emai_news");
		
		String error ="";
		String url ="";
		CustomerDAO customerDAO = new CustomerDAO();
		
		if(customerDAO.checkUsernameExist(user_name)) {
			error += user_name+" Has Existed, Plese Input Another Username!";
		}
		if(!password.equals(password_re)) {
			error += "Password Do Not Match";
		}
		
		request.setAttribute("error", error);
		
		if(error.length() > 0) {
			url = "/customer/register.jsp";
		}else {
			Random rd = new Random();
			String customerId = rd.nextInt(1000000)+ "";
			Customer cu = new Customer(customerId, user_name, password, full_name, sex, address, Date.valueOf(birthday), phone_number, email, emai_news != null);
			customerDAO.insert(cu);
			url = "/customer/success.jsp";
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
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
