package by.htp.ex.controller.command.impl;

import java.io.IOException;
import java.util.List;

import by.htp.ex.bean.News;
import by.htp.ex.controller.command.Command;
import by.htp.ex.service.NewsService;
import by.htp.ex.service.exception.NewsServiceException;
import by.htp.ex.service.exception.UserServiceException;
import by.htp.ex.service.provider.ServiceProvider;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoToNewsList implements Command {
	
	private final NewsService newsService = ServiceProvider.getInstance().getNewsService();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<News> newsList;
		try {
			request.getSession(true).setAttribute("url", "http://localhost:8080/jwd-newsmgmt/controller?command=go_to_news_list");
			newsList = newsService.getList();
			request.setAttribute("news", newsList);
			request.setAttribute("presentation", "newsList");
			request.getRequestDispatcher("WEB-INF/pages/layouts/baseLayout.jsp").forward(request, response);
		} catch (NewsServiceException e) {
			e.printStackTrace();
		}
		
	}

}
