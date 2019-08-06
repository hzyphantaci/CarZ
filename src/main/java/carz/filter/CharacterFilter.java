package carz.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterFilter implements Filter {
	private String characterEncoding = null;
	FilterConfig fc;
	public void init(FilterConfig filterConfig) throws ServletException {
		fc = filterConfig;
		if (null != fc && null != fc.getInitParameter("encoding")
				&& !"".equals(fc.getInitParameter("encoding"))) {
			characterEncoding = fc.getInitParameter("encoding");
		} else {
			characterEncoding = "UTF-8";
		}
	}
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		// 拦截所有的请求 解决全站中文乱码 // 指定 request 和 response 的编码
		request.setCharacterEncoding(characterEncoding);
		// 将response对象中的数据以UTF-8解码后发向浏览器
		response.setCharacterEncoding(characterEncoding);
		// 告诉浏览器输出内容为HTML,并使用UTF-8对HTML内容进行解码
		response.setContentType("text/html;charset=" + characterEncoding);
		chain.doFilter(request, response);
	}
	public void destroy() {

	}

}
