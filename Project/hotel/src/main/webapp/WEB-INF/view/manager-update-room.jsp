<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="vn.com.java.model.RoomModel" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cập nhật phòng</title>
<link rel="stylesheet" type="text/css" href='<spring:url value="/resources/css/style3.css"/>'>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<script type="text/javascript">
	function submitForm(formName) {
		document.getElementById(formName).submit();
	}
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>

</head>

<body>

	<header>
		<h1 id="effectText1">MANAGER PAGE</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>

	<c:url var="formUrl" value="/manager-list/update" />

	<form:form id="form2" modelAttribute="room" action="${formUrl}" method="post">
		<article>
			<div>
				<table>
					<p>PHÒNG</p>
					<tr>
						<td>LOẠI PHÒNG</td>
						<td colspan="2">
							<form:select path="roomStyle">
								<form:option value="Single Room">Single Room</form:option>
								<form:option value="Double Room">Double Room</form:option>
								<form:option value="Super Room">Super Room</form:option>
								<form:option value="Delux Room">Delux Room</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>SỐ PHÒNG</td>
						<td colspan="2"><form:input path="roomNo" /></td>
					</tr>
					<tr>
						<td>GIƯỜNG</td>
						<td colspan="2"><form:input path="bed" type="number" maxlength="3"/></td>
					</tr>
					<tr>
						<td>MÁY LẠNH</td>
						<td colspan="2"><form:input path="airConditioner" type="number" maxlength="3"/></td>
					</tr>
					<tr>
						<td>GIÁ TIỀN</td>
						<td colspan="2"><form:input path="money" type="number" step="10" /></td>
					</tr>
				</table>
				<p>

					<a style="margin: 10px 10px 10px 28%" href="#" onclick="submitForm('form2')">CẬP NHẬT PHÒNG</a> 
					<a href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
				</p>
			</div>
		</article>
	</form:form>

	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>


	<script type="text/javascript">
		function readURL1(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#hinh1').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#h1").change(function() {
			readURL1(this);
		});
	</script>

	<script type="text/javascript">
		function readURL2(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#hinh2').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#h2").change(function() {
			readURL2(this);
		});
	</script>

	<script type="text/javascript">
		function readURL3(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#hinh3').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#h3").change(function() {
			readURL3(this);
		});
	</script>

	<script type="text/javascript">
		function readURL4(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#hinh4').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#h4").change(function() {
			readURL4(this);
		});
	</script>


</body>
</html>