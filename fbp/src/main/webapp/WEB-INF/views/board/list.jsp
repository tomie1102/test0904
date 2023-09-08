<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	


<title>게시판 리스트</title>
</head>
<body>
	<h1>KI MO CHI</h1>
	<%@ include file="../includes/header.jsp"%>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">다크웹 게시판</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>수정일</th>
							</tr>
						</thead>
						<c:forEach items="${list }" var="board">
							<tr>
								<td><c:out value="${board.bno }" /></td>
								<%-- <td><a href='/board/get?bno=<c:out value="${board.bno}"/>'><c:out
											value="${board.title}" /></a></td> --%>
								<td>
								<a class='move' href='<c:out value="${board.bno }"/>'>
								<c:out value="${board.title }" /><b>[ <c:out value="${board.replyCnt }" /> ]</b></a>
								
								</td>
								<td><c:out value="${board.writer }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.updateDate }" /></td>
							</tr>
						</c:forEach>
					</table>
					
					<!-- 검색기능 -->
					<div class='row'>
						<div class="col-lg-12">
						
						<form id='searchForm' action="/board/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
									+ 내용</option>
								<option value="TW"
									<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
									+ 작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
									+ 내용 + 작성자</option>
							</select>
							<input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
							<input type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
							<input type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-default'>검색</button>
						</form>
						
						</div>
					</div>
					
					<!-- 페이징기능 -->
					<div class='pull-right'>
						<ul class="pagination">
							<c:if test="${pageMaker.prev }">
								<li class="paginate_button previous"><a href="${pageMaker.startPage-1 }">이전페이지</a>
								</li>
							</c:if>
							
							<c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li class="paginate_button ${pageMaker.cri.pageNum == num? "active":"" }">
							<a href="${num }">${num }</a>
							</li>
							</c:forEach>
							
							<c:if test="${pageMaker.next }">
								<li class="paginate_button next"><a href="${pageMaker.endPage+1 }">다음페이지</a>
								</li>
							</c:if>
						</ul>
					</div>
					
					<!-- 글등록기능 -->
					<button type="submit" onclick="location.href='register'" class="btn btn-info">글등록</button>
					
					<!-- 페이지이동 -->
					<form id='actionForm' action="/board/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
						<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
						<input type='hidden' name='keyword' value='<c:out value="${pageMake.cri.keyword }"/>'>
					</form>

					<!-- Modal 추가 -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aira-labeledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
								</div>
								<div class="modal-body">처리완료</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>

					</div>
					<!-- /.madal -->
				</div>
			</div>
		</div>
		<!-- end panel-body -->
	</div>
	<!-- 	end panel -->
	<%@ include file="../includes/footer.jsp"%>
	
	
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
						self.location = "/board/register";
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
					actionForm.append("<input type='hidden' name='bno' value='"+
							$(this).attr("href")+"'>");
					actionForm.attr("action","/board/get");
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
</body>
</html>