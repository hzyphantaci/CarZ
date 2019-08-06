package carz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.po.UserPO;
import carz.service.IUserService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	String url = request.getHeader("referer");
	PrintWriter pw = response.getWriter();
	String email = request.getParameter("email");
//	String password = request.getParameter("password");
//	String remember = request.getParameter("remember");
	IUserService userService = ServiceFactory.buildFactory()
			.createUserService();
	UserPO user = userService.findByEmail(email);
//	if (user!=null&&password.equals(user.getUserPassword())) {
		request.getSession().setAttribute("user", user);
		//通过判断remember是否为空将账号密码保存在cookie
		//request.getRequestDispatcher("IndexPage.jsp").forward(request, response);
		pw.write(
				"<script type='text/javascript'>alert('登陆成功');"
						+ "window.location='"+url+"'</script>");
//	} else {
//		pw.write(
//			"<script type='text/javascript'>alert('用户名或密码错误，请重新输入');"
//					+ "window.location='"+url+"'</script>");
//	}
}

}
