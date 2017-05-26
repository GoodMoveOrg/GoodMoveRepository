<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<h3>home-search</h3><br><br>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#Category").click(function(){
		var id= $("#Category").val();
		var keyword = $("#keyword").val();
		alert(id + keyword);
		if(id=="ProductName"){
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/searchByProductName.do?id="+id+"&keyword="+keyword,
			dataType:"json",
			success:function(data){
				for(var i=0; i<data.length; i++){
					alert(data[i]);
				}
			}
		});
		}
	});
	
	$("#getJSONTest").click(function(){
		//$.ajax() 함수를 좀 더 축약된 형태로 사용하는 getJSON()함수	
		$.getJSON("JSONServlet","command=test&id=java", function(data){
			$("#nameView").html(data.name);
			$("#ageView").html(data.age);
		});
	});
//총 게시글,멤버수,물품수	
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
	<input type="text" id="keyword" name="search" value="${requestScope.search}">
	<input type="submit" value="검색"><br><br><br>
<input type="button" id="Category" value="ProductName"><br>
<input type="button" id="Category" value="ProductRegion"><br>
<input type="button" id="Category" value="ProductRegistor"><br>
<input type="button" id="Category" value="CommentName"><br>
<input type="button" id="Category" value="CommentRegion"><br>
<input type="button" id="Category" value="CommentRegistor"><br>

