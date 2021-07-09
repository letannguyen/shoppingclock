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

				<div class="card">
					<div class=" card-header  ">
						<div class="row justify-content-center">
							<div class="col-5">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-7 " style="font-size: 30px; color: black;">
								<h4>
									GIỎ HÀNG <i class="fas fa-shopping-cart"></i>
								</h4>
							</div>
						</div>
						<hr>
					</div>
					<div class="card-body">

						<a href="/order" class="btn btn-outline-info">ĐƠN HÀNG CỦA BẠN</a>
						<table class="table table-striped table-hover">
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td style="width: 10%"><a
											href="/product/details/${item.product.productid}"><img
												src="/uploads/${item.product.image} " width="100px"
												height="100px" alt=""></a></td>
										<td style="width: 30%"><a
											href="/product/details/${item.product.productid}"><h5>${item.product.name}</h5></a></td>
										<td style="width: 15%">$ ${item.product.price}</td>
										<td style="width: 10%">- ${item.product.discount} %</td>
										<td style="width: 10%"><input class="form-control"
											id='quantity' min='1' name='addLinks' type="number"
											type='text' value='${item.quantity}' style="width: 60px;"
											onchange="myFunction()" /></td>
										<td style="width: 10%">${((item.product.price - (item.product.price * (item.product.discount /100)))*item.quantity ) }
										</td>
										<td style="width: 20%">
											<div>
												<a href="/product/details/${item.product.productid}"
													class="btn btn-outline-info"><i class="fas fa-info"></i></a>
												<a href="/cart/delete/${item.product.productid}"
													type="submit" class="btn btn-outline-danger"> <i
													class="far fa-trash-alt"></i>
												</a>
											</div>
										</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>


						<br>
						<hr>
						<div class="form-group text-center">
							<a href="/orderok" class="btn btn-outline-info">THANH TOÁN</a> <a
								href="/index" class="btn btn-outline-warning">TIẾP TỤC MUA
								HÀNG</a>
						</div>
						<form:form modelAttribute="cart">
						</form:form>
					</div>
				</div>
			</div>

		</section>

	</div>

	<hr>
	<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>

	<script type="text/javascript">
	
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>