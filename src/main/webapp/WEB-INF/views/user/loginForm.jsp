<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<header>
    <h1>조기 화재 감지 서비스</h1>
</header>
<br><br>
 <body>
        <article id="join">
            <h2>로그인</h2>
            <form>
                <div>
                  <i class="icon-user"></i>
<<<<<<< HEAD
                  <input  id="firestationame" type="text" placeholder="아이디"/>
                </div>
                <div>
                  <i class="icon-key"></i>
                  <input  id="firestationpassword" type="password" placeholder="비밀번호"/>
                </div>
            </form>
            <div><a href="#"><i class="icon-user-plus"></i>회원가입</a></div>
 </article>

=======
                  <input  name="name" type="text" placeholder="아이디"/>
                </div>
                <div>
                  <i class="icon-key"></i>
                  <input  name="password" type="password" placeholder="비밀번호"/>
                </div>
                <div>
                 <button id="btn-login" class="btn btn-primary">로그인</button>
                 </div>
            </form>
            <div><a href="#"><i class="icon-user-plus"></i>회원가입</a></div>

 </article>


>>>>>>> 1baac522ebbb4d809a79c8f94caf645b5bb9748f
<script src="../js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>