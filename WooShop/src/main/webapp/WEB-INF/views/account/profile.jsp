<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="en">

<head>
<title>Tybi Home</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

</head>

<body>

	<div class="mainn"
		style="background-image: url('/uploads/anhbia.png'); background-size: 100%">
		<%@ include file="/WEB-INF/views/hotro/header.jsp"%>
		<section class="main1 row justify-content-center pb-4 pt-5">
			<div style="width: 55%;">
				<div class="card">
					<div class=" card-header  " style="background-color: #17a2b8">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 pl-2">
								<h3>THÔNG TIN TÀI KHOẢN</h3>
							</div>
						</div>
					</div>
					<div class="card-body">
						<form:form action="/profile" modelAttribute="profile">
							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-user"></i> TÀI KHOẢN
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input type="text" disabled="true" path="username"
										class="form-control" name="username" id="username" value="${username}"
									 placeholder="TÀI KHOẢN" />
									<form:errors cssClass="errors" path="username"></form:errors>
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-signature"></i> HỌ TÊN
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input type="text" path="fullname" class="form-control"
										name="fullname" id="fullname" placeholder="HỌ TÊN" />
									<form:errors cssClass="errors" path="fullname"></form:errors>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-envelope"></i> EMAIL
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input path="email" type="email" class="form-control"
										name="email" id="email" placeholder="EMAIL" />
									<form:errors cssClass="errors" path="email"></form:errors>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-phone"></i> SĐT
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input path="phone" type="text" class="form-control"
										name="phone" id="phone" placeholder="SỐ ĐIỆN THOẠI" />
									<form:errors cssClass="errors" path="phone"></form:errors>
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-calendar-day"></i> NGÀY ĐĂNG KÝ
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input path="registeredDate" type="text" disabled="true"
										class="form-control" name="RegisteredDate"
										id="RegisteredDate" placeholder="" />
									<form:errors cssClass="errors" path="registeredDate"></form:errors>
								</div>

							</div>

							<div class="form-group row">
								<div class="col-sm-3">
									<h6>
										<i class="fas fa-key"></i>MẬT KHẨU
									</h6>
								</div>
								<div class="col-sm-9">
									<form:input path="password" type="password"
										class="form-control" name="password" id="password"
										placeholder="MẬT KHẨU" />
									<form:errors cssClass="errors" path="password"></form:errors>
								</div>
							</div>
							<hr>
							<div class="form-group text-center">
								<button formaction="/save2" type="submit"
									class="btn btn-outline-info">CẬP NHẬT</button>
								<button formaction="/logout" type="submit"
									class="btn btn-outline-danger">ĐĂNG XUẤT</button>
							</div>
						</form:form>
					</div>
				</div>

			</div>
		</section>
		<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>
	</div>

	<hr>

</body>

</html>