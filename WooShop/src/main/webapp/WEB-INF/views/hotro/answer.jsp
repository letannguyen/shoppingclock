<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<title>WOOdongho</title>
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
		<%@ include file="/WEB-INF/views/hotro/header.jsp" %>
		<section class="main1 row justify-content-center  pt-5 pb-5">
			<div style="width: 75%;">
				<form action="/account/login" method="post" >
					<div class="card">
						<div class=" card-header" style="background-color: #17a2b8">
							<div class="row">
								<div class="col-4">
									<img src="/uploads/newlogo.png" height="50px" alt="">
								</div>
								<div class="col-8 pl-5">
									<h3>THƯ GÓP Ý</h3>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="form-group row ">
        <div class="col-sm-1"><i class="fas fa-signature"></i></div>
        <div class="col-sm-11">
            <input type="text" class="form-control" name="fullname" id="fullname" placeholder="Họ và tên">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-1"><i class="fas fa-envelope"></i></div>
        <div class="col-sm-11">
            <input type="text" name="email" id="email" class="form-control" placeholder="Địa chỉ email">
        </div>
    </div>

    <div class="form-group row">
        <div class="col-sm-1"><i class="fas fa-envelope"></i></div>
        <div class="col-sm-11">
            <input type="text" name="chude" id="chude" class="form-control" placeholder="Chủ đề">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-1"><i class="fas fa-book-open"></i></i></div>
        <div class="col-sm-11">
            <textarea type="text" rows="3" name="noidung" id="noidung" class="form-control"
                placeholder="Nội dung"></textarea>

        </div>
    </div>
    <div class="  card-footer text-center">
        <button class="btn btn-success"> <i class="fas fa-paper-plane"></i> Phản hồi </button>
        <button class="btn btn-danger" style="width: 100px;">Hủy</button>
    </div>

						</div>
					</div>
					</form>
			</div>
			
		</section>
		<%@ include file="/WEB-INF/views/hotro/footer.jsp" %>
	</div>

	<hr>
	
</body>

</html>