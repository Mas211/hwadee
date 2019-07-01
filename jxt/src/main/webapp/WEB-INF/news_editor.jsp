<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>新闻编辑</title>
	<!-- 引入ckeditor.js文件 -->
    <script src="../ckeditor/ckeditor.js"></script>
</head>
<body>
	<div style="width: 900px;margin: 0 auto;">
		<form>
	        <textarea name="editor1" id="editor1" rows="80" cols="80">
	        </textarea>
	        <script>
				var editorConfig = {
                    customConfig: 'editorConfig.js'
                };

                CKEDITOR.replace( 'editor1', editorConfig);

	            // // 替换 <textarea id="editor1">为CKEditor实例
	            // // 使用默认配置
	            // CKEDITOR.replace( 'editor1' );
	            //获取编辑器文本
	            CKEDITOR.instances.editor1.getData();
	            //设置编辑器初始文本
	            CKEDITOR.instances.editor1.setData( '<p>This is the editor data.</p>' );

	        </script>

	    </form>
	</div>
	
</body>
</html>