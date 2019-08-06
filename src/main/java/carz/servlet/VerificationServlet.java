package carz.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ICityDAO;
import carz.dao.IUserDAO;
import carz.dao.impl.UserDAOImpl;
import carz.po.UserPO;
import carz.service.IUserService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class verification
 */
@WebServlet("/VerificationServlet")
public class VerificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("fromPage").equals("1")) {
			IUserDAO user = DAOFactory.buildDAOFactory().createUserDAO();
			List<UserPO> email = user.findAllEmail();
			String email1 = request.getParameter("email1");
			boolean boole = false;
			for (UserPO a : email) {
				if (a.getUserEmail().equals(email1)) {
					boole = true;
					break;
				}
			}
			String result = null;
			if (boole) {
				result = "<font color='red'>该用户名已存在</font>";
			} else {
				result = "<font color='green'>该用户名可以使用</font>";
			}
			response.getWriter().print(result);
		}

		else if (request.getParameter("fromPage").equals("2")) {
			String result1 = null;
			String val1 = request.getParameter("val1");
			String val2 = request.getParameter("val2");
			if (!(val1.equals(val2))) {
				result1 = "<font color='red'>两次密码不一致,请重新输入!!!</font>";
			} else {
				result1 = "<font color='green'>两次密码一致</font>";
			}
			response.getWriter().print(result1);
		} else if (request.getParameter("fromPage").equals("3")) {
			String emailVal = request.getParameter("emailVal");
			String passWordVal = request.getParameter("passWordVal");
			IUserDAO user = DAOFactory.buildDAOFactory().createUserDAO();
			List<UserPO> email = user.findAllEmail();
			IUserService userService = ServiceFactory.buildFactory().createUserService();
			UserPO user1 = userService.findByEmail(emailVal);
			boolean boole = false;
			for (UserPO a : email) {
				if (a.getUserEmail().equals(emailVal)) {
					boole = true;
					break;
				}
			}
			if (!boole) {
				response.getWriter().print("1");
			} else {
				if (passWordVal.equals(user1.getUserPassword())) {
					response.getWriter().print("2");
				} else {
					response.getWriter().print("3");
				}
			}

		}
	}
}
