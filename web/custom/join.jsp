<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <c:set var="path2" value="<%=request.getContextPath() %>" />
    <%@ include file="../common.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@ include file="../header.jsp"%>
    <div class="contents" style="min-height:100vh">
        <nav aria-label="breadcrumb container-fluid" style="padding-top:28px; border-bottom:2px solid #666;">
            <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path2 }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Custom</a></li>
                    <li class="breadcrumb-item active" aria-current="page">회원 가입</li>
                </ol>
            </div>
        </nav>
        <h2 class="title">로그인</h2>
        <section class="page" id="page1">
            <div class="join-wrapper">
                <form name="frm1" action="joinpro.jsp" method="post" onsubmit="return inform(this)">
                    <table class="tb1">
                        <tbody>
                        <tr>
                            <th><label for="id">아이디</label></th>
                            <td>
                                <input type="text" name="id" id="id" class="indata" required>
                                <button type="button" id="ck_btn" class="inbtn" onclick="idcheck()">아이디 중복 체크</button>
                                <input type="hidden" name="ck_item" id="ck_item" value="no">
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw">비밀번호</label></th>
                            <td>
                                <input type="password" name="pw" id="pw" class="indata" required>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw2">비밀번호 확인</label></th>
                            <td>
                                <input type="password" name="pw2" id="pw2" class="indata" required>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="name">이름</label></th>
                            <td><input type="text" name="name" id="name" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="tel">전화번호</label></th>
                            <td><input type="tel" name="tel" id="tel" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="email">이메일</label></th>
                            <td><input type="email" name="email" id="email" class="indata" required></td>
                        </tr>
                        <tr>
                            <th><label for="date">생년월일</label></th>
                            <td><input type="date" name="date" id="date" class="indata" required></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="colspan">
                                <input type="submit" value="회원 가입" class="inbtn">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
                <script>
                    function inform(frm){
                        var ck_item = frm.ck_item;
                        //var ck_item = document.getElementById("ck_item");
                        if(ck_item.value!="yes"){
                            alert("아이디 중복 검사를 진행하시기 바랍니다.");
                            frm.id.focus();
                            return false;
                        }
                        var pw = frm.pw.value;
                        var pw2 = frm.pw2.value;
                        if(pw!=pw2){
                            alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                            pw.focus();
                            return false;
                        }
                    }
                    function idcheck(){
                        var child;
                        var id = document.getElementById("id");
                        if(id.value!="") {
                            child = window.open("idcheck.jsp?id="+id.value, "child", "width=250, height=100");
                            return;
                        } else {
                            alert("아이디 입력란에 아이디를 입력하고, 진행하시기 바랍니다.");
                            id.focus();
                            return;
                        }
                    }
                </script>
            </div>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@include file="../footer.jsp"%>
    </footer>
</div>
</body>
</html>
