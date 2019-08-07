package carz.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.service.ICommodityService;
import carz.service.ServiceFactory;
import carz.vo.CommodityVO;

/**
 * Servlet implementation class CarDetailServlet
 */
@WebServlet("/CarDetailServlet")
public class CarDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String comIdStr = request.getParameter("comId");
		if (comIdStr != null && !"".equals(comIdStr)) {
			int comId = Integer.parseInt(comIdStr);
			ICommodityService service = ServiceFactory.buildFactory().createCommodityService();
			CommodityVO com=service.findByComId(comId);
			request.setAttribute("com", com);
			request.getRequestDispatcher("used_cars.jsp").forward(request,
					response);
		} else
			request.getRequestDispatcher("MainSearchServlet").forward(request, response);
	}

}
