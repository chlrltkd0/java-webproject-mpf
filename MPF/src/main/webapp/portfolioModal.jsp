<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<div class="portfolio-modal mfp-hide" id="portfolioModal">
	      <input type="hidden" id="portfolioId" value="" />
	      <div class="portfolio-modal-dialog bg-white">
	        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
	          <i class="fa fa-3x fa-times"></i>
	        </a>
	        <div class="container text-center">
	          <div class="row">
	            <div class="col-lg-12">
	              <h2 class="text-secondary text-uppercase mb-0" id="pfTitle" contentEditable="true">pfTitle</h2>
	              <hr class="star-dark mb-5">
	              <div class="left-box">
	                <img class="img-fluid mb-6" id="pfImage" src="" alt="">
	              </div>
	              
	              <div class="right-box">
	              <pre>
	       	        <p class="mb-5" id="pfContent" contentEditable="true" >pfContent</p>
	       	      </pre>
	              </div>
	              <div class="bottom-box">
	              <br>
				<div class="row">
				  <div class="col-2">
				    <div class="list-group" id="list-tab" role="tablist">
				      <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">설명</a>
				      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">동영상</a>
				      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">사진</a>
				      <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">환경</a>
				      <div class="row">
				  		<div class="col-8">
				  		  <input class="form-control" list="categorys">
				  		</div>
				  		<div class="col-4">
					  	  <button class="form-control btn btn-danger btn-md rounded-pill"><i class="fa fa-plus"></i></button>
				  		</div>
				  	  </div>
				    </div>
				  </div>
				  <div class="col-10">
				    <div class="tab-content" id="nav-tabContent">
				      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list" contentEditable="true">
				      asdasdasdasdasd시발시발시발롬
					  </div>
				      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
				      	<iframe width="640" height="360" id="video" src="null" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
				      	<br>
				      	<div class="row">
				      	  <div class="col-2 mx-auto">
				      	  	<label for="videolink">링크</label>
				      	  </div>
				      	  <div class="col-8 mx-auto">
				      	  	<input type="text" id="videolink" value="" class="form-control"/>
				      	  </div>
				      	</div>
				      </div>
				      
				      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
				      <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
				    </div>
				  </div>
				</div>
		          </div>
		          <br><br>
		          <c:if test="${curUser != null and user != null and curUser.id == user.id }">
		          	  <a class="btn btn-danger btn-lg rounded-pill portfolio-modal-dismiss" href="#" onclick="savePortfolio()"><i class="fa fa-check spaceLeft"></i>Save Project</a>
			          <a class="btn btn-warning btn-lg rounded-pill portfolio-modal-dismiss" href="#" onclick="deletePortfolio()"><i class="fa fa-trash"></i>Delete Project</a>
			      </c:if>
			      <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#"><i class="fa fa-close"></i>Close Project</a>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
</html>