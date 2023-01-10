package by.htp.ex.controller.command.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import by.htp.ex.controller.command.Command;

public class SwitchLocale implements Command{
	
	private final String LOCALE = "locale";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String theLocale = request.getParameter(LOCALE);
		
		HttpSession session = request.getSession(true);
		session.setAttribute("theLocale", theLocale);		
		
		String redirectTo = (String)session.getAttribute("url");
		
		response.sendRedirect(redirectTo);
		
		
	}

}
