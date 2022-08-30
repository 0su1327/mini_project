<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>화재 미리 알림서비스</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="/fire">화재알림서비스</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">

    <c:choose>
        <c:when test="${empty sessionScope.principal}">
        <c:when test="${empty sessionScope}">
            <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/user/loginForm">로그인</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/user/joinForm">회원가입</a>
                   <li class="nav-item">
                     <a class="nav-link" href="/fire/user/firestationjoinForm">소방서 회원가입</a>
                    </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/user/joinForm">사용자 회원가입</a>
                  </li>
                </ul>
        </c:when>
        <c:otherwise>
            <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/board/writeForm">글쓰기</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/user/useForm">회원정보</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="/fire/user/logout">로그아웃</a>
                    <a class="nav-link" href="/fire/admin/writeForm">글쓰기</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/fire/admin/useForm">회원정보</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="/fire/admin/logout">로그아웃</a>
                  </li>
                </ul>
        </c:otherwise>
       </c:choose>
  </div>
</nav>
<br/>