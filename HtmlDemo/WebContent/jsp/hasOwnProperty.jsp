<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>熟悉hasOwnProperty方法</title>
</head>
<body>

</body>
<script type="text/javascript" src="../js/jQuery/jquery-1.11.1.js"></script>
<script>
	$(function(){
		test();
	})

function test(){
	var obj = new Object();

	console.log(obj.hasOwnProperty("pro"));
	//添加属性
	obj.pro='1';
	console.log(obj.hasOwnProperty("pro"));
	//删除属性
	delete obj.pro;
	console.log(obj.hasOwnProperty("pro"));
}

</script>

</html>