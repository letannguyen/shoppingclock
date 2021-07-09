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

	<div class="admin">
		<%@ include file="/WEB-INF/views/admin/hotro/header.jsp"%>
		<br>
		<section class="main1 row justify-content-center">
			<div style="width: 75%;">

				<div class="card">
					<div class=" card-header  ">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 p-1">
								<h3>DANH DÁCH CÁC DANH MỤC</h3>
							</div>
						</div>
					</div>
					<div class="card-body">

						<form action="/admin/category/searchprod" method="post">
							<div class="form-inline float-left">
								<label for="name">Name</label> <input
									class="form-control mr-sm-2 " name="name"
									style="width: 160px; height: 35px;" type="search"
									placeholder="Search" aria-label="Search">

							</div>
						</form>
						<a href="/admin/category/add" class="btn btn-outline-primary"><i
							class="fas fa-plus-circle"></i> THÊM MỚI </a>
						<form:form action="/admin/category/" modelAttribute="item">
							<table class="table table-striped thead-light">
								<thead>
									<tr>
										<th scope="col">ID DANH MỤC</th>
										<th scope="col">TÊN DANH MỤC</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${items}">
										<tr>
											<td>${item.categoryid}</td>
											<td>${item.name}</td>
											<td style="padding-right: 0px">
												<div style="padding-right: 0px">
													<a href="" class="btn btn-outline-info"><i
														class="fas fa-info"></i></a> <a
														href="/admin/category/edit/${item.categoryid}"
														class="btn btn-outline-warning"><i class="fas fa-edit"></i></a>
													<a href="/admin/category/delete/${item.categoryid}"
														class="btn btn-outline-danger"><i
														class="fas fa-trash-alt"></i></a>
												</div>
											</td>
										</tr>
									</c:forEach>

								</tbody>

							</table>

							<div class="row justify-content-center">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#"><<</a></li>
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
</body>

</html>