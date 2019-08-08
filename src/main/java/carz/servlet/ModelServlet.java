package carz.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;

/**
 * Servlet implementation class ModelServlet
 */
@WebServlet("/ModelServlet")
public class ModelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String brand = request.getParameter("brand");
		ICarDAO carDAO = DAOFactory.buildDAOFactory().createCarDAO();
	    List<String> modelList = carDAO.searchModelsByBrand(brand);
	    request.setAttribute("modelList", modelList);
		request.getRequestDispatcher("models.jsp").forward(request, response);
	}

}
