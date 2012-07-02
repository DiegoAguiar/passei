package br.com.passei.filtro;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class filtroFavoritos implements javax.servlet.Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		long tempoInicial = System.currentTimeMillis();
		chain.doFilter(req, res);
		long tempoFinal = System.currentTimeMillis();
		String uri = ((HttpServletRequest) req).getRequestURI();

		System.out.println(uri+' '+(tempoFinal-tempoInicial));
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
