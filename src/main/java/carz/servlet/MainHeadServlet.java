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
import carz.service.ICarService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class MainHeadServlet
 */
@WebServlet("/MainHeadServlet")
public class MainHeadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ICarService service = (ICarService) ServiceFactory.buildFactory().createCarService();
		List<String> brandList = service.searchBrands();
		ICityDAO dao = DAOFactory.buildDAOFactory().createCityDAO();
		List<String> citysNameList = dao.searchCitysName();
		request.setAttribute("brandList", brandList);
		request.setAttribute("citysNameList", citysNameList);
		request.getRequestDispatcher("MainHeadPage.jsp").include(request, response);
	}

}
