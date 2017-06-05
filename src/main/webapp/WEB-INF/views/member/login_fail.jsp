<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pageOut() {
		location.href = "${pageContext.request.contextPath}/home.do";
	}
	function keypress(){
		if(event.keyCode==13){
			location.href = "${pageContext.request.contextPath}/home.do";
		}
	}
</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/member/result.css">
</head>
	<!-- 배너 타이틀 -->
<section id="page-breadcrumb">
	<div class="vertical-center sun">
		<div class="container">
			<div class="row">
				<div class="action">
					<div class="col-sm-4">
						<h1 class="title">로그인 실패</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--배너 타이틀-->
<body onkeypress="keypress()" class="result" >
	<c:if test="${sessionScope.mvo==null}">
				<h1>아이디와 비밀번호를 확인해 주세요</h1>
				<a href="${pageContext.request.contextPath}/home.do"><input type="button" value="확인" onclick="pageOut()"></a>
	</c:if>
</body>
</html>
