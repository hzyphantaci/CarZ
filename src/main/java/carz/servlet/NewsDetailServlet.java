package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.service.INewsDetailService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class NewsDetailServlet
 */
@WebServlet("/NewsDetailServlet")
public class NewsDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String newsDetailId1 = request.getParameter("newsDetailId");
			int newsDetailId = -1;
			try {
				newsDetailId = Integer.parseInt(newsDetailId1);
			} catch (Exception e) {
			}
			INewsDetailService newsDetail = ServiceFactory.buildFactory().createNewsDetailService();
			List newsList = newsDetail.findAllDetailNews(newsDetailId);
			request.setAttribute("newsList", newsList);
	        request.getRequestDispatcher("single.jsp").forward(request, response);
	}

}
