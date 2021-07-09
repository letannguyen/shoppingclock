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

<style type="text/css">
.errors {
	color: red;
}
</style>
</head>

<body>
	<div class="admin">
		<%@ include file="/WEB-INF/views/admin/hotro/header.jsp"%>
		<section class=" row justify-content-center  pt-5 pb-5">
			<div style="width: 80%;">

				<div class="card">
					<div class=" card-header  ">
						<div class="row">
							<div class="col-4">
								<img src="/uploads/newlogo.png" height="50px" alt="">
							</div>
							<div class="col-8 pl-2">
								<h3>THÊM SẢN PHẨM MỚI</h3>
							</div>
						</div>
					</div>
					<div class="card-body">
						<form:form action="/admin/product/save" modelAttribute="product" 
						enctype="multipart/form-data" method="post"  >
							<div class="row">
								<div class="col-7">
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-info"></i> ID SẢN PHẨM
											</h6>
										</div>
										<div class="col-sm-9">
											<form:input path="productid" type="number" class="form-control"
												name="productid" id="productid" placeholder="ID SẢN PHẨM" />
											<form:errors cssClass="errors" path="productid"></form:errors>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-signature"></i> TÊN
											</h6>
										</div>
										<div class="col-sm-9">
											<form:input path="name" type="text" class="form-control"
												name="name" id="name" placeholder="TÊN SẢN PHẨM" />
											<form:errors cssClass="errors" path="name"></form:errors>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-quran"></i> SỐ LƯỢNG
											</h6>
										</div>
										<div class="col-sm-9">
											<form:input path="quantity" class="form-control"
												name="quantity" id="quantity" placeholder="" />
											<form:errors cssClass="errors" path="quantity"></form:errors>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-dollar-sign"></i> ĐƠN GIÁ
											</h6>
										</div>
										<div class="col-sm-9">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text">$</span>
												</div>
												<form:input path="price" type="number" class="form-control"
													name="price" id="price" placeholder="ĐƠN GIÁ" />
												<div class="input-group-append">
													<span class="input-group-text">.00</span>
												</div>
											</div>
											<form:errors cssClass="errors" path="price"></form:errors>

										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-percent"></i> GIẢM GIÁ
											</h6>
										</div>
										<div class="col-sm-9">
											<div class="input-group mb-3">
												<form:input path="discount" type="number"
													class="form-control" name="discount" id="discount"
													placeholder="GIẢM GIÁ" />
												<div class="input-group-append">
													<span class="input-group-text">%</span>
												</div>
											</div>
											<form:errors cssClass="errors" path="discount"></form:errors>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3">
											<h6>
												<i class="fas fa-candy-cane"></i> LOẠI
											</h6>
										</div>
										<div class="col-sm-9">
											<form:select path="type" class="form-control" name="type"
												id="type">
												<form:option value="1">Đồ Nam</form:option>
												<form:option value="0">Đồ nữ</form:option>
											</form:select>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-3 ">
											<h6>
												<i class="fas fa-trademark"></i> DANH MỤC 
											</h6>
										</div>
										<div class="col-sm-9">
											<form:select path="category.categoryid" class="form-control"
												name="categoryid" id="categoryid">
												<c:forEach var="item" items="${items}">
													<form:option value="${item.categoryid}">${item.name}</form:option>
												</c:forEach>
											</form:select>
										</div>
									</div>
								</div>
								<div class="col-5 pl-3 pt-1">
									<div class="form-group">
										<img id="image"   src="${image !=null ? '/uploads/+image' : '/images/images.png'}" width="360px" style="border-radius: 10px"
											height="300px" alt="">
									</div>
<br>
									<div class="form-group pl-5">
										<script>
											function chooseFile(fileInput) {
												if (fileInput.files
														&& fileInput.files[0]) {
													var reader = new FileReader();
													reader.onload = function(e) {
														$('#image')
																.attr(
																		'src',
																		e.target.result);
													}
													reader
															.readAsDataURL(fileInput.files[0]);
												}
											}
										</script>

										<form:input path="image" type="file" class="form-control-file"
											name="image"  onchange="chooseFile(this)" value="${image}"  />
											<p  class="errors">${errorIMG}</p>
										
									</div>
									<br> <br>
									
								</div>
								<br>

							</div>
							<div class="row">
								<div class="col-sm-12">
									<form:textarea path="description" class="form-control"
										name="description" id="description" placeholder="MÔ TẢ"
										rows="4" />
								</div>
							</div>

							<br>
							<hr>
							<div class="form-group text-center">
								<form:button formaction="/admin/product/save" type="submit"
									class="btn btn-outline-info">LƯU</form:button>
								<button type="reset" class="btn btn-outline-danger">MỚI</button>
								<form:button formaction="/admin/product/list"
									class="btn btn-outline-success">DANH SÁCH</form:button>
							</div>
						</form:form>
					</div>
				</div>

			</div>

		</section>
		<hr>
		<%@ include file="/WEB-INF/views/admin/hotro/footer.jsp"%>
	</div>

	<hr>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>