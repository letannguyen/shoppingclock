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
                        <a href="">Áo thun nam</a>
                    </div>
                </div>
                <div class="col-4 ">
                    <a href="/product/longines"><img src="/uploads/girl-t-shirt-mock-up_89887-80.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">Áo thun nữ</a>
                    </div>
                </div>
                <div class="col-4 ">
                     <a href="/product/hublot"><img src="/uploads/lovers-t-shirt-mockup_89887-69.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">Đồ đôi</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4 ">
                    <a href="/product/omega"><img src="/uploads/christmas-kid-t-shirt-mock-up_89887-142.jpg" width="100%" height="300px" alt=""></a>
                    <div class="pform d-flex justify-content-center p-1">
                        <a href="">Đồ trẻ em</a>
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
                        <a href="">Hoodie nữ</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="main3">
           <div class="row justify-content-center"><h2> <i>CÁC MẪU HÀNG HOT</i></h2> </div>
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
            <div class="row justify-content-center"><h2> <i>BÀI VIẾT MỚI</i></h2> </div><br>
             <div class="row">
                 <div class="col-4">
                     <a href=""><img src="/uploads/2b62fa0f5e811cbf65124210240b36fd.jpg" width="100%" height="250px" alt="">Áo phông màu trung tính chính là bảo bối của nàng ngoài 30 tuổi: Vừa trẻ trung, vừa không sợ bị “cưa sừng làm nghé”</a><br>
                     <div class="d-flex justify-content-center">
                             <p>THỨ SÁU 20.05.2021</p>
                    </div>
                     <div class="text-center"> 
                         <a href="" style="font-size: 19px;font-weight: normal;">Những bất tiện khi mang áo phông</a>
                         <P>------------</P>
                        </div>
                    
                 </div>
                 <div class="col-4">
                    <a href=""><img src="/uploads/45c96a6d49cf0919def3593dd70e32bd.jpg" width="100%" height="350px" alt="">Nóng thế này chị em cứ nhắm áo trắng mà diện, bao nhiêu kiểu xinh tươi với cả chục cách mix vừa mát mẻ lại vừa sang</a><br>
                    <div class="d-flex justify-content-center">
                            <p>THỨ HAI 23.05.2021</p>
                   </div>
                    <div class="text-center"> 
                        <a href="https://chon.vn/review/dong-ho-halei/" style="font-size: 19px;font-weight: normal;">Đánh giá các mẫu đồ trắng đẹp</a>
                        <P>------------</P>
                    </div> 
                </div>
                <div class="col-4">
                    <a href=""><img src="/uploads/1-4134-1566626934.png" width="100%" height="450px" alt="">Váy đen sang chảnh như thế nào</a><br>
                    <div class="d-flex justify-content-center">
                            <p>THỨ SÁU 19,06,2020 </p>
                   </div>
                    <div class="text-center"> 
                        <a href="https://www.dienmayxanh.com/kinh-nghiem-hay/co-nen-tang-dong-ho-cho-ban-gai-co-y-nghia-gi-1180232" style="font-size: 19px;font-weight: normal;"> 3 lưu ý khi chọn váy cho nữ</a>
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
                        <h4 class="text-center p-2">VỀ CHÚNG TÔI</h4><br>
                        <h5>Tybi Home shop nhà nhập khẩu áo quần sỉ và lẻ ...</h5>
                        <p>Tybi Home đang phân phối các thương hiệu danh tiếng trên thế giới như: Nike,h&m,.. <br><br>
 
                            Với mục tiêu hàng hóa phục vụ đa dạng, mẫu mã mới nhất, chất lượng tốt nhất, giá cả cạnh tranh nhất, Tybi Home hiểu được tầm quan trọng của việc xây dựng các mối quan hệ và đạt được sự ủng hộ của những nhà cung cấp, những đối tác hàng đầu thế giới.<br><br>
                             
                            Tybi Home mong muốn tìm kiếm những đối tác tiềm năng có khả năng cũng cấp những mẫu áo quần mới nhất để thiết lập mối quan hệ hợp tác trong tinh thần tất cả các bên cùng có lợi và cùng phát triển.<br><br>
                             
                            Thành công của khách hàng là tương lai của công ty. Những yếu tố trên luôn gắn liền với truyền thống, uy tín và thương hiệu của Công ty Cổ phần Trực tuyến Tybi Home trên thị trường Việt Nam cũng như với quốc tế.</p>
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