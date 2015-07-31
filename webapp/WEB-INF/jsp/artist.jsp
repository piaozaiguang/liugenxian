<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>艺人列表|六根弦</title>
<link rel="stylesheet" href="/css/uikit.min.css" />
<script src="/js/jquery.min.js"></script>
<script src="/js/uikit.min.js"></script>
<script src="/js/addons/sticky.min.js"></script>
<style type="text/css">
label{margin-right:3px;}
.liugenxian {
font-family: Helvetica, STHeiti STXihei, Microsoft JhengHei, Microsoft YaHei, Tohoma, Arial;
}
.artist li {
float:left; margin-right:15px;width:123px;padding:5px 0;
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
    		<li><a href><label class="uk-icon-home"></label>主页</a></li>
    		<li class="uk-active"><a href><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li><a href><label class="uk-icon-music"></label>指弹谱</a></li>
	    	<li><a href><label class="uk-icon-microphone"></label>弹唱谱</a></li>
    	</ul>
    </nav>
</div>
<div class="uk-container uk-container-center uk-margin">
	<div class="uk-grid">
		<div class="uk-width-1-1">
			<ul class="uk-tab" data-uk-tab="{connect:'#region-tab'}">
				<li><a href="">全部</a></li>
			    <li><a href="">华语男</a></li>
			    <li><a href="">华语女</a></li>
			    <li><a href="">华语组合</a></li>
			    <li><a href="">欧美男</a></li>
			    <li><a href="">欧美女</a></li>
			    <li><a href="">欧美组合</a></li>
			    <li><a href="">日韩男</a></li>
			    <li><a href="">日韩女</a></li>
			    <li><a href="">日韩组合</a></li>
			    <li><a href="">其他</a></li>
			</ul>
			
			<ul id="region-tab" class="uk-switcher uk-margin">
			    <li class="uk-active">
			    	<div class="uk-container uk-container-center uk-margin">
						<ul class="uk-subnav uk-subnav-line">
						    <li><a href>0~9</a></li>
						    <li><a href>A</a></li>
						    <li><a href>B</a></li>
						    <li><a href>C</a></li>
						    <li><a href>D</a></li>
						    <li><a href>E</a></li>
						    <li><a href>F</a></li>
						    <li><a href>G</a></li>
						    <li><a href>H</a></li>
						    <li><a href>I</a></li>
						    <li><a href>J</a></li>
						    <li><a href>K</a></li>
						    <li><a href>L</a></li>
						    <li><a href>M</a></li>
						    <li><a href>N</a></li>
						    <li><a href>O</a></li>
						    <li><a href>P</a></li>
						    <li><a href>Q</a></li>
						    <li><a href>R</a></li>
						    <li><a href>S</a></li>
						    <li><a href>T</a></li>
						    <li><a href>U</a></li>
						    <li><a href>V</a></li>
						    <li><a href>W</a></li>
						    <li><a href>X</a></li>
						    <li><a href>Y</a></li>
						    <li><a href>Z</a></li>
						</ul>
					</div>
					<!-- artist start -->
					<ul class="uk-list uk-list-line">
						<li>
							<h3>A</h3>
							<ul class="artist">
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							    <li><a href>阿杜</a></li>
							    <li><a href>阿牛</a></li>
							</ul>
						</li>
						<li>
							<h3>B</h3>
							<ul class="artist">
							    <li><a href>Beyond</a></li>
							</ul>
						</li>
						<li>
							<h3>C</h3>
							<ul class="artist">
							    <li><a href>蔡依林</a></li>
							    <li><a href>陈小春</a></li>
							</ul>
						</li>
					</ul>
					<!-- artist end -->
				</li>
				<li>
				
				</li>
				<li>
				
				</li>
			</ul>
		</div>
	</div>	
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
