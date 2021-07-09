 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <header class="row navbar  sticky-top  bg-light" style=" margin: 0px;height: 80px; font-size: 13px;">
        <div class="col-2 "style="left:-7px" ><img src="/uploads/newlogo.png" width="200px" height="70px" alt=""></div>
        <div class="col-7  navbar-expand-sm ">
            <ul class="nav justify-content-center P-0">
                <li class="nav-item ">
                    <a class="nav-link" href="/index"> <i class="fas fa-home"></i>TRANG CHỦ</a>
                </li> 
                <li class="nav-item">
                    <a class="nav-link" href="/product/view/nam"> <i class="fas fa-list-alt"></i> QUẦN ÁO NAM</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/product/view/nu"> <i class="fas fa-list-alt"></i> QUẦN ÁO NỮ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact"><i class="fas fa-phone"></i> LIÊN HỆ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/answer"><i class="fas fa-question"></i> HỎI ĐÁP</a>
                </li>
            </ul>

        </div>
        <div class="col-3 form-inline">
     
        <form action="/product/search"method="post">
            <input class="form-control mr-sm-2 " name="search" style="width: 160px; height: 35px;" type="search" placeholder="Search"
                aria-label="Search">
            &nbsp;
            <a class="btn btn-outline-secondary my-1 my-sm-0 " href="/cart" style="width: 35px; height: 35px;"><i class="fas fa-shopping-cart"></i></a>&nbsp;
            <a class="btn  btn-outline-secondary my-1 my-sm-0" href="/account" style="width: 35px; height: 35px;"><i class="fas fa-user"></i></a>
        </form></div>
    </header>

    