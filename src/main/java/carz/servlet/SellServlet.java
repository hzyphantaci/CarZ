package carz.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class SellServlet
 */
@WebServlet("/SellServlet")
public class SellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		boolean bool = ServletFileUpload.isMultipartContent(request);
		String brand = "", model = "", color = "", year = "", month = "",
				city = "", name = "", email = "", phone = "", img = "";
		double mileage = 0, price=0;
		if (bool) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setRepository(new File("d:/temp"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("UTF-8"); 
			try {
				List<FileItem> items = upload.parseRequest(request);
				for (FileItem item : items) {
					if (item.isFormField()) {
						System.out.println(item.getFieldName() + "---->" + item.getString("UTF-8"));
						switch (item.getFieldName()) {
							case "brand" :
								brand = item.getString("UTF-8");
								break;
							case "Model" :
								model = item.getString("UTF-8");
								break;
							case "Color" :
								color = item.getString("UTF-8");
								break;
							case "year" :
								year = item.getString("UTF-8");
								break;
							case "Month" :
								month = item.getString("UTF-8");
								break;
							case "city" :
								city = item.getString("UTF-8");
								break;
							case "mileage" :
								mileage = Double.parseDouble(item.getString("UTF-8"));
								break;
							case "price" :
								price = Double.parseDouble(item.getString("UTF-8"));
								break;
							case "name" :
								city = item.getString("UTF-8");
								break;
							case "email" :
								email = item.getString("UTF-8");
								break;
							case "phone" :
								phone = item.getString("UTF-8");
								break;
							default :
								break;
						}
					} else {
						String fileName = item.getName();
						fileName = fileName
								.substring(fileName.lastIndexOf("\\") + 1);
						img = "d:/eclipse/workspace/carZ/src/main/webapp/images/"
								+ fileName;
						System.out.println(img);
						//item.write(new File(img));
					}
				}
			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("提交的不是form");
		}
	}

}
