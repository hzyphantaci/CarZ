package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.service.ISellService;
import carz.service.IUserService;
import carz.service.ServiceFactory;
import carz.vo.BuyOrderVO;
import carz.vo.SellVO;
import carz.vo.SubscribeVO;

/**
 * Servlet implementation class PersonnelOrderServlet
 */
@WebServlet("/PersonnelOrderServlet")
public class PersonnelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String personalId = request.getParameter("userId");
		String strButton = request.getParameter("buttonNumb");
		int buttonNumb = -1;
		try {
			buttonNumb = Integer.parseInt(strButton);
		} catch (Exception e) {
		}
		int userId = -1;
		try {
			userId = Integer.parseInt(personalId);
		} catch (Exception e) {
		}
		//通过用户个人id 获取个人所有购买订单和 售卖订单 并存入attribute
		int pageNo = 0;
		int sellid = 1;
		int buyid = 1;
		IUserService userService = ServiceFactory.buildFactory().createUserService();
		List<SellVO> sellList = userService.findAllSellOrderById(pageNo, sellid);
		List<BuyOrderVO> buyList = userService.findAllBuyOrderByStateAndId(pageNo, 1,userId);
		List<SubscribeVO> subList = userService.findSubscribeOrderById(pageNo, userId);
		System.out.println(subList);
		request.setAttribute("buttonNumb", buttonNumb);
		request.setAttribute("sellList", sellList);
		request.setAttribute("buyList", buyList);
		request.setAttribute("subList", subList);
		request.getRequestDispatcher("personnelOrder.jsp").forward(request, response);
	}

}
