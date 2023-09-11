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
<title>등록하기</title>
</head>
<body>
	<%@ include file="../includes/header.jsp"%>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시판 등록스</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">게시판 등록기</div>
				<div class="panel-body">
					<form role="form" action="/news/register" method="post">
						<div class="form-group">
							<label>뉴스제목</label> <input class="form-control" name='n_title'>
						</div>

						<div class="form-group">
							<label>뉴스내용</label>
							<textarea class="form-control" rows="3" name='n_content'></textarea>
						</div>

						<div class="form-group">
							<label>글쓴이</label> <input class="form-control" name='n_writer'>
						</div>
						
						
						

						<button type="submit" class="btn btn-default">작성하기</button>
						<button type="reset" class="btn btn-default">초기화</button>
					</form>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.row -->
	
	<!-- 파일업로드 추가하는부분 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">파일 첨부</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="form-group uploadDiv">
						<input type="file" name='uploadFile' multiple>
					</div>
					
					<div class='uploadResult'>
						<ul>
						
						</ul>
					</div>
					
				</div>
				<!-- end panel body -->
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.row -->
	
	<%@ include file="../includes/footer.jsp"%>
</body>
<script>
$(document).ready(function(e) {
	
	/* var formObj = $("form[role='form']");
	
	$("button[type='submit']").on("click", function(e) {
		e.preventDefault();

		console.log("submit clicked");
	}); */
	
	var formObj = $("form[role='form']");
	  
	  $("button[type='submit']").on("click", function(e){
	    
	    e.preventDefault();
	    
	    console.log("submit clicked");
	    
	    var str = "";
	    
	    $(".uploadResult ul li").each(function(i, obj){
	      
	      var jobj = $(obj);
	      
	      console.dir(jobj);
	      console.log("-------------------------");
	      console.log(jobj.data("filename"));
	      
	      
	      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
	      
	    });
	    
	    console.log(str);
	    
	    formObj.append(str).submit();
	    
	  });
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB

	function checkExtension(fileName, fileSize) {

		if (fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}

		if (regex.test(fileName)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	$("input[type='file']").change(function(e){

	    var formData = new FormData();
	    
	    var inputFile = $("input[name='uploadFile']");
	    
	    var files = inputFile[0].files;
	    
	    for(var i = 0; i < files.length; i++){

	      if(!checkExtension(files[i].name, files[i].size) ){
	        return false;
	      }
	      formData.append("uploadFile", files[i]);
	      
	    }
	    
	    $.ajax({
	      url: '/uploadAjaxAction',
	      processData: false, 
	      contentType: false,data: 
	      formData,type: 'POST',
	      dataType:'json',
	        success: function(result){
	          console.log(result); 
			  showUploadResult(result); //업로드 결과 처리 함수 

	      }
	    }); //$.ajax
	});
	    
	    function showUploadResult(uploadResultArr) {
			
			if(!uploadResultArr || uploadResultArr.length == 0){ return;}
			
			var uploadUL = $(".uploadResult ul");
			
			var str ="";
			
			$(uploadResultArr).each(function(i, obj) {
				//image type
				if(obj.image){
					var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
					str += "<li data-path='"+obj.uploadPath+"'";
					str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
					str +" ><div>";
					str += "<span> "+ obj.fileName+"</span>";
					str += "<button type='button' data-file=\'"+fileCallPath+"\' "
					str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str +"</li>";
				}else{
					var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);			      
				    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
				      
					str += "<li "
					str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
					str += "<span> "+ obj.fileName+"</span>";
					str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
					str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
					str += "<img src='/resources/img/attach.png'></a>";
					str += "</div>";
					str +"</li>";
				}
			});
			uploadUL.append(str);
		}
	    
	    $(".uploadResult").on("click", "button", function(e){
		    
	        console.log("delete file");
	          
	        var targetFile = $(this).data("file");
	        var type = $(this).data("type");
	        
	        var targetLi = $(this).closest("li");
	        
	        $.ajax({
	          url: '/deleteFile',
	          data: {fileName: targetFile, type:type},
	          dataType:'text',
	          type: 'POST',
	            success: function(result){
	               alert(result);
	               
	               targetLi.remove();
	             }
	        }); //$.ajax
	       });
});
</script>
</html>