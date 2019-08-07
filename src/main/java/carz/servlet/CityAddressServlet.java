package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ICityDAO;

/**
 * Servlet implementation class CityAddressServlet
 */
@WebServlet("/CityAddressServlet")
public class CityAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ICityDAO dao = DAOFactory.buildDAOFactory().createCityDAO();
		List<String> citysNameList = dao.searchCitysName();
		request.setAttribute("citysNameList", citysNameList);
		request.getRequestDispatcher("citys.jsp").include(request, response);
	}

}
