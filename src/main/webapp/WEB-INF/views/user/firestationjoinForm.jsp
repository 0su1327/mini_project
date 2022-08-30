<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<header>
    <h1>조기 화재 감지 서비스</h1>
</header>
<br><br>
 <body>
     <article id="firejoin">
          <h2>서비스 등록하기</h2>
          <form>
            <div>
              <i class="icon-building-filled"></i>

              <input
                type="text"
                id="name"
                placeholder=" 소방서 이름"
                style="width: 280px;"
              />
            </div>

            <div>
              <i class="icon-home"></i>
               <input
                type="number"
                id="password"
                placeholder="비밀번호"
                style="width:130px"
              />

            </div>

            <div>
              <i class="icon-handshake-o"></i>
              <b>정보 소방서 등록</b><br />


            </div>
            <div>
              <input id="btn-fire" type="submit" value="Register" />
            </div>
          </form>
        </article>

<script src="../js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>