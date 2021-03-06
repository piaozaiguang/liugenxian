<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>${detail.title} 吉他谱|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
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
			${detail.content}
			<p>
				<img src="/imgs/wechat_pay.png" title="微信打赏">
			</p>
		</div>
		<div class="uk-width-1-5 uk-margin" style="top:100px;">
			<table class="uk-table">
				<tr>
					<th>吉他谱名</th>
					<td>${detail.title}</td>
				</tr>
				<tr>
					<th>艺术家</th>
					<td><a href="/tab/list?artistName=${detail.artist}" title="${detail.artist}">${detail.artist}</a></td>
				</tr>
				<tr>
					<th>供谱者</th>
					<td>${detail.creator}</td>
				</tr>
				<tr>
					<th>分类</th>
					<td><a href="/tab/list?tabCategory=${detail.tabCategory.code}" title="${detail.tabCategory.text}">${detail.tabCategory.text}</a></td>
				</tr>
			</table>
			<c:if test="${detail.xiamiSid != 0}">
				<div class="uk-width-1-1">
					<h3><label class="uk-icon-play-circle"></label>原曲试听</h3>
					<script type="text/javascript" src="http://www.xiami.com/widget/player-single?uid=0&sid=${detail.xiamiSid}&mode=js"></script>
				</div>
			</c:if>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
