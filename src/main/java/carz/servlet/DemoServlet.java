package carz.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class DemoServlet
 */
public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("demoName");
		System.out.println("*****************" + str);
		boolean bool = ServletFileUpload.isMultipartContent(request);
		if (bool) {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setRepository(new File("d:/temp"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<FileItem> items = upload.parseRequest(request);
				for(FileItem item:items) {
					System.out.println(item.getFieldName() + ",,," + item.getString());
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
