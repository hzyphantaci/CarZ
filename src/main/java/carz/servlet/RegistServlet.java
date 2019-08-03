package carz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.IUserDAO;
import carz.po.UserPO;
import carz.service.IUserService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		System.out.println(name + email + password + rePassword);
		IUserService userService = ServiceFactory.buildFactory()
				.createUserService();
		UserPO po = userService.findByEmail(email);
		if (po == null) {
			if (password.equals(rePassword)) {
				UserPO user = new UserPO(name, password, email);
				if (userService.regist(user)) {
					request.getSession().setAttribute("user", user);
					pw.write("<script type='text/javascript'>alert('恭喜您注册成功');"
							+ "window.location='IndexPage.jsp'</script>");
				}
			} else {
				pw.write(
						"<script type='text/javascript'>alert('两次输入密码不一致，请重新输入');"
								+ "window.location='IndexPage.jsp'</script>");
			}
		} else {
			pw.write("<script type='text/javascript'>alert('该邮箱已被注册，请重新输入');"
					+ "window.location='IndexPage.jsp'</script>");
		}

	}
}
