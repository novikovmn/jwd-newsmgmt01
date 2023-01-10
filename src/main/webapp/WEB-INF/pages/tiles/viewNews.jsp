<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	function checkDelete() {
	    if (confirm("Are you sure?")) {
	        return true;
	    } else {
	        return false;
	    }
	}
</script>

<div class="body-title">
	<a href="controller?command=go_to_news_list">News >> </a> View News
</div>

<div class="add-table-margin">
	<table class="news_text_format">
		<tr>
			<td class="space_around_title_text">News Title</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${requestScope.news.title }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">News Date</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${requestScope.news.newsDate }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Brief</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${requestScope.news.briefNews }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Content</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${requestScope.news.content }" />
				</div></td>
		</tr>
	</table>
</div>

<!-- EDIT button  -->

<c:if test="${sessionScope.role eq 'admin'}">
	<div class="first-view-button">
		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_edit_page" /> 
			<input type="hidden" name="id" value="${requestScope.news.idNews}" /> 
			<input type="submit" value="Edit" />
		</form>
	</div>
	
<!-- DELETE button  -->
	
	<div class="second-view-button">
		<form action="controller" method="post" onsubmit="return checkDelete()">
			<input type="hidden" name="command" value="delete_news" /> 
			<input type="hidden" name="id" value="${requestScope.news.idNews}" /> 
			<input type="submit" value="Delete" />
		</form>
	</div>
</c:if>