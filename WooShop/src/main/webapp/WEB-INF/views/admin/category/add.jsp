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
<style type="text/css">
.errors {
	color: red;
}
</style>
</head>

<body>
	<div class="admin">
		<%@ include file="/WEB-INF/views/admin/hotro/header.jsp"%>
		<br>
		<section class="main1 row justify-content-center">
			<div style="width: 55%;">
				<div class="card">
					<div class=" card-header">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 pl-2">
								<h3>THÊM DANH MỤC MỚI</h3>
							</div>
						</div>
					</div>
					<div class="card-body">

						<form:form action="admin/category/add" modelAttribute="category">

							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-info"></i>
								</div>
								<div class="col-sm-11">
									<form:input path="categoryid" class="form-control"
										name="categoryid" id="categoryid" placeholder="ID DANH MỤC" />
									<form:errors cssClass="errors" path="categoryid"></form:errors>
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-signature"></i>
								</div>
								<div class="col-sm-11">
									<form:input path="name" class="form-control" name="name"
										id="name" placeholder="TÊN DANH MỤC" />
									<form:errors cssClass="errors" path="name"></form:errors>
								</div>

							</div>
							<br>
							<hr>
							<div class="form-group text-center">
								<button formaction="/admin/category/save"
									class="btn btn-outline-info">LƯU</button>

								<a href="/admin/category/list" class="btn btn-outline-success">DANH
									SÁCH</a>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</section>
		<hr>
		<%@ include file="/WEB-INF/views/admin/hotro/footer.jsp"%>
	</div>


</body>

</html>