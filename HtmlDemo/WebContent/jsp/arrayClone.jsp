<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试复制数组</title>
<script type="text/javascript" src="../js/jQuery/jquery-1.11.1.js"></script>
<script type="text/javascript">

$().ready(function(){
	//测试 slice 方法进行复制
	//普通数组，修改生成的数组不影响原数组.
	//testSlice1();
	//对象数组，修改生成的数组影响原数组!
	//testSlice2();
	
	
	//测试 concat 方法进行复制
	//普通数组，修改生成的数组不影响原数组.
	//testconcat1();
	//对象数组，修改生成的数组影响原数组!
	//testconcat2();
	
	
	//测试 extend 方法进行复制
	//普通数组+浅复制，修改生成的数组不影响原数组.
	testExtend1();
	//对象数组+浅复制，修改生成的数组影响原数组!
	testExtend2();
	//对象数组+深复制，修改生成的数组不影响原数组!!!
	testExtend3();
});

function testExtend1(){
	var array = new Array();
	array[0]="0";
	array[1]="1";
	console.log("修改前=>array:"+array);
	
	var newArray = $.extend(false,[],array);
	newArray[0]="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组没有变
	debugger;
}

function testExtend2(){
	var array = new Array();
	array[0]={name:"0"};
	array[1]={name:"1"};
	console.log("修改前=>array:"+array);
	
	var newArray = $.extend(false,[],array);
	newArray[0].name="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组也跟着变了
	debugger;
}

function testExtend3(){
	var array = new Array();
	array[0]={name:"0"};
	array[1]={name:"1"};
	console.log("修改前=>array:"+array);
	
	var newArray = $.extend(true,[],array);
	newArray[0].name="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组没有变
	debugger;
}

function testconcat1(){
	var array = new Array();
	array[0]="0";
	array[1]="1";
	console.log("修改前=>array:"+array);
	
	var newArray = array.concat();
	newArray[0]="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组没有变
	debugger;
}

function testconcat2(){
	var array = new Array();
	array[0]={name:"0"};
	array[1]={name:"1"};
	console.log("修改前=>array:"+array);
	
	var newArray = array.concat();
	newArray[0].name="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组也跟着变了
	debugger;
}

function testSlice1(){
	var array = new Array();
	array[0]="0";
	array[1]="1";
	console.log("修改前=>array:"+array);
	
	var newArray = array.slice(0);
	newArray[0]="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组没有变
	debugger;
}

function testSlice2(){
	var array = new Array();
	array[0]={name:"0"};
	array[1]={name:"1"};
	console.log("修改前=>array:"+array);
	
	var newArray = array.slice(0);
	newArray[0].name="00";
	console.log("修改后=>array:"+array+",newArray:"+newArray);
	//原始的数组也跟着变了
	debugger;
}

</script>


</head>
<body>
   <h3>打开控制台查看</h3>
</body>
</html>