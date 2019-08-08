package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ISellDAO;
import carz.dao.ISubscribeDAO;
import carz.dao.IUserDAO;
import carz.service.IUserService;
import carz.service.ServiceFactory;
import carz.vo.BuyOrderVO;

/**
 * Servlet implementation class PersonnelOrderConvertServlet
 */
@WebServlet("/PersonnelOrderConvertServlet")
public class PersonnelOrderConvertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strSubId = request.getParameter("subscribeId");
		String strUserId = request.getParameter("userId");
		String strSellId = request.getParameter("sellId");
		String strButton = request.getParameter("buttonNumb");
		String strBuyCode = request.getParameter("buyCode");
		int SubId = -1;
		try {
			SubId = Integer.parseInt(strSubId);
		} catch (Exception e) {
		}
		int userId = -1;
		try {
			userId = Integer.parseInt(strUserId);
		} catch (Exception e) {
		}
		int sellId = -1;
		try {
			sellId = Integer.parseInt(strSellId);
		} catch (Exception e) {
		}
		int sellState = 0;
		int buttonNumb = -1;
		try {
			buttonNumb = Integer.parseInt(strButton);
		} catch (Exception e) {
		}
		ISellDAO sellDAO = DAOFactory.buildDAOFactory().createSellDAO();
		IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
		ISubscribeDAO subDAO = DAOFactory.buildDAOFactory().createSubscribeDAO();
		sellDAO.update(sellId, sellState);
		userDAO.update(strBuyCode);
		subDAO.delete(SubId);
		request.setAttribute("buttonNumb", buttonNumb);
		request.setAttribute("userId", userId);
		request.getRequestDispatcher("PersonnelOrderServlet").forward(request, response);
	}

}
