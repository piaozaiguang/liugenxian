<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>吉他谱,吉他文章|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
<link rel="stylesheet" href="/css/addons/uikit.addons.min.css" />
<link rel="stylesheet" href="/css/nprogress.css" />
<script src="/js/jquery.min.js"></script>
<script src="/js/uikit.min.js"></script>
<script src="/js/addons/sticky.min.js"></script>
<script src="/js/nprogress.js"></script>
<style type="text/css">
label{margin-right:3px;}
.liugenxian {
font-family: Helvetica, STHeiti STXihei, Microsoft JhengHei, Microsoft YaHei, Tohoma, Arial;
}
</style>
<script type="text/javascript">
(function($){
	$(document).ready(function() {
		NProgress.start();
	});
	$(window).load(function(){
		$(window).scroll(function(){
		    if ($(window).scrollTop()>200){
		        $("#goTop").fadeIn(300);
		    }else{
		        $("#goTop").fadeOut(200);
		    }
		});
		NProgress.done();
	});
})(jQuery);
</script>
</head>
<body>
<img style="padding-left:10px;" title="六根弦" alt="六根弦" src="/imgs/liugenxian_logo.png">
<div data-uk-sticky>
	<nav class="uk-navbar">
    	<ul class="uk-navbar-nav">
    		<li class="uk-active"><a href="/"><label class="uk-icon-home"></label>主页</a></li>
    		<li><a href="/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li><a href="/tab/list?tabCategory=FINGER"><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li><a href="/tab/list?tabCategory=SONG"><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
    </nav>
</div>
<div class="uk-container uk-container-center uk-margin">
	<div class="uk-grid uk-grid-divider">
	    <div class="uk-width-1-2">
	    	<ul class="uk-tab" data-uk-tab="{connect:'#content-tab'}">
			    <li><a href=""><label class="uk-icon-leaf"></label>最新文章</a></li>
			    <li><a href=""><label class="uk-icon-fire"></label>热门文章</a></li>
			</ul>
			
			<ul id="content-tab" class="uk-switcher uk-margin">
			    <li class="uk-active">
			    	<table class="uk-table uk-table-hover">
					    <thead>
					        <tr>
					            <th><label class="uk-icon-file-text-o"></label>题目</th>
					            <th><label class="uk-icon-calendar"></label>日期</th>
					            <th><label class="uk-icon-eye"></label>浏览次数</th>
					        </tr>
					    </thead>
					    <tbody>
					    	<c:forEach items="${latestPost.list}" var="latestPost">
					    		<tr>
						            <td><a href="/post/detail/${latestPost.postNo}" title="${latestPost.title}">${latestPost.titleShort}</a></td>
						            <td><joda:format value="${latestPost.modYmdt}" style="MM"/></td>
						            <td>${latestPost.viewCnt}</td>
					        	</tr>
					    	</c:forEach>
					    </tbody>
					</table>
			    </li>
			    <li>
			    	<table class="uk-table uk-table-hover">
					    <thead>
					        <tr>
					            <th><label class="uk-icon-file-text-o"></label>题目</th>
					            <th><label class="uk-icon-calendar"></label>日期</th>
					            <th><label class="uk-icon-eye"></label>浏览次数</th>
					        </tr>
					    </thead>
					    <tbody>
					    	<c:forEach items="${popularPost.list}" var="popularPost">
					    		<tr>
						            <td><a href="/post/detail/${popularPost.postNo}" title="${popularPost.title}">${popularPost.titleShort}</a></td>
						            <td><joda:format value="${popularPost.modYmdt}" style="MM"/></td>
						            <td>${popularPost.viewCnt}</td>
					        	</tr>
					    	</c:forEach>
					    </tbody>
					</table>
			    </li>
			</ul>
	    </div>
	    <div class="uk-width-1-2">
	    	<ul class="uk-tab" data-uk-tab="{connect:'#music-tab'}">
			    <li><a href=""><label class="uk-icon-leaf"></label>最新吉他谱</a></li>
			    <li><a href=""><label class="uk-icon-fire"></label>热门吉他谱</a></li>
			</ul>
			
			<ul id="music-tab" class="uk-switcher uk-margin">
			    <li class="uk-active">
			    	<table class="uk-table uk-table-hover">
					    <thead>
					        <tr>
					            <th><label class="uk-icon-music"></label>歌名/曲名</th>
					            <th><label class="uk-icon-microphone"></label>艺人</th>
					            <th><label class="uk-icon-book"></label>分类</th>
					        </tr>
					    </thead>
					    <tbody>
					    	<c:forEach items="${latestTab.list}" var="latestTab"> 
					    		<tr>
						            <td><a href="/tab/detail/${latestTab.tabNo}" title="${latestTab.title}">${latestTab.titleShort}</a></td>
						            <td><a href="/tab/list?artistName=${latestTab.artist}" title="${latestTab.artist}">${latestTab.artist}</a></td>
						            <td><a href="/tab/list?tabCategory=${latestTab.tabCategory.code}" title="${latestTab.tabCategory.text}">${latestTab.tabCategory.text}</a></td>
						        </tr>
					    	</c:forEach>
					    </tbody>
					</table>
			    </li>
			    <li>
			    	<table class="uk-table uk-table-hover">
					    <thead>
					        <tr>
					            <th><label class="uk-icon-music"></label>歌名/曲名</th>
					            <th><label class="uk-icon-microphone"></label>艺人</th>
					            <th><label class="uk-icon-book"></label>分类</th>
					        </tr>
					    </thead>
					    <tbody>
					    	<c:forEach items="${popularTab.list}" var="popularTab"> 
					    		<tr>
						            <td><a href="/tab/detail/${popularTab.tabNo}" title="${popularTab.title}">${popularTab.titleShort}</a></td>
						            <td><a href="/tab/list?artistName=${popularTab.artist}" title="${popularTab.artist}">${popularTab.artist}</a></td>
						            <td><a href="/tab/list?tabCategory=${popularTab.tabCategory.code}" title="${popularTab.tabCategory.text}">${popularTab.tabCategory.text}</a></td>
						        </tr>
					    	</c:forEach>
					    </tbody>
					</table>
			    </li>
			</ul>
	    </div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
