package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.dao.ICityDAO;

/**
 * Servlet implementation class SellPageServlet
 */
@WebServlet("/SellPageServlet")
public class SellPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ICarDAO carDAO = DAOFactory.buildDAOFactory().createCarDAO();
		List<String> brandList = carDAO.searchBrands();
		ICityDAO cityDAO = DAOFactory.buildDAOFactory().createCityDAO();
		List<String> citysNameList = cityDAO.searchCitysName();
		request.setAttribute("brandList", brandList);
		request.setAttribute("citysNameList", citysNameList);
		request.getRequestDispatcher("sell-single.jsp").forward(request, response);
	}

}
