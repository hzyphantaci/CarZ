package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.service.ICarService;
import carz.service.ISellService;
import carz.service.ServiceFactory;
import carz.vo.CarVO;
import carz.vo.SellVO;


/**
 * Servlet implementation class BackstageServlet
 */
@WebServlet("/BackstageServlet")
public class BackstageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strButton = request.getParameter("button");
		int buttonNumb = -1;
		try {
			buttonNumb = Integer.parseInt(strButton);
		} catch (Exception e) {
		}
		String strPageNo = request.getParameter("pageNo");
		int pageNo = 0;
		if(strPageNo!=null) {
			try {
				pageNo = Integer.parseInt(strPageNo);
			} catch (Exception e) {
			}
		}
		int state = 1;
		int state02 = 2;
		int state03 = 3;
		int state04 = 4;
		int state05 = 5;
		int state06 = 0;
//		 * 3 调用后面的Service，获得当前页面要显示的所有信息的List
		ISellService sellService = ServiceFactory.buildFactory().createSellService();
		List<SellVO> sellList01 = sellService.searchSells(pageNo, state);
		List<SellVO> sellList02 = sellService.searchSells(pageNo, state02);
		List<SellVO> sellList03 = sellService.searchSells(pageNo, state03);
		List<SellVO> sellList04 = sellService.searchSells(pageNo, state04);
		List<SellVO> sellList05 = sellService.searchSells(pageNo, state05);
		List<SellVO> sellList06 = sellService.searchSells(pageNo, state06);
//		 * 3.5 将List设置在request中
		request.setAttribute("buttonNumb", buttonNumb);
		request.setAttribute("sellList01", sellList01);
		request.setAttribute("sellList02", sellList02);
		request.setAttribute("sellList03", sellList03);
		request.setAttribute("sellList04", sellList04);
		request.setAttribute("sellList05", sellList05);
		request.setAttribute("sellList06", sellList06);
//		 * 4 转向到backstage.jsp显示li
		request.getRequestDispatcher("backstage.jsp").forward(request, response);
	}

}
