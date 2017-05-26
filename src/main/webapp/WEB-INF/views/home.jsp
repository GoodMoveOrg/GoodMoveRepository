<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/getCountBoardMain.do",
			dataType:"json",
			success:function(data){
				$("#CountBoardView").html(data).css("background","yellow");
			}
		});
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/getCountCommentMain.do",
			dataType:"json",
			success:function(data){
				$("#CountCommentView").html(data).css("background","yellow");
			}
		});
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/getCountMemberMain.do",
			dataType:"json",
			success:function(data){
				$("#CountMemberView").html(data).css("background","yellow");
			}
		});
});//ready
</script>
	총 게시글 수 : <span id="CountBoardView"></span><br>
	총 후기글 수 : <span id="CountCommentView"></span><br>
	총 가입자 수 : <span id="CountMemberView"></span>	
	<br><br>
<h3>환영합니다!</h3><br><br>
<form action="${pageContext.request.contextPath}/searchMenu.do">
	<input type="text" name="search">
	<input type="submit" value="검색">
</form>	