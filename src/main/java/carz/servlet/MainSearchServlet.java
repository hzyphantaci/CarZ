package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String brand = request.getParameter("brand");
           String budget = request.getParameter("budget");
           
           ICommodityService service = (ICommodityService) ServiceFactory.buildFactory().createCommodityService();
           List<CommodityVO> comList = service.findByBrandAndBudget(brand,budget);
           request.setAttribute("comList", comList);
           request.getRequestDispatcher("cars.jsp").forward(request, response);
           
	}

}
