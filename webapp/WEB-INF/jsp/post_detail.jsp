<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>${postDetail.title}|六根弦</title>
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
    		<li class="uk-active"><a href="/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li><a href="/tab/list?tabCategory=FINGER"><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li><a href="/tab/list?tabCategory=SONG"><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
    </nav>
</div>

<div class="uk-container uk-container-center uk-margin">
	<article class="uk-article">
		<h1 class="uk-article-title">${postDetail.title}</h1>
	    <p class="uk-article-meta"><joda:format value="${postDetail.modYmdt}" style="FM"/> ${postDetail.creator}</p>
	    <hr class="uk-article-divider">
	    <p>
		    ${postDetail.content}
		</p>
	</article>
	<!-- 多说评论框 start -->
	<div class="ds-thread" data-thread-key="${postDetail.postNo}" data-title="${postDetail.title}" data-url="${serverName}post/detail/${postDetail.postNo}"></div>
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
