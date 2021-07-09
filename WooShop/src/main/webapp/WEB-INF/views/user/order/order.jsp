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

<body >
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
										ĐƠN HÀNG<i class="fas fa-shopping-cart"></i>
									</h3>
								</div>
							</div>
							
						</div>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
								
									<tr>
										<th scope="col">MÃ ĐƠN HÀNG</th> 
										<th scope="col">GIÁ</th>
										<th scope="col">NGÀY ĐẶT</th>
										<th scope="col">ĐỊA CHỈ NHẬN HÀNG</th>
										<th scope="col">TRẠNG THÁI</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.orderid}</td>
										<td>${item.amount}</td>
										<td>${item.orderDate}</td>
										<td>${item.address}</td> 
										<td>${item.status?'Đã xác nhận':"Chờ xác nhận"}</td>
										<td><a href="/orderdetails/${item.orderid}"   class="btn btn-outline-info"><i
													class="fas fa-info"></i> XEM</a></td>
										  <td  ><a href="/order/delete/${item.orderid}"   class="btn btn-outline-danger"><i
													class="fas fa-window-close"></i> HỦY</a></td>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>

</html>