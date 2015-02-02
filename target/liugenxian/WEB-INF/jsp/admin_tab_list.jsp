<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<title>Admin</title>
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
</head>
<body>
<h1>Admin</h1>
<div data-uk-sticky>
	<nav class="uk-navbar">
    	<ul class="uk-navbar-nav">
    		<li><a href="/admin/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
	    	<li class="uk-active"><a href="/admin/tab/list"><label class="uk-icon-music"></label>吉他谱</a></li>
    	</ul>
    </nav>
</div>
<div class="uk-container uk-container-center uk-margin">
	<table class="uk-table uk-table-hover">
	    <caption>文章列表</caption>
	    <thead>
	        <tr>
	            <th>番号</th>
	            <th>标题</th>
	            <th>艺术家</th>
	            <th>内容</th>
	            <th>制谱者</th>
	            <th>编辑</th>
	            <th>删除</th>
	        </tr>
	    </thead>
	        
	    <tbody>
	    	<c:forEach items="${paging.list}" var="list">
		    	<tr>
		            <td><c:out value="${list.tabNo}"></c:out></td>
		            <td><c:out value="${list.title}"></c:out></td>
		            <td><c:out value="${list.artist}"></c:out></td>
		            <td><c:out value="${list.content}"></c:out></td>
		            <td><c:out value="${list.creator}"></c:out></td>
		            <td><a class="uk-button uk-button-primary" href="/admin/tab/edit/${list.tabNo}">编辑</a></td>
		            <td><a class="uk-button uk-button-danger" href="/admin/tab/delete/${list.tabNo}">删除</a></td>
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
				<li><a href="?page=${pageNo}">${pageNo}</a></li>
			</c:if>
			
		</c:forEach>
	</ul>
</div>
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
