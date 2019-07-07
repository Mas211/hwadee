package com.jxt.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jxt.entity.Account;
import com.jxt.entity.Auth;
import com.jxt.service.AuthService;

public class AuthInterceptor implements HandlerInterceptor {

	@Autowired 
	private AuthService as;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		HttpSession session = request.getSession();
		Account account =(Account) session.getAttribute("account");
		if( null != account ) {
			
			List<Auth> list = as.getAuthByRoleId(account.getRoleId());
			for(Auth a : list) {
				if( uri.startsWith( a.getAuthPath()) ) {
					return true;
				}
				else {
					response.sendRedirect("/u/menu");
					return false;
				}
			}
		}
		response.sendRedirect("/login");
		return false;

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
