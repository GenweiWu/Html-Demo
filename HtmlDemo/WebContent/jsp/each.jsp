<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试each</title>

<script type="text/javascript" src="../js/jQuery/jquery-1.11.1.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		testEach03();

	});
<%--each简单用法--%>
	function testEach01() {
		$("div").each(function(i) {
			alert(i);
			var currentObj = $(this).html();
			alert(currentObj);
		});////0 111 1 222 2 333
	}
<%--each中的break--%>
	function testEach02() {
		$("div").each(function(i) {
			if (i == 1) {
				return false;//相当于break
			}

			var currentObj = $(this).html();
			alert(currentObj);
		});//111 就结束了
	}
<%--each中的continue--%>
	function testEach03() {
		$("div").each(function(i) {
			if (i == 1) {
				return true;//相当于continue
			}

			var currentObj = $(this).html();
			alert(currentObj);
		});//111 333,222被跳过了
	}
</script>

</head>
<body>
	<div>111</div>
	<div>222</div>
	<div>333</div>
</body>
</html>