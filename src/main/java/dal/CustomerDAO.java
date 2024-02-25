package dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dal.JDBCutil;
import model.Customer;

public class CustomerDAO {
	public int insert(Customer t) {
		int result = 0;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "INSERT INTO Customer (customerid, username, password, fullname, sex, address, birthday, phonenumber, email, emailnewlettter) "
					+ " VALUES (?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getCustomerID());
			st.setString(2, t.getUserName());
			st.setString(3, t.getPassWord());
			st.setString(4, t.getFullName());
			st.setString(5, t.getSex());
			st.setString(6, t.getAddress());
			st.setDate(7, t.getBirthday());
			st.setString(8, t.getPhoneNumber());
			st.setString(9, t.getEmail());
			st.setBoolean(10, t.isEmailNewsLetter());

			// Bước 3: thực thi câu lệnh SQL
			result = st.executeUpdate();

			// Bước 4:
			System.out.println("you have excuted: " + sql);
			System.out.println("There is(are) " + result + " line has changed");

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public Customer selectByUsernameAndPassWord(Customer t) {
		Customer result = null;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM Customer WHERE username=? and password=?";
			PreparedStatement st = con.prepareStatement(sql);
			System.out.println(t.getUserName()+"/"+t.getPassWord());
			st.setString(1, t.getUserName());
			st.setString(2, t.getPassWord());

			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Bước 4:
			while (rs.next()) {			
			 String customerID = rs.getString("customerid");
			 String userName = rs.getString("username");
			 String passWord = rs.getString("password");
			 String fullNameString = rs.getString("fullname");
			 String sex = rs.getString("sex");
			 String address = rs.getString("address");
			 Date birthday = rs.getDate("birthday");
			 String phoneNumber = rs.getString("phonenumber");
			 String email = rs.getString("email");
			 boolean emailNewsLetter = rs.getBoolean("emailnewlettter");
			 
			result = new Customer(customerID, userName, passWord, fullNameString, sex, address, birthday, phoneNumber, email, emailNewsLetter);
			}

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public int updateInfo(Customer t) {
		int result = 0;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "UPDATE Customer " + " SET " + " fullname=?" + ", sex=?" + ", address=?" + ", birthday=?"
					+ ", phonenumber=?" + ", email=?" + ", emailnewlettter=?" + " WHERE makhachhang=?";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getFullName());
			st.setString(2, t.getSex());
			st.setString(3, t.getAddress());
			st.setDate(4, t.getBirthday());
			st.setString(5, t.getPhoneNumber());
			st.setString(6, t.getEmail());
			st.setBoolean(7, t.isEmailNewsLetter());
			st.setString(8, t.getCustomerID());
			// Bước 3: thực thi câu lệnh SQL

			System.out.println(sql);
			result = st.executeUpdate();

			// Bước 4:
			System.out.println("you have excuted: " + sql);
			System.out.println("there is(are) " + result + " line has changed");

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	public boolean changePassword(Customer t) {
		int result = 0;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "UPDATE Customer " + " SET " + " password=?" + " WHERE customerid=?";  // khi ở trong phiên(sesstion) thì sẽ truy đến mã khách hàng trong phiên để đổi mật khẩu

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getPassWord());
			st.setString(2, t.getCustomerID());
			// Bước 3: thực thi câu lệnh SQL

			System.out.println(sql);
			result = st.executeUpdate();

			// Bước 4:
			System.out.println("you have excuted: " + sql);
			System.out.println("there is(are) " + result + " line has changed!");

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result > 0;
	}

	public boolean checkUsernameExist(String userName) {
		boolean result = false;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM Customer WHERE username=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, userName);

			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Bước 4:
			while (rs.next()) {
				result = true;
			}

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public boolean checkPasswordExist(String password) {
		boolean result = false;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCutil.getConnection();

			// Bước 2: tạo ra đối tượng statement
			String sql = "SELECT * FROM Customer WHERE password=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, password);

			// Bước 3: thực thi câu lệnh SQL
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Bước 4:
			while (rs.next()) {
				result = true;
			}

			// Bước 5:
			JDBCutil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
}
