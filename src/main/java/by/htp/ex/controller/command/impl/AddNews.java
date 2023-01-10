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

public class AddNews implements Command{
	
	private final NewsService newsService = ServiceProvider.getInstance().getNewsService();
	
	private String TITLE = "title";
	private String BRIEF = "briefNews";
	private String CONTENT = "content";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter(TITLE);
		String brief = request.getParameter(BRIEF);
		String content = request.getParameter(CONTENT);
		
		Integer userId = (Integer)request.getSession().getAttribute("userId");		
		
		News news = new News(title, brief, content, userId);
		
		try {
			newsService.addNews(news);
			response.sendRedirect("controller?command=go_to_news_list"); 
		} catch (NewsServiceException e) {
			e.printStackTrace();
		}
		
		
	}

}
