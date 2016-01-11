<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script type="text/javascript" src="../js/jQuery/jquery-1.11.1.js"></script>
<script type="text/javascript">
   $(document).ready(function (){
	   testReturn(10);
   });
   
   function testReturn(object){
	   alert("before");
	   if(object>1){
		   if(object<99){
			  return;
			  //return false;
			  //return true; 
		      alert(object);
		   }
	   }
	   alert("after");
   }
</script>
</head>
<body>

</body>
</html>