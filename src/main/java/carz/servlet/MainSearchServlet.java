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
import carz.service.ICommodityService;
import carz.service.ServiceFactory;
import carz.vo.CommodityVO;

/**
 * Servlet implementation class MainSearchServlet
 */
@WebServlet("/MainSearchServlet")
public class MainSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ICarService carService = (ICarService) ServiceFactory.buildFactory()
				.createCarService();
		ICityDAO dao = DAOFactory.buildDAOFactory().createCityDAO();
		List<String> brandList = carService.searchBrands();
		List<String> powerList = carService.searchPowers();
		List<String> citysNameList = dao.searchCitysName();
		request.setAttribute("brandList", brandList);
		request.setAttribute("powerList", powerList);
		request.setAttribute("citysNameList", citysNameList);
		request.setAttribute("brand", request.getParameter("brand"));
		request.setAttribute("budget", request.getParameter("budget"));
		request.getSession().setAttribute("city", request.getParameter("city"));
		ICommodityService service = (ICommodityService) ServiceFactory
				.buildFactory().createCommodityService();
		// List<CommodityVO> comList =
		// service.findByBrandAndBudget(brand,budget);
		// request.setAttribute("comList", comList);
		request.getRequestDispatcher("cars.jsp").forward(request, response);

	}

}
