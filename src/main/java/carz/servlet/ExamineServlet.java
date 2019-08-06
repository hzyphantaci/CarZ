package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.IComDAO;
import carz.dao.ISellDAO;
import carz.dao.IUserDAO;
import carz.service.ISellService;
import carz.service.ServiceFactory;
import carz.vo.SellVO;

/**
 * Servlet implementation class ExamineServlet
 */
@WebServlet("/ExamineServlet")
public class ExamineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String strSellState = request.getParameter("sellState");
		String strSellId = request.getParameter("sellId");
		String strButton = request.getParameter("button");
		int sellId = -1;
		try {
			sellId = Integer.parseInt(strSellId);
		} catch (Exception e) {
		}
		int sellState = -1;
		try {
			sellState = Integer.parseInt(strSellState);
		} catch (Exception e) {
		}
		int buttonNumb = -1;
		try {
			buttonNumb = Integer.parseInt(strButton);
		} catch (Exception e) {
		}
		
		ISellDAO sellDAO = DAOFactory.buildDAOFactory().createSellDAO();
		sellDAO.update(sellId, sellState);
		request.setAttribute("buttonNumb", buttonNumb);
		request.getRequestDispatcher("BackstageServlet").forward(request, response);
	}

}
