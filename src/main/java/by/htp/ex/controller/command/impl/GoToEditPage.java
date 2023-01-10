package by.htp.ex.controller.command.impl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.htp.ex.bean.News;
import by.htp.ex.controller.command.Command;
import by.htp.ex.service.NewsService;
import by.htp.ex.service.exception.NewsServiceException;
import by.htp.ex.service.provider.ServiceProvider;

public class GoToEditPage implements Command {
	
	private final NewsService newsService = ServiceProvider.getInstance().getNewsService();

	private final String ID = "id";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		News news = null;
		
		int idNews = Integer.parseInt(request.getParameter(ID));
		
		try {
			request.getSession(true).setAttribute("url", "http://localhost:8080/jwd-newsmgmt/controller?command=go_to_edit_page&id=" + idNews);
			news = newsService.fetchById(idNews);
			request.setAttribute("news", news);
			request.setAttribute("presentation", "editNews");
			request.getRequestDispatcher("WEB-INF/pages/layouts/baseLayout.jsp").forward(request, response);
		} catch (NewsServiceException e) {
			e.printStackTrace();
		}

	}

}
