<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!doctype html>
<html lang="en">

<head>
    <title>Tybi Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

       
</head>

<body>
  <%@ include file="/WEB-INF/views/hotro/header.jsp" %>
   <div class="mainn p-4">
          <section class="main3" style="background-image: url('');">
            <div class="row justify-content-center">
                <h2><i>CHI TIẾT SẢN PHẨM</i></h2>
            </div>
            <hr>
               <form  action="/product/details/"method="post" >
                  <div class="row"style="padding-left:20px;">
                <div class="col-5 p-2 " style="  background-color: #e4e4e4;">
                 <img src="/uploads/${image}" width="100%" height="350px" alt="">
                </div>
                 <div class="col-7 pl-5"> 
                    <h3>${name}  </h3>
                    <br>
                    <a href="/contact">❒ Liên hệ</a>
                    <hr>
                    <button formaction="/cart/add/${productid}" type="submit" class="btn btn-outline-info">
                        THÊM VÀO GIỎ
                    </button>
                    <br> <hr>
                    <h4>❒MÔ TẢ</h4> 
                     <div class="pl-2"><h6>★ THƯƠNG HIỆU : ${category}</h6>
                    <h6>★ GIÁ : $ ${price}</h6>
                    <h6> ★ GIẢM GIÁ : <span class="badge badge-info">${discount}</span> </h6>
                    <h6> ★ ĐÁNH GIÁ: 5 <i class="fas fa-star"></i></h6></div>
                    <h4>❒ THÔNG TIN THÊM</h4> 
                    <div class="pl-2">
                    <h6>❃${depcription}</h6>
                   </div>
                </div>
               
            </div>
							
						</form >
            <br>

        </section>
    </div>
   
    <hr>
<%@ include file="/WEB-INF/views/hotro/footer.jsp" %>
    
   
</body>

</html>