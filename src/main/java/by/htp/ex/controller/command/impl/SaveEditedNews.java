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

public class SaveEditedNews implements Command{
	
	private final NewsService newsService = ServiceProvider.getInstance().getNewsService();
	
	private final String ID_NEWS = "idNews";
	private final String TITLE = "title";
	private final String BRIEF_NEWS = "briefNews";
	private final String CONTENT = "content";	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idNews = Integer.parseInt(request.getParameter(ID_NEWS));
		String title = request.getParameter(TITLE);
		String briefNews = request.getParameter(BRIEF_NEWS);
		String content = request.getParameter(CONTENT);
		
		News news = new News(idNews, title, briefNews, content); 
		
		try {
			newsService.editNews(news);
			response.sendRedirect("controller?command=go_to_news_list"); 
		} catch (NewsServiceException e) {
			e.printStackTrace();
		}
		
	}

}
