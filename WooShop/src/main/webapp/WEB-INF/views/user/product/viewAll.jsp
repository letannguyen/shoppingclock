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
	<div class="mainn p-4">
		<section class="main3">
			<div class="row justify-content-center">
				<h2>
					<i>${type}</i>
				</h2>
			</div>
			<hr>
			<div class="row">

				<div class="col-10">
					<div class="row">
						<c:forEach var="item" items="${items}">
							<div class="col-3 PL-2 ">
								<a href="/product/details/${item.productid}"><img
									src="/uploads/${item.image}" width="100%" height="250px" alt="" /></a>
								<a href="" class="d-flex justify-content-center">
									${item.name} </a>
								<div class="d-flex justify-content-center">
									<h5 class="badge badge-info " style="font-size: 20px;">$
										${item.price}</h5>
									&emsp;<a href="/cart/add/${item.productid}"><i
										class="fas fa-cart-plus"></i></a>
								</div>

							</div>
						</c:forEach>
					</div>
					<br> <br>
					<div class="row justify-content-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"> <<
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">>></a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-2 p-2"
					style="background-color: #e4e4e4; text-align: center">
					<h6>T??M KI???M</h6>
                    <form action="/product/"method="post">
					<hr>
					<div class="card" style="color: black;">
						<div class="card-header btn" data-toggle="collapse"
							data-target="#tm" aria-expanded="false"
							aria-controls="collapseExample">
							<h6>TH????NG HI???U</h6>
						</div>


						<div class="collapse" id="tm">
							<div class=" card-body">
								<input type="radio" aria-label=""> A -> Z <br> <input type
									type="radio" aria-label=""> Z -> A<br> <input
									type="radio" aria-label=""> GI?? T??NG ?????N <br> <input
									type="radio" aria-label=""> GI?? GI???M D???N<br>
							</div>
						</div>
					</div>
					<hr>
					<div class="card" style="color: black;">
						<div class="card-header btn" data-toggle="collapse"
							data-target="#sx" aria-expanded="false"
							aria-controls="collapseExample">
							<h6>S???P X???P</h6>
						</div>
						<div class="collapse" id="sx">
							<div class=" card-body">
								<input type="radio" aria-label=""> A -> Z <br> <input
									type="radio" aria-label=""> Z -> A<br> <input
									type="radio" aria-label=""> GI?? T??NG ?????N <br> <input
									type="radio" aria-label=""> GI?? GI???M D???N<br>
							</div>
						</div>
					</div>
					<hr>
					<div class="card" style="color: black;">
						<div class="card-header btn" data-toggle="collapse"
							data-target="#sx" aria-expanded="false"
							aria-controls="collapseExample">
							<h6>KHO???NG GI??</h6>
						</div>
						<div class="collapse" id="sx">
							<div class=" card-body ">
								<input class="form-control " style="width: 150px" type="number"
									placeholder="TH???P NH???T"> - <input
									class="form-control pl-2" style="width: 150px" type="number"
									placeholder="CAO NH???T">
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
			<br>

		</section>
	</div>

	<hr>
	<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>