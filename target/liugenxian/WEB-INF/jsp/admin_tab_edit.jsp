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
<script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>

<style type="text/css">
label{margin-right:3px;}
.liugenxian {
font-family: Helvetica, STHeiti STXihei, Microsoft JhengHei, Microsoft YaHei, Tohoma, Arial;
}
</style>
</head>
<body>
<h1>Admin</h1>
<nav class="uk-navbar">
   	<ul class="uk-navbar-nav">
   		<li><a href="/admin/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
    	<li class="uk-active"><a href="/admin/tab/list"><label class="uk-icon-music"></label>吉他谱</a></li>
   	</ul>
   </nav>
<div class="uk-container uk-container-center uk-margin">
	<form class="uk-form">
	    <fieldset>
	        <legend>吉他谱</legend>
	        <div class="uk-form-row">
	        	<select id="tabCategory">
	        		<c:forEach var="category" items="${tabCategories}">
	        			<option value="${category.code}" <c:if test="${tabDetail.tabCategory.code == category.code}">selected</c:if>>${category.text}</option>
	        		</c:forEach>
	        	</select>
	        </div>
	        <div class="uk-form-row">
	        	<input id="title" type="text" placeholder="吉他谱名" class="uk-form-width-large" value="${tabDetail.title}">
	        </div>
	        <div class="uk-form-row">
	        	<select id="region">
		        	<c:forEach var="region" items="${artistRegions}">
		        		<option value="${region.code}" <c:if test="${tabDetail.artistObj.artistRegion.code == region.code}">selected</c:if>>${region.text}</option>
		        	</c:forEach>
	        	</select>
	        </div>
	        <div class="uk-form-row">
	        	<input id="artist" type="text" placeholder="艺术家" class="uk-form-width-medium" value="${tabDetail.artist}">
	        </div>
	        <div class="uk-form-row">
	        	<select id="idx">
	        		<c:forEach var="index" items="${artistIndexes}">
	        			<option value="${index.code}" <c:if test="${tabDetail.artistObj.artistIdx.code == index.code}">selected</c:if>>${index.text}</option>
	        		</c:forEach>
	        	</select>
	        </div>
	        <div class="uk-form-row">
	        	<input id="creator" type="text" placeholder="制谱者" class="uk-form-width-medium" value="${tabDetail.creator}">
	        </div>
	        <div class="uk-form-row">
	        	<input id="xiamiSid" type="text" placeholder="虾米Sid" class="uk-form-width-medium" value="${tabDetail.xiamiSid}">
	        </div>
	        <div class="uk-form-row">
	        	<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
	        </div>
	        <hr>
	        <a class="uk-button" id="save" href="javascript:void(0);">提交</a>
	    </fieldset>
	</form>
</div>
<nav class="uk-navbar">
	<div class="uk-container uk-container-center uk-text-center" style="padding:25px 0;">
        <div class="uk-panel">
            <label class="uk-icon-envelope"></label>zaiguang.piao@gmail.com
            <h2 class="liugenxian">六根弦</h2>
        </div>
    </div>
</nav>
<script type="text/javascript">
	var _tabNo = '${tabDetail.tabNo}';
	var _artistNo = '${tabDetail.artistObj.artistNo}';
	var _content = '${tabDetail.content}'; 
	//实例化编辑器
	var ue = UE.getEditor('editor');
	ue.addListener("ready", function () {
	    ue.setContent(_content);
	
	});
	$(function(){
	    $('#save').click(function(){
	    	 var formData = {
	    		 tabNo: _tabNo,
	    		 tabCategory: $("#tabCategory").val(),
	           	 title: $("#title").val(), 
	           	 artist: $("#artist").val(),
	           	 artistObj: {
	           		 artistNo: _artistNo,
	           		 artistRegion: $("#region").val(),
		           	 artistName: $("#artist").val(),
		           	 artistIdx: $("#idx").val()
	           	 },
	           	 content: ue.getContent(),
	           	 creator: $("#creator").val(),
	           	 xiamiSid: $("#xiamiSid").val()
	         };
	         $.ajax({
	             type: "post",
	             url: "/admin/tab/save",
	             dataType: "text",
	             contentType: "application/json",
	             data: JSON.stringify(formData),
	             success: function(data) {
	             	alert('success !');
	             }
	         });
	    });
	});
</script>
</body>
</html>
