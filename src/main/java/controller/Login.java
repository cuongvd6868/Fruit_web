package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dal.CustomerDAO;
import model.Customer;



/**
 * Servlet implementation class Register
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		
		Customer cus = new Customer();   // tạo 1 đối tượng chứa username & pas đã nhập
		cus.setUserName(user_name);
		cus.setPassWord(password);
		
		CustomerDAO ctd = new CustomerDAO();
		Customer customer = ctd.selectByUsernameAndPassWord(cus);  // truy vẫn đối tượng chứa đó trong csdl
		String url = "";
		if(customer != null) {
			HttpSession sesstion = request.getSession();
			sesstion.setAttribute("customer", customer);
			url = "/index.jsp";
		}else {
			request.setAttribute("error", "Username Or Password Were Wrong");
			url = "/customer/login.jsp";
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}


















