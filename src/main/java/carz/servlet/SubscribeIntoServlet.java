package carz.servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carz.dao.DAOFactory;
import carz.dao.IPictureDAO;
import carz.dao.ISubscribeDAO;
import carz.dao.IUserDAO;

/**
 * Servlet implementation class SubscribeIntoServlet
 */
@WebServlet("/SubscribeIntoServlet")
public class SubscribeIntoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
//		String strCarId = request.getParameter("carId");
		String url = request.getParameter("newsDetailId");
		if(url==null) {
			url = "http://localhost:8080/CarZ/NewsDetailServlet";
		}else {
			url = "http://localhost:8080/CarZ/NewsDetailServlet"+"?"+url;
		}
		String strUrl = null;
		strUrl = request.getParameter("url");
		int carId = 1;
//		try {
//			carId = Integer.parseInt(strCarId);
//		} catch (Exception e) {
//		}
		if(email!=null)  {
			IPictureDAO picDAO = DAOFactory.buildDAOFactory().createPictureDAO();
			IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
			ISubscribeDAO subDAO = DAOFactory.buildDAOFactory().createSubscribeDAO();
			 Date date=new Date();                             
	         SimpleDateFormat temp=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
	         String date1=temp.format(date);
			subDAO.addSubscribe(0, userDAO.findByEmail(email).getUserId(), email, carId, url , date1, 1);
		}else {
			
		}
		if(strUrl.equals("index")) {
			response.sendRedirect("MainPageServlet");
		}else {
			response.sendRedirect("NewsDetailServlet"+ request.getParameter("newsDetailId"));
		}
		
	}

}
