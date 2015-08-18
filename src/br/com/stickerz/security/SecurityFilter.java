package br.com.stickerz.security;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import br.com.stickerz.utils.IOUtils;


public class SecurityFilter implements Filter {

    private final Logger logger = Logger.getLogger(SecurityFilter.class);
    
	private WhiteList whiteList;
	private FilterConfig config;
	
	public FilterConfig getConfig() {
		return config;
	}
	
	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config = config;
		initWhiteList();
	}
	
	private void initWhiteList() {
		InputStream iStream = null;
		try {
			iStream = config.getServletContext().getResourceAsStream("/WEB-INF/classes/white-list.xml");
			whiteList = WhiteList.create(iStream);
		} finally {
			IOUtils.close(iStream);			
		}
	}
	
	@Override
	public void destroy() {

	}
	
	private void noCache(HttpServletResponse response) {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate,max-age=0");
		response.setDateHeader("Expires", -1);
		response.setDateHeader("max-age", 0);
	}
	
	private boolean isAuthenticated(HttpSession session) {
	    Boolean loggedUser = (session == null) ? null : (Boolean) session.getAttribute("loggedUser");
	    return loggedUser == null ? false : loggedUser.booleanValue();
	}

	private void removeSessionAttributes(HttpSession session) {
	    Enumeration<?> en = session.getAttributeNames();
        while (en.hasMoreElements()) {
            String name = (String) en.nextElement();
            if (name.startsWith("__MessageStoreInterceptor")) {
                continue;
            }
            if (logger.isDebugEnabled()) {
                logger.debug("Remove attribute from session: " + name);
            }
            session.removeAttribute(name);
	    }
	}
	
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
		throws IOException, ServletException {
		
		final HttpServletRequest request = (HttpServletRequest) servletRequest;
		final HttpServletResponse response = createHttpServletResponse(servletResponse);
		final HttpSession session = request.getSession(false);
		
		String servletPath = request.getServletPath();
		boolean isMethodGET = "GET".equalsIgnoreCase(request.getMethod());
		String pattern;
		
		pattern = whiteList.matchStaticResource(servletPath);
		if (pattern != null) {
		    if (logger.isDebugEnabled()) {
                logger.debug("Request static resource - servletPath : " + servletPath + " [" + pattern + "] (allowed)");
            }
			chain.doFilter(request, response);
			return;
		}
		
		noCache(response);
		
		if (whiteList.isLoginPage(servletPath) && isMethodGET) {
		    if (logger.isDebugEnabled()) {
	            logger.debug("Request login page - servletPath : " + servletPath);
	        }
			if (session != null) {
			    removeSessionAttributes(session);
			}
			chain.doFilter(request, response);
            return;
		}
		
		pattern = whiteList.matchIgnore(servletPath);
		if (pattern != null) {
		    if (logger.isDebugEnabled()) {
                logger.debug("Request ignored resouce - servletPath : " +  servletPath + " (" + pattern + ") (allowed)");
            }
			return;
		}
		
		pattern = whiteList.matchPublic(servletPath);
		if (pattern != null) {
            if (logger.isDebugEnabled()) {
                logger.debug("Request public resource - servletPath : " + servletPath + " (" + pattern + ") (allowed)");
            }
			chain.doFilter(request, response);
			return;
		}

		if (!isAuthenticated(session)) {
		    if (logger.isDebugEnabled()) {
                logger.debug("Request private resource - servletPath : " + servletPath + " (denied) (unauthenticated user)");
            }
		    
		    response.sendRedirect(request.getContextPath()+whiteList.getLoginPage());
		    return;
		} 
	    
		pattern = whiteList.matchPrivate(servletPath);
		if (pattern != null) {
    	    if (logger.isDebugEnabled()) {
                logger.debug("Request private resource - servletPath : " + servletPath + " (" + pattern + ") (allowed)");
            }
    		chain.doFilter(request, response);
    		return;
		}
		
		 if (logger.isDebugEnabled()) {
		     logger.debug("request nonexistent or blocked action - servletPath : " + servletPath + " (" + pattern + ") (denied)");
         }
         response.sendError(HttpServletResponse.SC_FORBIDDEN, "ACCESS DENIED - Ação inexistente ou bloqueada");
	}

	private HttpServletResponse createHttpServletResponse(ServletResponse response) {
		return new HttpServletResponseWrapper((HttpServletResponse)response) {
			@Override
			public String encodeRedirectUrl(final String url) {
				return url;
			}

			@Override
			public String encodeRedirectURL(final String url) {
				return url;
			}

			@Override
			public String encodeUrl(final String url) {
				return url;
			}

			@Override
			public String encodeURL(final String url) {
				return url;
			}
		};
	}

}
