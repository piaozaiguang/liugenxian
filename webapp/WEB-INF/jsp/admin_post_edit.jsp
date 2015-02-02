<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
   		<li class="uk-active"><a href="/admin/post/list"><label class="uk-icon-file-text-o"></label>文章</a></li>
    	<li><a href="/admin/tab/list"><label class="uk-icon-music"></label>吉他谱</a></li>
   	</ul>
   </nav>
<div class="uk-container uk-container-center uk-margin">
	<form class="uk-form">
	    <fieldset>
	        <legend>文章</legend>
	        <div class="uk-form-row">
	        	<input type="text" id="title" placeholder="标题" class="uk-form-width-large" value="${postDetail.title}">
	        </div>
	        <div class="uk-form-row">
	        	<input type="text" id="creator" placeholder="作者" class="uk-form-width-medium" value="${postDetail.creator}">
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
	var _postNo = '${postDetail.postNo}';
	var _content = '${postDetail.content}'; 
    //实例化编辑器
    var ue = UE.getEditor('editor');
    ue.addListener("ready", function () {
        ue.setContent(_content);

	});
    $(function(){
        $('#save').click(function(){
        	 var formData = {
        		 postNo: _postNo,
               	 title: $("#title").val(), 
               	 content: ue.getContent(),
               	 creator: $("#creator").val()
             };
             $.ajax({
                 type: "post",
                 url: "/admin/post/save",
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
