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
          <section class="main3">
            <div class="row justify-content-center">
                <h2><i>LIÊN HỆ</i></h2>
            </div>
            <hr>
            <div class="row ">
                    <div class="col-12 p-3">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.802545904285!2d108.1677603139457!3d16.075732988876922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218e6e72e66f5%3A0x46619a0e2d55370a!2zMTM3IE5ndXnhu4VuIFRo4buLIFRo4bqtcCwgVGhhbmggS2jDqiBUw6J5LCBMacOqbiBDaGnhu4N1LCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1616950060916!5m2!1svi!2s"
                        width="100%" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                </div>
                <br><br>
                <div class="row ">
                    <div class="col-sm-3 text-center">
                        <i class="fas fa-map-marker-alt" style="font-size: 30px ; color: rgb(16, 109, 248);"></i>
                        <h4> Địa chỉ shop: </h4>
                        <p>137 Nguyễn Thị Thập, Hòa Minh , Liên Chiểu ,Đà Nẵng</p>
                    </div>
                    <div class="col-sm-3 text-center">
                        <i class="fas fa-phone" style="font-size: 30px ; color: rgb(16, 109, 248);"></i>
                        <h4> Điện thoại : </h4>
                        <p>0931977930</p>
                    </div>
                    <div class="col-sm-3 text-center ">
                        <i class="fas fa-envelope" style="font-size: 30px ; color: rgb(16, 109, 248);"></i>
                        <h4> Email : </h4>
                        <p>nguyenltpd03408@fpt.edu.vn</p>
                    </div>
                    <div class="col-sm-3 text-center ">
                        <i class="fas fa-clock" style="font-size: 30px ; color: rgb(16, 109, 248);"></i>
                        <h4> Thời gian làm việc : </h4>
                        <p>Thứ 2 đến Chủ Nhật 8:00 - 22:00</p>
                    </div>
                </div>
             

        </section>
    </div>
   
    <hr><%@ include file="/WEB-INF/views/hotro/footer.jsp" %>
</body>

</html>