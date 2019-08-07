package carz.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ICityDAO;
import carz.dao.impl.CityDAOImpl;
import carz.po.CityPO;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
		String country = request.getParameter("country");
		//System.out.println(country);
		ICityDAO city =DAOFactory.buildDAOFactory().createCityDAO();
		CityPO cityPO = city.searchCitysUrl(country);
		String result = cityPO.getCityUrl();
		System.out.println(result);
		response.getWriter().print(result);
	}

}
