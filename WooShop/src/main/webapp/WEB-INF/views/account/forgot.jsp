<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Tybi Home</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>

<body>
	
	<div class="admin pb-5"
		style="background-image: url('/uploads/anhbia.png');">
		<%@ include file="/WEB-INF/views/hotro/header.jsp"%>
		<section class="main1 row justify-content-center  pt-5 pb-5">
			<div style="width: 55%;">
				<form action="/account/forgot" method="post" >
					<div class="card">
						<div class=" card-header" style="background-color: #17a2b8">
							<div class="row">
								<div class="col-4">
									<img src="/uploads/newlogo.png" height="50px" alt="">
								</div>
								<div class="col-8 pl-5">
									<h3>QUÊN MẬT KHẨU</h3>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-envelope"></i>
								</div>
								<div class="col-sm-10">
									<input type="text"  class="form-control"
										name="email" id="email" placeholder="NHẬP EMAIL ĐĂNG KÝ" >
								</div>
							</div>
							
								<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-usps"></i>
								</div>
								<div class="col-sm-9">
									<input type="otp"  class="form-control"
										name="otp" id="otp" placeholder="NHẬP OTP"  >
								</div>
								<div class="col-sm-9">
									<button type="submit" class="btn btn-info">OTP</button>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-1">
									<i class="fas fa-key"></i>
								</div>
								<div class="col-sm-10">
									<input type="text"  class="form-control"
										name="email" id="email" placeholder="NHẬP EMAIL ĐĂNG KÝ" required
										aria-describedby="email">
								</div>
							</div>
							<br>
							
							<hr>
							<div class="form-group text-center">
								<button type="submit" class="btn btn-outline-info">XONG</button>
								<button type="reset" class="btn btn-outline-danger">HỦY</button>
								<br>
								
							</div>

						</div>
					</div>
					</form>
			</div>
			
		</section>
		<%@ include file="/WEB-INF/views/hotro/footer.jsp"%>
	</div>

	<hr>
	
</body>

</html>