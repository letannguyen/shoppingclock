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


	<div class="admin ">
		<%@ include file="/WEB-INF/views/admin/hotro/header.jsp"%>
		<br>
		<section class="main1 row justify-content-center pb-5">
			<div style="width: 85%;">

				<div class="card">
					<div class=" card-header  ">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 p-1">
								<h3>DANH DÁCH CÁC SẢN PHẨM</h3>
							</div>
						</div>
					</div>
					<div class="card-body">
					
					<div class="row mt-2 mb-2">
                      <div class="col">
                        <form action="/admin/product/searchprod" method="post">
                          <div class="form-inline float-left">
                            <label for="name">Name</label>
                            <input class="form-control mr-sm-2 " name="name" style="width: 160px; height: 35px;" 
                            type="search" placeholder="Search" aria-label="Search">
                            
                          </div>
                        </form>
                        <a href="/admin/product/add" class="btn btn-outline-primary"><i
							class="fas fa-plus-circle"></i> THÊM MỚI </a>
						<div class="col-3 form-inline">
						</div>
                      </div>
                    </div>
					
						
						<form:form action="/admin/product/" modelAttribute="item">
							<table class="table table-striped thead-light">
								<thead>
									<tr align="center">
										<th scope="col">ẢNH</th>
										<th scope="col">TÊN SẢN PHẨM</th>
										<th scope="col">SỐ LƯỢNG</th>
										<th scope="col">ĐƠN GIÁ</th>
										<th scope="col">GIẢM GIÁ</th>
										<th scope="col">TRẠNG THÁI</th>
										<th scope="col">DANH MỤC</th>
										<th></th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="item" items="${items}">
										<tr align="center">
											<td><img src="/uploads/${item.image}" width="60"
												height="60" /></td>
											<td>${item.name}</td>
											<td>${item.quantity}</td>
											<td>${item.price}</td>
											<td>${item.discount}</td>
											<td>${item.status?"Còn hàng":"Hết hàng"}</td>
											<td>${item.category.name}</td>
											<td style="padding-left: 0px"><a
												href="/admin/product/edit/${item.productid}"
												class="btn btn-outline-warning"><i class="fas fa-edit"></i></a>
												<a href="/admin/product/delete/${item.productid}"
												class="btn btn-outline-danger"><i
													class="fas fa-trash-alt"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form:form>
						<div class="row justify-content-center">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">
											<<</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">>></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>

		</section>
		<hr>
		<%@ include file="/WEB-INF/views/admin/hotro/footer.jsp"%>
	</div>

</body>

</html>