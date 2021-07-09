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
	<div class="body">
		<div class="admin ">
			<%@ include file="/WEB-INF/views/admin/hotro/header.jsp"%>
			<hr>
			<section class="main row justify-content-center">
				<div style="width: 97%;">

					<div class="card">
						<div class=" card-header">
							<div class="row">
								<div class="col-4">
									<img src="/uploads/newlogo.png" height="50px" alt="">
								</div>
								<div class="col-8 p-1">
									<h3>DANH DÁCH NGƯỜI DÙNG</h3>
								</div>
							</div>
						</div>
						<div class="card-body">
							<form:form action="/admin/user/list/" modelAttribute="item">
							<a href="/admin/profile/add" class="btn btn-outline-primary"><i
													class="fas fa-plus-circle"></i> THÊM MỚI </a>
								<table class="table table-striped thead-light">
									<thead>
										<tr>
											<th scope="col">TÀI KHOẢN</th>
											<th scope="col">HỌ TÊN</th>
											<th scope="col">EMAIL</th>
											<th scope="col">SDT</th>
											<th scope="col">MẬT KHẨU</th>
											<th scope="col">NGÀY ĐĂNG KÝ</th>

											<th scope="col">TRẠNG THÁI</th>
											<th scope="col">VAI TRÒ</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${items}">
											<tr>
												<td>${item.username}</td>
												<td>${item.fullname}</td>
												<td>${item.email}</td>
												<td>${item.phone}</td>
												<td>${item.password}</td>
												<td>${item.registeredDate}</td>
												<td>${item.status ?"Online":"Offline"}</td>
												<td>${item.role ?"Admin":"User"}</td>
												<td><a href="/edit/profile/${item.username}"
													class="btn btn-outline-warning"><i class="fas fa-edit"></i></a>
													<a href="/delete/profile/${item.username}"
													class="btn btn-outline-danger"><i
														class="fas fa-trash-alt"></i></a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
								<div class="row justify-content-center">
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#">
													<< </a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">>></a></li>
										</ul>
									</nav>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</section>
			<hr>
		<%@ include file="/WEB-INF/views/admin/hotro/footer.jsp"%>
		</div>
	</div>
</body>

</html>