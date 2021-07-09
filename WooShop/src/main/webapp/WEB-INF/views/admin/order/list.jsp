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
							<hr>
							 
						</div>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
								
									<tr>
										<th scope="col">MÃ ĐƠN HÀNG</th>
										 <th scope="col">HỌ TÊN</th>
										<th scope="col">GIÁ</th>
										<th scope="col">NGÀY MUA</th>
										<th scope="col">ĐỊA CHỈ NHẬN HÀNG</th>
										<th scope="col">TRẠNG THÁI</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.orderid}</td>
										<td>${item.user.fullname}</td>
										<td>${item.amount}</td>
										<td>${item.orderDate}</td>
										<td>${item.address}</td> 
									  <td ><a href="/admin/order/${item.orderid}"   class="btn btn-outline-success"><i
													class="fas fa-check"></i> ${item.status?'ĐÃ XÁC NHÂN':"CHỜ XÁC NHẬN"}</a></td>
										<td><a href="/orderdetails/${item.orderid}"   class="btn btn-outline-info"><i
													class="fas fa-info"></i> XEM</a></td>
										
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
		 
			</div>

		</section>

	</div>

	<hr>
	<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>

</body>

</html>