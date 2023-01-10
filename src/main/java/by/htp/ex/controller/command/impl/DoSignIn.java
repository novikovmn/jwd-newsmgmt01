package by.htp.ex.controller.command.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.htp.ex.bean.User;
import by.htp.ex.controller.command.Command;
import by.htp.ex.service.UserService;
import by.htp.ex.service.exception.UserServiceException;
import by.htp.ex.service.provider.ServiceProvider;

public class DoSignIn implements Command {

	private final UserService userService = ServiceProvider.getInstance().getUserService();

	private static final String JSP_LOGIN_PARAM = "login";
	private static final String JSP_PASSWORD_PARAM = "password";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login;
		String password;

		login = request.getParameter(JSP_LOGIN_PARAM);
		password = request.getParameter(JSP_PASSWORD_PARAM);

		try {

			User user = userService.signIn(login, password);
			
			if(user == null) {
				request.getSession(true).setAttribute("user", "not active");
				request.setAttribute("AuthenticationError", "wrong login or password");
				request.getRequestDispatcher("/WEB-INF/pages/layouts/baseLayout.jsp").forward(request, response);
			}else {
				request.getSession(true).setAttribute("user", "active");
				request.getSession(true).setAttribute("userId", user.getUserId());
				request.getSession(true).setAttribute("role", user.getRole());
				response.sendRedirect("controller?command=go_to_news_list");
			}

			
		} catch (UserServiceException e) {		
			request.setAttribute("exception", e);
			request.getRequestDispatcher("/WEB-INF/pages/tiles/logination-exception.jsp").forward(request, response);

		}

	}

}
