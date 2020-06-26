<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
	.footer{
	  background: #152F4F;
	  color:white;
	  .links{
	    ul {list-style-type: none;}
	    li a{
	      color: white;
	      transition: color .2s;
	      &:hover{
	        text-decoration:none;
	        color:#4180CB;
	        }
	    }
  }  
  .about-company{
	  i{font-size: 25px;}
	  a{
	    color:white;
	    transition: color .2s;
	    &:hover{color:#4180CB}
	  }
  } 
  .location{
    i{font-size: 18px;}
  }
  .copyright p{border-top:1px solid rgba(255,255,255,.1);} 
}
</style>
</head>
<body>
<div class="mt-5 pt-5 pb-5 footer">
<div class="container">
  <div class="row">
    <div class="col-lg-5 col-xs-12 about-company">
      <h2>Heading</h2>
      <p class="pr-5 text-white-50">반려동물을 처음 집에 데리고오면 모르는 것이 너무 많습니다.<br>
																		데일리케어, 질병 정보, 행동/훈련 정보 등<br> 개냥이에서 차근히 공부해보세요.<br>
																		찾을 수 없는 정보가 있으면 질문란에 글을 남겨 주세요 </p>	
      <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i class="fa fa-linkedin-square"></i></a></p>
    </div>
    <div class="col-lg-3 col-xs-12 links">
      <h4 class="mt-lg-0 mt-sm-3">Links</h4>
        <ul class="m-0 p-0">
          <li>- <a href="#">Lorem ipsum</a></li>
          <li>- <a href="#">Nam mauris velit</a></li>
          <li>- <a href="#">Etiam vitae mauris</a></li>
          <li>- <a href="#">Fusce scelerisque</a></li>
          <li>- <a href="#">Sed faucibus</a></li>
          <li>- <a href="#">Mauris efficitur nulla</a></li>
        </ul>
    </div>
    <div class="col-lg-4 col-xs-12 location">
      <h4 class="mt-lg-0 mt-sm-4">Location</h4>
      <p>대한민국 전국 각 지역</p>
      <p class="mb-0"><i class="fa fa-phone mr-3"></i>010-1234-5678</p>
      <p><i class="fa fa-envelope-o mr-3"></i>info@hsdf.com</p>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col copyright">
      <p class=""><small class="text-white-50">© 2020. All Rights Reserved.</small></p>
    </div>
  </div>
</div>
</div>
</body>
</html>