<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>吉他谱列表|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
<link rel="stylesheet" href="/css/addons/uikit.addons.min.css" />
<script src="/js/jquery.min.js"></script>
<script src="/js/uikit.min.js"></script>
<script src="/js/addons/sticky.min.js"></script>
<script src="/js/addons/pagination.min.js"></script>
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
    		<li><a href="/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li <c:if test="${tabCategory == 'FINGER'}">class="uk-active"</c:if>><a href="/tab/list?tabCategory=FINGER"><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li <c:if test="${tabCategory == 'SONG'}">class="uk-active"</c:if>><a href="/tab/list?tabCategory=SONG"><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
    	<!-- 
    	<div class="uk-navbar-center">
    		<div class="uk-navbar-content">
    			<form class="uk-form uk-display-inline-block">
    				<div class="uk-form-icon">
    					<li class="uk-icon-search"></li>
	            		<input class="uk-form-width-medium" type="text" placeholder="曲名/歌手名">
	            	</div>
	    			<button class="uk-button">搜索</button>
	            </form>
    		</div>
    	</div>
    	 -->
    </nav>
</div>
<div class="uk-container uk-container-center uk-margin">
	<div class="uk-grid">
		<div class="uk-width-4-5">
			<table class="uk-table uk-table-hover">
			    <thead>
			        <tr>
			            <th><label class="uk-icon-music"></label>歌名/曲名</th>
			            <th><label class="uk-icon-microphone"></label>艺术家</th>
			            <th>供谱者</th>
			            <th><label class="uk-icon-eye"></label>浏览量</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<c:forEach items="${paging.list}" var="list">
				    	<tr>
				            <td><a href="/tab/detail/${list.tabNo}" title="${list.title}"><c:out value="${list.titleShort}"></c:out></a></td>
				            <td><a href="/tab/list?artistName=<c:out value="${list.artist}"></c:out>" title="<c:out value="${list.artist}"></c:out>"><c:out value="${list.artist}"></c:out></a></td>
				            <td><c:out value="${list.creator}"></c:out></td>
				            <td><c:out value="${list.viewCnt}"></c:out></td>
				        </tr>
			        </c:forEach>
			    </tbody>
			</table>
			<ul class="uk-pagination">
				<c:forEach var="pageNo" begin="1" end="${paging.pageCount}" step="1">
					<c:if test="${paging.currentPage == pageNo}">
						<li class="uk-active"><span>${pageNo}</span></li>
					</c:if>
					<c:if test="${paging.currentPage != pageNo}">
						<li><a href="?tabCategory=${tabCategory}&artistRegion=${artistRegion}&artistName=${artistName}&page=${pageNo}">${pageNo}</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		
		<div class="uk-width-1-5">
			<c:if test="${tabCategory != 'FINGER'}">
				<div class="uk-width-1-1">
					<h3>艺术家索引</h3>
				</div>
				<ul class="uk-list uk-list-space">
					<li>
						<a href="/tab/list?artistRegion=CN_MAN">华语男</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=CN_WOMEN">华语女</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=CN_GROUP">华语组合</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=EU_MAN">欧美男</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=EU_WOMEN">欧美女</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=EU_GROUP">欧美组合</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=JK_MAN">日韩男</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=JK_WOMEN">日韩女</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=JK_GROUP">日韩组合</a>
					</li>
					<li>
						<a href="/tab/list?artistRegion=OTHER">其他</a>
					</li>
				</ul>
			</c:if>
		</div>
		
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
