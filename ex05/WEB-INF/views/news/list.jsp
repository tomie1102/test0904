<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ssskkk</h1>
	<%@ include file="../includes/header.jsp"%>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시판</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시판</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-striped table-bordered table-hover">
		
						<thead>
							<tr>
								<th>뉴스번호</th>
								<th>뉴스제목</th>
								<th>뉴스내용</th>
								<th>작성일</th>
								<th>수정일</th>
							</tr>
						</thead>
						<c:forEach items="${list }" var="list">
							<tr>
								<td><c:out value="${list.n_no }" /></td>
								<td><a class='move' href='<c:out value="${list.n_no }"/>'>
										<c:out value="${list.n_title }" /><b>[ <c:out
												value="${list.n_no }" /> ]
									</b>
								</a></td>
								<td><c:out value="${list.n_content }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${list.n_regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${list.n_updatedate }" /></td>
							</tr>
						</c:forEach>
					</table>
															
					<!-- 글등록기능 -->
					<button type="submit" onclick="location.href='register'" class="btn btn-info">글등록</button>
					
					<!-- 페이지이동 -->
					<form id='actionForm' action="/news/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
						<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
						<input type='hidden' name='keyword' value='<c:out value="${pageMake.cri.keyword }"/>'>
					</form>
				</div>
			</div>
		</div>
		<!-- end panel-body -->
	</div>
</body>
<script type="text/javascript">
		$(document).ready(
				function() {
					var result = '<c:out value="${result}"/>';
					checkModal(result);
					
					history.replaceState({}, null, null);

					function checkModal(result) {
						if (result === '' || history.state) {
							return;
						}

						if (parseInt(result) > 0) {
							$(".modal-body").html(
									"게시글" + parseInt(result) + "번 등록 완료");
						}

						$("#myModal").modal("show");
					}

					$("#regBtn").on("click", function() {
						self.location = "/news/register";
					});
					
					var actionForm=$("#actionForm");
					
					$(".paginate_button a").on("click", function(e) {
						e.preventDefault();
						console.log('click');
						actionForm.find("input[name='pageNum']").val($(this).attr("href"));
						actionForm.submit();
					});
					
					$(".move").on("click",function(e) {
						e.preventDefault();
					actionForm.append("<input type='hidden' name='n_no' value='"+
							$(this).attr("href")+"'>");
					actionForm.attr("action","/news/get");
					actionForm.submit();
					});
					
					var searchForm = $("#searchForm");
					
					$("#searchForm button").on("click", function(e) {
						if(!searchForm.find("option:selected").val()) {
							alert("검색종류 입력하세연");
							return false;
						}
						
						if(!searchForm.find("input[name='keyword']").val()) {
							alert("키워드 입력하세연");
							return false;
						}
						
						searchForm.find("input[name='pageNum']").val("1");
						e.preventDefault();
						
						searchForm.submit();
						
					});
					
				});
		
		
	</script>
</html>