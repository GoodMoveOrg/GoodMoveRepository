<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
${requestScope.cvo}
<br><br>
<a href="commentUpdateView.do?cno=${cvo.cno }">수정하기</a><br>
<a href="deleteComment.do?cno=${cvo.cno}">삭제하기</a>