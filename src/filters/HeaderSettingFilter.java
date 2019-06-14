package filters;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "HeaderSettingFilter", urlPatterns = { "/*" })
public class HeaderSettingFilter implements Filter {
    private static final Logger log = LoggerFactory.getLogger(HeaderSettingFilter.class);
  
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        log.info("All headers added to response");
        
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.setHeader("X-XSS-Protection", "1; mode=block");
        response.setHeader("X-Frame-Options", "deny");
        response.setHeader("X-Content-Type-Options", "nosniff");

        System.out.println("All headers added to response");
        
        filterChain.doFilter(servletRequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}