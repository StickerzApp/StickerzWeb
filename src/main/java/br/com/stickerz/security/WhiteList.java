package br.com.stickerz.security;

import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.digester.Digester;

import br.com.stickerz.utils.IOUtils;


public class WhiteList implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
	private String loginPage;
	private List<String> staticResources = new ArrayList<String>();

	private List<String> privatePatterns = new ArrayList<String>();
	private ArrayList<String> publicPatterns = new ArrayList<String>();
	private ArrayList<String> ignorePatterns = new ArrayList<String>();

	public WhiteList() {

	}

	public List<String> getStaticResources() {
		return staticResources;
	}

	public void addStaticResource(String staticResource) {
	    staticResources.add(staticResource);
	}

	public String getLoginPage() {
		return loginPage;
	}

	public void setLoginPage(String loginPage) {
		this.loginPage = loginPage;
	}

	public void addPrivate(String pattern) {
	    privatePatterns.add(pattern);
	}

	public void addPublic(String pattern) {
		publicPatterns.add(pattern);
	}

	public void addIgnore(String pattern) {
		ignorePatterns.add(pattern);
	}

	public boolean isLoginPage(String path) {
		return loginPage != null && path != null && path.startsWith(loginPage);
	}
	
    private String match(List<String> patterns, String path) {
        if (path == null || patterns == null) {
            return null;
        }
        for (String pattern : patterns) {
            if (PathMatcher.match(pattern, path)) {
                return pattern;
            }
        }
        return null;
    }
	
	public String matchStaticResource(String path) {
	    return match(staticResources, path);
	}
	
	public String matchPublic(String path) {
	    return match(publicPatterns, path);
	}
	
	public String matchPrivate(String path) {
        return match(privatePatterns, path);
    }
	
	public String matchIgnore(String path) {
        return match(ignorePatterns, path);
    }
	
	public String toString() {
	    StringBuilder buf = new StringBuilder();
	    buf.append("[ignore]");
	    for (String pattern : ignorePatterns) {
	        buf.append("\n    > " + pattern );
	    }
	    buf.append("\n[public]");
	    for (String pattern : publicPatterns) {
            buf.append("\n    > " + pattern );
        }
	    buf.append("\n[private]");
        for (String pattern : privatePatterns) {
            buf.append("\n    > " + pattern );
        }
	    return buf.toString();
	}
	
	public static final WhiteList create(InputStream iStream) {
		Digester digester = new Digester();
		digester.setValidating(false);
		digester.addObjectCreate("white-list", WhiteList.class.getCanonicalName());

		digester.addCallMethod("white-list/login-page", "setLoginPage", 0);
		digester.addCallMethod("white-list/static-resource", "addStaticResource", 0);
		
		digester.addCallMethod("white-list/ignore/pattern", "addIgnore", 0);
		digester.addCallMethod("white-list/public/pattern", "addPublic", 0);
		digester.addCallMethod("white-list/private/pattern", "addPrivate", 0);
		
		try {
			WhiteList whiteList = (WhiteList) digester.parse(iStream);
			return whiteList;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}


	public static void main(String[] args) {
	    InputStream iStream = null;
        try {
            iStream = WhiteList.class.getResourceAsStream("/white-list.xml");
            WhiteList whiteList = WhiteList.create(iStream);
            System.out.println(whiteList);
        } finally {
            IOUtils.close(iStream);         
        }
    }
	
}
