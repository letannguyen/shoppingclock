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

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" ">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
   
</head>

<body>
   <%@include file="/WEB-INF/views/hotro/header.jsp" %>
   <div class="mainn p-4">
        <section class="main1">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="/uploads/anhbia.png" alt="">

                    </div>
                </div>

            </div>
        </section>
        <br>
        <section class=" main2">
            <div class="row">
                <div class="col-4 ">
                     <a href="/product/hublot"><img src="/uploads/white-t-shirts-mockup-design_53876-98813.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">??o thun nam</a>
                    </div>
                </div>
                <div class="col-4 ">
                    <a href="/product/longines"><img src="/uploads/girl-t-shirt-mock-up_89887-80.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">??o thun n???</a>
                    </div>
                </div>
                <div class="col-4 ">
                     <a href="/product/hublot"><img src="/uploads/lovers-t-shirt-mockup_89887-69.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">????? ????i</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4 ">
                    <a href="/product/omega"><img src="/uploads/christmas-kid-t-shirt-mock-up_89887-142.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">????? tr??? em</a>
                    </div>
                </div>
                <div class="col-4 ">
                    <a href="/product/tissot"><img src="/uploads/black-hoodie-mockup_125540-877.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">Hoodie nam</a>
                    </div>
                </div>
                <div class="col-4 ">
                     <a href="/product/casio"><img src="/uploads/woman-dressed-hoodie-holding-mug_23-2148457397.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">Hoodie n???</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="main3">
           <div class="row justify-content-center"><h2> <i>C??C M???U H??NG HOT</i></h2> </div>
           <div class="row">
            <c:forEach var="item" items="${items}">
                <div class="col-3">
                    <a href="/product/details/${item.productid}"><img src="/uploads/${item.image}" width="100%" height="250px" alt=""></a>
                    <div class="d-flex justify-content-center">
                        <a href="/product/details/${item.productid}">${item.name}</a> <a href="/cart/add/${item.productid}"><i class="fas fa-cart-plus"></i></a>
                    </div>
                </div>
               </c:forEach>
           </div>
            <br>
            <div class="row justify-content-center" >
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                      <li class="page-item"><a class="page-link" href="#"><<</a></li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item"><a class="page-link" href="#">>></a></li>
                    </ul>
                  </nav>
            </div>
        </section>
        <hr>
        <section class="main2">
            <div class="row justify-content-center"><h2> <i>B??I VI???T M???I</i></h2> </div><br>
             <div class="row">
                 <div class="col-4">
                     <a href=""><img src="/uploads/2b62fa0f5e811cbf65124210240b36fd.jpg" width="100%" height="250px" alt="">??o ph??ng m??u trung t??nh ch??nh l?? b???o b???i c???a n??ng ngo??i 30 tu???i: V???a tr??? trung, v???a kh??ng s??? b??? ???c??a s???ng l??m ngh?????</a><br>
                     <div class="d-flex justify-content-center">
                             <p>TH??? S??U 20.05.2021</p>
                    </div>
                     <div class="text-center"> 
                         <a href="" style="font-size: 19px;font-weight: normal;">Nh???ng b???t ti???n khi mang ??o ph??ng</a>
                         <P>------------</P>
                        </div>
                    
                 </div>
                 <div class="col-4">
                    <a href=""><img src="/uploads/45c96a6d49cf0919def3593dd70e32bd.jpg" width="100%" height="350px" alt="">N??ng th??? n??y ch??? em c??? nh???m ??o tr???ng m?? di???n, bao nhi??u ki???u xinh t????i v???i c??? ch???c c??ch mix v???a m??t m??? l???i v???a sang</a><br>
                    <div class="d-flex justify-content-center">
                            <p>TH??? HAI 23.05.2021</p>
                   </div>
                    <div class="text-center"> 
                        <a href="https://chon.vn/review/dong-ho-halei/" style="font-size: 19px;font-weight: normal;">????nh gi?? c??c m???u ????? tr???ng ?????p</a>
                        <P>------------</P>
                    </div> 
                </div>
                <div class="col-4">
                    <a href=""><img src="/uploads/1-4134-1566626934.png" width="100%" height="450px" alt="">V??y ??en sang ch???nh nh?? th??? n??o</a><br>
                    <div class="d-flex justify-content-center">
                            <p>TH??? S??U 19,06,2020 </p>
                   </div>
                    <div class="text-center"> 
                        <a href="https://www.dienmayxanh.com/kinh-nghiem-hay/co-nen-tang-dong-ho-cho-ban-gai-co-y-nghia-gi-1180232" style="font-size: 19px;font-weight: normal;"> 3 l??u ?? khi ch???n v??y cho n???</a>
                        <P>------------</P>
                    </div> 
                </div>
               
                 
             </div>
           
         </section>
         <section id="gioithieu" class="main5" style="background-color: #e6faff;">
            <div class="row">
                <div class="col-5 p-4">
                    <a href=""><img src="/uploads/newlogo.png" width="100%" height="300px" alt=""></a>
                </div>
                <div class="col-7">
                    <div class="justify-content-center">
                        <h4 class="text-center p-2">V??? CH??NG T??I</h4><br>
                        <h5>Tybi Home shop nh?? nh???p kh???u ??o qu???n s??? v?? l??? ...</h5>
                        <p>Tybi Home ??ang ph??n ph???i c??c th????ng hi???u danh ti???ng tr??n th??? gi???i nh??: Nike,h&m,.. <br><br>
 
                            V???i m???c ti??u h??ng h??a ph???c v??? ??a d???ng, m???u m?? m???i nh???t, ch???t l?????ng t???t nh???t, gi?? c??? c???nh tranh nh???t, Tybi Home hi???u ???????c t???m quan tr???ng c???a vi???c x??y d???ng c??c m???i quan h??? v?? ?????t ???????c s??? ???ng h??? c???a nh???ng nh?? cung c???p, nh???ng ?????i t??c h??ng ?????u th??? gi???i.<br><br>
                             
                            Tybi Home mong mu???n t??m ki???m nh???ng ?????i t??c ti???m n??ng c?? kh??? n??ng c??ng c???p nh???ng m???u ??o qu???n m???i nh???t ????? thi???t l???p m???i quan h??? h???p t??c trong tinh th???n t???t c??? c??c b??n c??ng c?? l???i v?? c??ng ph??t tri???n.<br><br>
                             
                            Th??nh c??ng c???a kh??ch h??ng l?? t????ng lai c???a c??ng ty. Nh???ng y???u t??? tr??n lu??n g???n li???n v???i truy???n th???ng, uy t??n v?? th????ng hi???u c???a C??ng ty C??? ph???n Tr???c tuy???n Tybi Home tr??n th??? tr?????ng Vi???t Nam c??ng nh?? v???i qu???c t???.</p>
                    </div>

                </div>
            </div>
        </section>
    </div>
   
    <hr>
    <%@ include file="/WEB-INF/views/hotro/footer.jsp" %>
     </div>
   
</body>

</html>