package carz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.INewsDAO;
import carz.po.NewsPO;
import carz.service.INewsService;
import carz.service.ServiceFactory;

/**
 * Servlet implementation class NewsServlet
 */
@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currPageNo1 = request.getParameter("currPageNo");
        if(currPageNo1==null) {
        	currPageNo1="1";
		}
		int currPageNo = 1;
		try {
			currPageNo = Integer.parseInt(currPageNo1);
		} catch (Exception e) {
		}
		INewsService news = ServiceFactory.buildFactory().createNewsService();
		List<NewsPO> newsList = news.searchNews(currPageNo);
		request.setAttribute("newsList", newsList);
        request.getRequestDispatcher("news.jsp").forward(request, response);
	}

}
