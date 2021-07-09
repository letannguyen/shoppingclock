<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<div class="admin"
		style="background-image: url('/uploads/anhbia.png');">
		<%@ include file="/WEB-INF/views/hotro/header.jsp"%>
		<section class="main1 row justify-content-center  pt-5 pb-5">
			<div style="width: 55%;">

				<div class="card" >
					<div class=" card-header" style="background-color: #17a2b8">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 pl-5">
								<h3>ĐĂNG NHẬP</h3>
							</div>
						</div>
					</div>
					<div class="card-body">
						<form action="account/login" method="post">
							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-user"></i>
								</div>
								<div class="col-sm-11">
									<input type="text"  class="form-control"
										name="username" id="username" placeholder="TÀI KHOẢN" value="" />
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-key"></i>
								</div>
								<div class="col-sm-11">
									<input type="password" class="form-control" name="password" value=""
										id="password" placeholder="MẬT KHẨU" />
								</div>
							</div>
							<div class="form-check " style="padding-left: 80px">
								<input type="checkbox" name="remember" value="true" checked   /> <label
									class="form-check-label" for="remember">NHỚ TÀI KHOẢN ?</label>
							</div>
							
							<br>

							<hr>
							<div class="form-group text-center">
								<button formaction="/account/login2" type="submit"
									class="btn btn-outline-info">ĐĂNG NHẬP</button>
								<br> <br>
								<p>
									<a href="">QUÊN MẬT KHẨU ? </a> hoặc <a
										href="/account/register">ĐĂNG KÝ </a>
								</p>
							</div>
						</form>
					</div>
				</div>

			</div>

		</section>
		<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>
	</div> 
</body>

</html>