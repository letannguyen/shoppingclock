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
	<%@ include file="/WEB-INF/views/hotro/header.jsp"%>
	<div class="mainn p-4" style="background-color: rgb(138, 138, 138);">
		<section class="main1 row justify-content-center">
			<div style="width: 85%;">
				<form action="" method="POST">
					<div class="card">
						<div class=" card-header  ">
							<div class="row justify-content-center">
								<div class="col-4">
									<img src="/uploads/newlogo.png" height="50px" alt="">
								</div>
								<div class="col-8 ">
									<h3>
										CHI TIẾT ĐƠN HÀNG <i class="fas fa-shopping-cart"></i>
									</h3>
								</div>
							</div>

							<br>
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">TÊN SẢN PHẨM</th>
										<th scope="col">GIÁ</th>
										<th scope="col">GIẢM GIÁ</th>
										<th scope="col">SỐ LƯỢNG</th>
										<th scope="col">THÀNH TIỀN</th>
									</tr>
								</thead>
								<tbody>
									<tr></tr>
									<c:forEach var="item" items="${items}">

										<tr>
											<td style="width: 10%"><a
												href="/product/details/${item.product.productid}"><img
													src="/uploads/${item.product.image} " width="100px"
													height="100px" alt=""></a></td>
											<td style="width: 20%"><a
												href="/product/details/${item.product.productid}"><h5>${item.product.name}</h5></a></td>
											<td style="width: 15%">$ ${item.product.price}</td>
											<td style="width: 10%">${item.product.discount} %</td>
											<td style="width: 10%">${item.quantity}</td>
											<td style="width: 20%">${((item.product.price - (item.product.price * (item.product.discount /100)))*item.quantity ) }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</form>
			</div>

		</section>

	</div>

	<hr>
	<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>

</body>

</html>