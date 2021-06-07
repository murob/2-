<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link type="text/css" rel="stylesheet" href="./css/main.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
    <nav
      class="navbar bg-dark navbar-dark main_nav"
      style="position: fixed; top: 0%; left: 0%; right: 0%"
    >
      <a
        class="navbar-brand"
        href="#"
        style="font-family: Nanum Pen Script; font-size: 40px"
        >와글와글</a
      >
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#collapsibleNavbar"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbardrop"
              data-toggle="dropdown"
            >
              동네게시판
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href=".\GuList.jsp">강남구 게시판</a>
              <a class="dropdown-item" href="#">강동구 게시판</a>
              <a class="dropdown-item" href="#">강북구 게시판</a>
              <a class="dropdown-item" href="#">강서구 게시판</a>
              <a class="dropdown-item" href="#">관악구 게시판</a>
              <a class="dropdown-item" href="#">광진구 게시판</a>
              <a class="dropdown-item" href="#">구로구 게시판</a>
              <a class="dropdown-item" href="#">금천구 게시판</a>
              <a class="dropdown-item" href="#">노원구 게시판</a>
              <a class="dropdown-item" href="#">도봉구게시판</a>
              <a class="dropdown-item" href="#">동대문구 게시판</a>
              <a class="dropdown-item" href="#">동작구 게시판</a>
              <a class="dropdown-item" href="#">마포구 게시판</a>
              <a class="dropdown-item" href="#">서대문구 게시판</a>
              <a class="dropdown-item" href="#">서초구 게시판</a>
              <a class="dropdown-item" href="#">성동구 게시판</a>
              <a class="dropdown-item" href="#">성북구 게시판</a>
              <a class="dropdown-item" href="#">송파구 게시판</a>
              <a class="dropdown-item" href="#">양천구 게시판</a>
              <a class="dropdown-item" href="#">영등포구 게시판</a>
              <a class="dropdown-item" href="#">용산구 게시판</a>
              <a class="dropdown-item" href="#">은평구 게시판</a>
              <a class="dropdown-item" href="#">종로구 게시판</a>
              <a class="dropdown-item" href="#">중구 게시판</a>
              <a class="dropdown-item" href="#">중랑구 게시판</a>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">핫게시물 게시판</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">동네 중고장터 게시판</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="#">공지사항</a>
          </li>
        </ul>
      </div>
    </nav>
    <br />

     <form>
      <div class="container">
        <div>
          <span class="input_font"> 와글와글 </span>
        </div>

        <div class="main_input">
          <input type="text" class="input_search" />
          <button type="submit" class="btn btn-danger main_submit">검색</button>
        </div>

        <div class="main_login">
          <a href="" style="color: black">로그인/회원가입</a>
        </div>
      </div>
    </form>

    <div class="ad_container">
      <div class="main_ad">광고배너</div>
    </div>

    <div class="main_board">
      <div class="hot_board">여기는 게시물</div>
      <div class="sale_board">여기는 중고장터</div>
    </div>

    <div class="main_gulist">
      <div class="gu_list">구별 리스트</div>
    </div>
  </body>
  <footer>
    <div
      class="
        row
        border border-dark border-bottom-0 border-right-0 border-left-0
      "
    ></div>
    <div class="main_copyright">
      <div class="copyright">
        <h3 style="font-family: Nanum Pen Script; font-size: 50px">와글와글</h3>
        대표이사 : 성승현&nbsp;&nbsp;Email : seong7517@gmail.com&nbsp;&nbsp;
        Mobile : 010-4081-7517&nbsp;&nbsp; Address : 서울시 금천구 금하로
        <br />
        copyright &copy; 승현소프트웨어 All right reserved.
      </div>
    </div>
  </footer>
</html>
