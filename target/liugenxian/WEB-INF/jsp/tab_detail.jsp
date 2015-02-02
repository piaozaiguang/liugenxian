<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>${detail.title} 吉他谱|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
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
    		<li><a href="/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li><a href="/tab/list"><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li><a href="/tab/list"><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
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
    </nav>
</div>

<div class="uk-container uk-container-center uk-margin">
	<div class="uk-grid">
		<div class="uk-width-4-5">
			${detail.content}
			<!-- 多说评论框 start -->
			<div class="ds-thread" data-thread-key="${detail.tabNo}" data-title="${detail.title} 吉他谱" data-url="${serverName}/tab/detail/${detail.tabNo}"></div>
			<!-- 多说评论框 end -->
			<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
			<script type="text/javascript">
			var duoshuoQuery = {short_name:"liugenxian"};
				(function() {
					var ds = document.createElement('script');
					ds.type = 'text/javascript';ds.async = true;
					ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
					ds.charset = 'UTF-8';
					(document.getElementsByTagName('head')[0] 
					 || document.getElementsByTagName('body')[0]).appendChild(ds);
				})();
			</script>
			<!-- 多说公共JS代码 end -->
		</div>
		<div class="uk-width-1-5 uk-margin" style="top:100px;">
			<table class="uk-table">
				<tr>
					<th>吉他谱名</td>
					<td>${detail.title}</td>
				</tr>
				<tr>
					<th>艺术家</td>
					<td><a href>${detail.artist}</a></td>
				</tr>
				<tr>
					<th>供谱者</td>
					<td><a href>${detail.creator}</a></td>
				</tr>
				<tr>
					<th>分类</td>
					<td><a href>${detail.tabCategory.text}</a></td>
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
<a id="goTop" class="uk-button" data-uk-smooth-scroll="" style="right:30px;bottom:30px;position:fixed;display:none;">
	<li class="uk-icon-chevron-up"></li>
</a>
<nav class="uk-navbar">
	<div class="uk-container uk-container-center uk-text-center" style="padding:25px 0;">
        <div class="uk-panel">
            <label class="uk-icon-envelope"></label>zaiguang.piao@gmail.com
            <h2 class="liugenxian">六根弦</h2>
        </div>
    </div>
</nav>
</body>
</html>