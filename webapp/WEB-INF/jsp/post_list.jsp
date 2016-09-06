<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>吉他文章列表|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
<link rel="stylesheet" href="/css/addons/uikit.addons.min.css" />
<script src="/js/jquery.min.js"></script>
<script src="/js/uikit.min.js"></script>
<script src="/js/addons/sticky.min.js"></script>
<style type="text/css">
label{margin-right:3px;}
.liugenxian {
font-family: Helvetica, STHeiti STXihei, Microsoft JhengHei, Microsoft YaHei, Tohoma, Arial;
}
</style>
<script type="text/javascript">
(function($){
	$(function() {
		$(window).scroll(function(){
		    if ($(window).scrollTop()>200){
		        $("#goTop").fadeIn(300);
		    }else{
		        $("#goTop").fadeOut(200);
		    }
		});
	});
})(jQuery);
</script>
</head>
<body>
<img style="padding-left:10px;" alt="六根弦" src="/imgs/logo-new.png">
<div data-uk-sticky>
	<nav class="uk-navbar">
    	<ul class="uk-navbar-nav">
    		<li><a href="/"><label class="uk-icon-home"></label>主页</a></li>
    		<li class="uk-active"><a href="/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li><a href="/tab/list?tabCategory=FINGER"><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li><a href="/tab/list?tabCategory=SONG"><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
    </nav>
</div>
<div class="uk-container uk-container-center uk-margin">
	<article class="uk-article">
		<c:forEach items="${paging.list}" var="list">
	    	<h1 class="uk-article-title" title="${list.title}">${list.titleShort}</h1>
	    	<p class="uk-article-meta"><joda:format value="${list.modYmdt}" style="FM"/> ${list.creator}</p>
		    <p>
			    ${list.contentShort}
			</p>
			<a href="/post/detail/${list.postNo}">Read more</a>
		    <hr class="uk-article-divider">
        </c:forEach>
	</article>
	<ul class="uk-pagination">
		<c:forEach var="pageNo" begin="1" end="${paging.pageCount}" step="1">
			<c:if test="${paging.currentPage == pageNo}">
				<li class="uk-active"><span>${pageNo}</span></li>
			</c:if>
			<c:if test="${paging.currentPage != pageNo}">
				<li><a href="?page=${pageNo}">${pageNo}</a></li>
			</c:if>
		</c:forEach>
	</ul>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
