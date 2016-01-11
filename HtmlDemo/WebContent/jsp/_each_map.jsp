<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jQuery.each和map的区别</title>
<script type="text/javascript" src="../js/jQuery/jquery-1.11.1.js"></script>
<script type="text/javascript">
	<%--数组--%>
	var array = ["1","2","3"];
	
	$.each(array,function(key,value){
		console.log("key:"+key+" ,value:"+value);
	});
	console.log("~");
	$.map(array,function(value,key){
		console.log("key:"+key+" ,value:"+value);
	});
	console.log("------------------------------------");
	
	<%--each返回原数组，而map则返回新的数组--%>
	var newArray;
	newArray = $.each(array,function(i){
		return i + "@";
	});
	console.log("array:"+array);
	console.log("newArray:"+newArray);
	
	console.log("~");
	
	newArray = $.map(array,function(i){
		return i + "@";
	});
	console.log("array:"+array);
	console.log("newArray:"+newArray);
	
	console.log("------------------------------------");

	
	<%--对象--%>
	var obj = {"name":"zhangsan","age":14};
	
	$.each(obj,function(key,value){
		console.log("key:"+key+" ,value:"+value);
	});
	console.log("~");
	$.map(obj,function(value,key){
		console.log("key:"+key+" ,value:"+value);
	});
	console.log("------------------------------------");
	
	<%--对象数组--%>
	var objArray = [{"name":"zhangsan","age":14},{"name":"lisi","age":22}];
	$.each(objArray,function(key,value){
		var detail = value.name + " ," + value.age;
		console.log("key:"+key+" ,value:"+detail);
	});
	console.log("~");
	$.map(objArray,function(value,key){
		var detail = value.name + " ," + value.age;
		console.log("key:"+key+" ,value:"+detail);
	});
	console.log("------------------------------------");
	
</script>

</head>
<body>

</body>
</html>