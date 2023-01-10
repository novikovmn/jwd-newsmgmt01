<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="body-title">
	<a href="controller?command=go_to_news_list">News >> </a> Edit News
</div>


<div class="add-table-margin">
	<form action="controller" method="post">
	
		<input type="hidden" name="command" value="save_edited_news"/>
		<input type="hidden" name="idNews" value="${requestScope.news.idNews}"/>
		
		<table class="news_text_format">
			<tr>
				<td class="space_around_title_text">
					News Title
				</td>
				<td class="space_around_view_text">
					<div class="word-breaker">
						<input type="text" name="title" value="${requestScope.news.title}"/>
					</div>
				</td>
			</tr>
							
			<tr>
				<td class="space_around_title_text">
					News Date
				</td>
				<td class="space_around_view_text">
					<div class="word-breaker">
						<c:out value="${requestScope.news.newsDate}" />
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="space_around_title_text">
					Brief
				</td>
				<td class="space_around_view_text">
					<div class="word-breaker">
						<input type="text" name="briefNews" value="${requestScope.news.briefNews}"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="space_around_title_text">
					Content
				</td>
				<td class="space_around_view_text">
					<div class="word-breaker">
						<textarea rows="7" cols="60" name="content">
							${requestScope.news.content }
						</textarea>
					</div>
				</td>
			</tr>
		</table>
		
		<!-- SAVE button  -->
		
		<c:if test="${sessionScope.role eq 'admin'}">
			<div class="first-view-button">
				<input type="submit" value="SAVE" />
			</div>
		</c:if>
		
	</form>
</div>

	<!-- CANCEL button  -->
	
	<c:if test="${sessionScope.role eq 'admin'}">
		<div class="second-view-button">
			<form action="controller" method="post">
				<input type="hidden" name="command" value="go_to_news_list" /> 
				<input type="submit" value="CANCEL" />
			</form>
		</div>
	</c:if>




