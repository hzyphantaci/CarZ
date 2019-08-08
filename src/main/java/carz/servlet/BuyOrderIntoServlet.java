package carz.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.IUserDAO;
import carz.util.VerifyCodeUtil;

/**
 * Servlet implementation class BuyOrderIntoServlet
 */
public class BuyOrderIntoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strComId = request.getParameter("comId");
		String strUserId = request.getParameter("userId");
		String strBuyConcactWay = request.getParameter("buyConcactWay");
		String buyConcactAddress = request.getParameter("buyConcactAddress");
		String buyAppointmentTime = request.getParameter("buyAppointmentTime");
		
		int comId = 1;
		try {
			comId = Integer.parseInt(strComId);
		} catch (Exception e) {
		}
		int userId = 1;
		try {
			userId = Integer.parseInt(strUserId);
		} catch (Exception e) {
		}
		int buyConcactWay = 1;
		try {
			buyConcactWay = Integer.parseInt(strBuyConcactWay);
		} catch (Exception e) {
		}
		if(userId!=0 && comId!=0) {
			//随机订单编号
			String code = VerifyCodeUtil.generateVerifyCode(6);
			IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
			 Date date=new Date();                             
	         SimpleDateFormat temp=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
	         String date1=temp.format(date);//订单日期
	         userDAO.addBuyOrder(code, comId, userId, buyConcactWay, buyConcactAddress, date1, buyAppointmentTime);
		}
         response.sendRedirect("PersonnelOrderServlet");
	}
}
