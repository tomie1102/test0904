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
	


<title>팀 목록</title>
</head>
<body>
<h1>KI MO CHI</h1>
	<%@ include file="../includes/header.jsp"%>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">팀 목록</h1>
		</div>
	</div>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>팀번호</th>
				<th>팀명</th>
				<th>리그명</th>
				<th>팀사진</th>
				<th>스타디움</th>
				<th>상세설명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td><c:out value="${list.t_no}" /></td>
					<td><a class='move' href='<c:out value="${list.t_no }"/>'>
							<c:out value="${list.t_name }" /> <b>[ <c:out
									value="${list.t_name }" /> ]
						</b>
					</a></td>
					<td><c:out value="${list.t_league}" /></td>
					<td><c:out value="${list.t_photo}" /></td>
					<td><c:out value="${list.t_stadium}" /></td>
					<td><c:out value="${list.t_description}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
					<!-- 글등록기능 -->
					<button type="submit" onclick="location.href='register'" class="btn btn-info">글등록</button>
					
					<!-- 페이지이동 -->
					<form id='actionForm' action="/team/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
						<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'>
						<input type='hidden' name='keyword' value='<c:out value="${pageMake.cri.keyword }"/>'>
					</form>



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
						self.location = "/team/insert";
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
					actionForm.append("<input type='hidden' name='t_no' value='"+
							$(this).attr("href")+"'>");
					actionForm.attr("action","/team/get");
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
