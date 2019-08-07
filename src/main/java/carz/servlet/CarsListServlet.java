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
import carz.po.CommodityPO;
import carz.service.ICommodityService;
import carz.service.ServiceFactory;
import carz.vo.CommodityVO;

/**
 * Servlet implementation class CarsListServlet
 */
@WebServlet("/CarsListServlet")
public class CarsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String currPageNoStr = request.getParameter("page");
		//System.out.println("currPageNo："+currPageNoStr);
		String address = request.getParameter("address");
		String budgetStr = request.getParameter("budget");
		String[] type = request.getParameterValues("type[]");
		String[] brand = request.getParameterValues("brand[]");
		String state = request.getParameter("state");
		String gear = request.getParameter("gear");
		String power = request.getParameter("power");
		ICommodityService service = ServiceFactory.buildFactory().createCommodityService();
		List<CommodityVO> list =service.findByAll(currPageNoStr, address, brand, budgetStr, type, null,power,gear,state);
		int pageCount = service.findPageCountByAll(currPageNoStr, address, brand, budgetStr, type, null,power,gear,state);
		//System.out.println("pageCount:"+pageCount);
		//System.out.println("listSize:"+list.size());
		request.setAttribute("comList", list);
		request.setAttribute("pageCount", pageCount);
		request.getRequestDispatcher("searchList.jsp").forward(request,
				response);
	}

}
