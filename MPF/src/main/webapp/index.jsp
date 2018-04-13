<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>나의 포트폴리오</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Plugin CSS -->
    <link href="resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="resources/css/freelancer.min.css" rel="stylesheet">
    
    <style>
    
    #saveButton {
        position:fixed;
    	z-index:999;
    	top : 150px;
    	right : 50px;
    }
    
    .left-box {
	  float: left;
	  width: 50%;
	}
	.right-box {
	  float: right;
	  width: 50%;
	}
	.bottom-box {
	  clear: both;
	}
    
    </style>
    
</head>
	<body id="page-top">
	    <!-- Navigation -->
	    
		<%@ include file="navigate.jsp" %>
		
		<%@ include file="modal.jsp" %>
	
	    <!-- Header -->
	    <header class="masthead bg-primary text-white text-center">
		  <c:if test="${curUser != null and user != null and curUser.id == user.id }">
		  	<button class="btn btn-danger btn-lg" id="saveButton" onclick="savePage()">페이지 저장</button>
		  </c:if>
	      <div class="container">
		    <c:if test="${curUser != null and user != null and curUser.id == user.id }">
		      <input type="file" name="uploadimage" id="mainImage" style="display:none">
		      <c:if test="${curUser != null}">
			  	<img class="img-fluid mb-5 d-block mx-auto" id="imgView" src="resources/img/profile/${curUser.mainPage.imgName}" onclick="changeImage()" alt="">
			  </c:if>
			  <c:if test="${curUser == null}">
			  	<img class="img-fluid mb-5 d-block mx-auto" id="imgView" src="resources/img/profile/default.png" onclick="changeImage()" alt="">
			  </c:if>
		      <h1 class="text-uppercase mb-0" id="mainTitle" contentEditable="true">${curUser.mainPage.mainTitle}</h1>
		      <hr class="star-light">
		      <h2 class="font-weight-light mb-0" id="mainContent" contentEditable="true">${curUser.mainPage.mainContent}</h2>
			</c:if>
			
			<c:if test="${curUser == null or user == null or curUser.id != user.id }">
			  <c:if test="${curUser != null}">
			  <img class="img-fluid mb-5 d-block mx-auto" id="imgView" src="resources/img/profile/${curUser.mainPage.imgName}" alt="">
			  </c:if>
			  <c:if test="${curUser == null}">
			  <img class="img-fluid mb-5 d-block mx-auto" id="imgView" src="resources/img/profile/default.png" alt="">
			  </c:if>
	          <h1 class="text-uppercase mb-0" id="mainTitle">${curUser.mainPage.mainTitle}</h1>
	          <hr class="star-light">
	          <h2 class="font-weight-light mb-0" id="mainContent">${curUser.mainPage.mainContent}</h2>
			</c:if>
	      </div>
	    </header>
	    
<!-- 	    Portfolio Grid Section -->
	    <section class="portfolio" id="portfolio">
	      <div class="container">
	        <h2 class="text-center text-uppercase text-secondary mb-0">Portfolio</h2>
	        <hr class="star-dark mb-5">
	        <div class="row">
	          <c:forEach var="item" items="${curUser.portfolioList}">
		          <div class="col-md-6 col-lg-4">
		            <a class="portfolio-item d-block mx-auto" onclick="getPortfolio(${item.id})" href="#portfolioModal">
		              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
		                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
		                  <i class="fa fa-search-plus fa-3x"></i>
		                </div>
		              </div>
		              <img class="img-fluid" src="resources/img/portfolio/${item.mainImage}" alt="">
		            </a>
		          </div>
	          </c:forEach>
	          <c:if test="${curUser != null and user != null and curUser.id == user.id }">
			  	<div class="col-md-6 col-lg-4">
	              <a class="portfolio-item d-block mx-auto" onclick="createPortfolio()" href="#">
	                <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
	                  <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
	                  </div>
	                </div>
	                <img class="img-fluid" src="resources/img/portfolio/plus.png" alt="">
	              </a>
	          	</div>
			  </c:if>
	        </div>
	      </div>
	    </section>
	
	    <!-- About Section -->
	    <section class="bg-primary text-white mb-0" id="about">
	      <div class="container">
	       <c:if test="${curUser != null and user != null and curUser.id == user.id }">
			  <h2 class="text-center text-uppercase text-white" id="subTitle" contentEditable="true">${curUser.mainPage.subTitle}</h2>
			</c:if>
			<c:if test="${curUser == null or user == null or curUser.id != user.id }">
			  <h2 class="text-center text-uppercase text-white" id="subTitle">${curUser.mainPage.subTitle}</h2>
			</c:if>
	        <hr class="star-light mb-5">
	        <div class="row">
	          <c:if test="${curUser != null and user != null and curUser.id == user.id }">
			    <div class="col-lg-4 ml-auto" id="subContentLeft" contentEditable="true">
	              ${curUser.mainPage.subContentLeft}
	            </div>
	            <div class="col-lg-4 mr-auto" id="subContentRight" contentEditable="true">
	              ${curUser.mainPage.subContentRight}
	            </div>
			  </c:if>
			  <c:if test="${curUser == null or user == null or curUser.id != user.id }">
			    <div class="col-lg-4 ml-auto" id="subContentLeft">${curUser.mainPage.subContentLeft}</div>
	            <div class="col-lg-4 mr-auto" id="subContentRight">${curUser.mainPage.subContentRight}</div>
			  </c:if>
	        </div>
	        <%@ include file="resumeModal.jsp" %>
	        <div class="text-center mt-4">
	          <a class="portfolio-item btn btn-xl btn-outline-light" href="#resumeModal">
	            <i class="fa fa-download mr-2"></i> 이력서 보기!
	          </a>
	        </div>
	      </div>
	    </section>

	
	    <!-- Footer -->
	    <footer class="footer text-center">
	      <div class="container">
	        <div class="row">
	          <div class="col-md-4 mb-5 mb-lg-0">
	            <h4 class="text-uppercase mb-4">Location</h4>
	            <p class="lead mb-0">2215 John Daniel Drive
	              <br>Clark, MO 65243</p>
	          </div>
	          <div class="col-md-4 mb-5 mb-lg-0">
	            <h4 class="text-uppercase mb-4">Around the Web</h4>
	            <ul class="list-inline mb-0">
	              <li class="list-inline-item">
	                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
	                  <i class="fa fa-fw fa-facebook"></i>
	                </a>
	              </li>
	              <li class="list-inline-item">
	                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
	                  <i class="fa fa-fw fa-google-plus"></i>
	                </a>
	              </li>
	              <li class="list-inline-item">
	                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
	                  <i class="fa fa-fw fa-twitter"></i>
	                </a>
	              </li>
	              <li class="list-inline-item">
	                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
	                  <i class="fa fa-fw fa-linkedin"></i>
	                </a>
	              </li>
	              <li class="list-inline-item">
	                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
	                  <i class="fa fa-fw fa-dribbble"></i>
	                </a>
	              </li>
	            </ul>
	          </div>
	          <div class="col-md-4">
	            <h4 class="text-uppercase mb-4">About Freelancer</h4>
	            <p class="lead mb-0">Freelance is a free to use, open source Bootstrap theme created by
	              <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
	          </div>
	        </div>
	      </div>
	    </footer>
	
	    <div class="copyright py-4 text-center text-white">
	      <div class="container">
	        <small>Copyright &copy; Your Website 2018</small>
	      </div>
	    </div>
	
	    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	    <div class="scroll-to-top d-lg-none position-fixed ">
	      <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
	        <i class="fa fa-chevron-up"></i>
	      </a>
	    </div>
	
	    <!-- Portfolio Modals @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	    <%@ include file="portfolioModal.jsp" %>
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="resources/vendor/jquery/jquery.min.js"></script>
	    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	    <!-- Plugin JavaScript -->
	    <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	    <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	
	    <!-- Contact Form JavaScript -->
	    <script src="resources/js/jqBootstrapValidation.js"></script>
	    <script src="resources/js/contact_me.js"></script>
	
	    <!-- Custom scripts for this template -->
	    <script src="resources/js/freelancer.min.js"></script>
	    
	    <script>
	    
   	 	$('#mainImage').on('change', function() {
	        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	            resetFormElement($(this)); //폼 초기화
	            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	        } else {
	            file = $('#mainImage').prop("files")[0];
	            blobURL = window.URL.createObjectURL(file);
	            $('#imgView').attr('src', blobURL);
	            $('#imgView').slideDown(); //업로드한 이미지 미리보기 
//	            $(this).slideUp(); //파일 양식 감춤
	        }
	    });
   	 	
   	 	
   	 	$('#pfImageInput').on('change', function() {
	        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	            resetFormElement($(this)); //폼 초기화
	            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	        } else {
	            file = $('#pfImageInput').prop("files")[0];
	            blobURL = window.URL.createObjectURL(file);
	            $('#pfImageView').attr('src', blobURL);
	            $('#pfImageView').slideDown(); //업로드한 이미지 미리보기 
//	            $(this).slideUp(); //파일 양식 감춤
	        }
	    });
   	 
   	 
	    function savePage(){
	    	$.ajax({
	    		'url' : 'savePage.do',
	    		'type' : 'post',
	    		'data' : {
	    			'mainTitle' : $('#mainTitle').text(),
	    			'mainContent' : $('#mainContent').text(),
	    			'subTitle' : $('#subTitle').text(),
	    			'subContentLeft' : $('#subContentLeft').text(),
	    			'subContentRight' : $('#subContentRight').text()
	    		},
	    		'success' : function(data){
	    			if(data!=true){
	    				alert('수정 실패');
	    			}
	    		},
	    		'error' : function(error){
	    			console.log(error);
	    		}
	    	})
	    	
	    	if($('#mainImage').val()!=""){
	    		var formData = new FormData();
	    		formData.append('uploadimage', $('#mainImage')[0].files[0]);
	    		$.ajax({
		    		'url' : 'uploadMainImage.do',
		    		'type' : 'post',
		    		'data' : formData,
		    		'processData': false, 
		    		'contentType': false,
		    		'success' : function(data){
		    		},
		    		'error' : function(error){
		    			console.log(error);
		    		}
		    	})
	    	}
	    }
	    
	    function changeImage(){
	    	$('#mainImage').click();
	    }
	    
	    function changepfImage(){
	    	$('#pfImageInput').click();
	    }
	    
	    function createPortfolio(){
	    	$.ajax({
	    		'url' : 'createPortfolio.do',
	    		'type' : 'post',
	    		'success' : function(data){
	    			if(data==true){
	    				window.location.reload();
	    			} else {
	    				alert('프로젝트 생성 실패');
	    			}
	    		},
	    		'error' : function(error){
	    			console.log(error);
	    		}
	    	})
	    }
	    
	    function deletePortfolio(){
	    	var id = $('#portfolioId').val();
	    	if(confirm('포트폴리오를 삭제하면 복구할 수 없습니다. 정말 삭제하시겠습니까?')){
	    		$.ajax({
		    		'url' : 'deletePortfolio.do',
		    		'type' : 'post',
		    		'data' : {
		    			'id' : id,
		    		},
		    		'success' : function(data){
		    			if(data==true){
		    				window.location.reload();
		    			} else {
		    				alert('프로젝트 삭제 실패');
		    			}
		    		},
		    		'error' : function(error){
		    			console.log(error);
		    		}
		    	})
	    	}
	    }
	    
	    function savePortfolio(){
	    	var id = $('#portfolioId').val();
	    	$.ajax({
	    		'url' : 'savePortfolio.do',
	    		'type' : 'post',
	    		'data' : {
	    			'id' : id,
	    			'mainTitle' : $('#pfTitle').text(),
	    			'mainContent' : $('#pfContent').text(),
	    			'videoLink' : $('#videolink').val()
	    		},
	    		'success' : function(data){
	    			if(data==true){
	    				alert('수정 성공');
	    			} else {
	    				alert('수정 실패');
	    			}
	    		},
	    		'error' : function(error){
	    			console.log(error);
	    		}
	    	})
	    	
	    	if($('#pfImageInput').val()!=""){
	    		var formData = new FormData();
	    		formData.append('uploadimage', $('#pfImageInput')[0].files[0]);
	    		formData.append('id', id);
	    		$.ajax({
		    		'url' : 'uploadPortfolioImage.do',
		    		'type' : 'post',
		    		'data' : formData,
		    		'processData': false, 
		    		'contentType': false,
		    		'success' : function(data){
		    		},
		    		'error' : function(error){
		    			console.log(error);
		    		}
		    	})
	    	}
	    }
	    
	    function getPortfolio(id){
	    	$.ajax({
	    		'url' : 'getPortfolio.do',
	    		'type' : 'post',
	    		'data' : {
	    			'id' : id
	    		},
	    		'success' : function(data){
	    			if(data!=null){
	    				$('#portfolioId').val(data.id);
	    				$('#pfTitle').text(data.mainTitle);
	    				$('#pfImageView').attr('src', 'resources/img/portfolio/' + data.mainImage);
	    				$('#pfContent').text(data.mainContent);
	    				$('#video').attr('src', data.videoLink);
	    				$('#videolink').val(data.videoLink);
	    			}
	    		},
	    		'error' : function(error){
	    			console.log(error);
	    		}
	    	})
	    }
	    </script>
	
	</body>
</html>

