<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
.navbar{
	min-height:10px;
}
.nav{
	font-size : 10px;
	color : gray;
}
.jumbotron{
	background-color: #FFFFFF;
	margin-bottom : 0;
}

.nav-item{
	font-size: 12px;
}
.dropdown:hover>.dropdown-menu {
	  display: block;
}
.dropdown-toggle::after {
  display:none;
}

@media all and (min-width: 992px) {
	.navbar{ padding-top: 0; padding-bottom: 0; }
	.navbar .has-megamenu{position:static!important;}
	.navbar .megamenu{left:0; right:0; width:100%; padding:20px;  }
	.navbar .nav-link{ padding-top:1rem; padding-bottom:1rem;  }
}
</style>
<title>개냥이</title>
</head>
<body>
	<nav class="navbar navbar-expand-md py-0 navbar-light bg-light">
		<div class="container">
		<a class="navbar-brand" href="#">
   			 <img src="image/dogNcat.PNG" alt="logo" style="width:40px;">
		</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
   	 <span class="navbar-toggler-icon"></span>
 		</button>
	  <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2" id="collapsibleNavbar">
      <ul class="navbar-nav mr-auto">
          <li class="nav-item py-0">
              <a class="nav-link" href="#">로그인</a>
          </li>
          <li class="nav-item py-0">
              <a class="nav-link" href="#">회원가입</a>
          </li>
          <li class="nav-item py-0">
              <a class="nav-link" href="#">장바구니</a>
          </li>
          <li class="nav-item py-0">
              <a class="nav-link" href="#">내 반려동물 등록</a>
          </li>
          <li class="nav-item py-0">
              <a class="nav-link" href="#">마이페이지</a>
          </li>
      </ul>
    </div>
    <div class="navbar-collapse collapse w-100 order-2 dual-collapse2" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item py-0">
                <a class="nav-link" href="#">커뮤니티</a>
            </li>
            <li class="nav-item py-0">
                <a class="nav-link" href="#">문의하기</a>
            </li>
            <li class="nav-item py-0">
                <a class="nav-link" href="#">즐겨찾기</a>
            </li>
        </ul>
       </div>
     </div>
  </nav>
  <div class="jumbotron jumbotron-fluid" style=" margin-bottom : 0; background:#ffffff">
	  <div class="row text-center" style="width: 100%">
			<div style="width: 30%; float:none; margin:0 auto;" >
			  <div class="container">
			    <h1><b>개냥이</b></h1>      
			  </div>
			</div>
		</div>
	</div>
	
	
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="main_nav">
				<ul class="navbar-nav">
					<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
							<i class="material-icons">list</i>
						</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-2">
                    <div class="col-megamenu">
                    	<h4 class="title">자유게시판</h4>
                     <ul class="list-unstyled">
                         <li><a href="#">자유게시판</a></li>
                         <li><a href="#">문의게시판</a></li>
                         <li><a href="#">중고판매 게시판</a></li>
                         <li><a href="#">노하우게시판</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                   </div><!-- end col-3 -->
                   <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">사료상품</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">전연령</a></li>
                         <li><a href="#">성견용</a></li>
                         <li><a href="#">노령견용</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">간식상품</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">건강식</a></li>
                         <li><a href="#">수제간식</a></li>
                         <li><a href="#">비스킷</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">지식정보</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">강아지 건강</a></li>
                         <li><a href="#">강아지 행동/정보</a></li>
                         <li><a href="#">강아지 훈련소</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">견종백과</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">소형견</a></li>
                         <li><a href="#">중형견</a></li>
                         <li><a href="#">대형견</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">사진첩</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">소형견</a></li>
                         <li><a href="#">중형견</a></li>
                         <li><a href="#">대형견</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                   	<div class="col-megamenu">
                    	<h4 class="title">자유게시판</h4>
                   		 <ul class="list-unstyled">
                         <li><a href="#">자유게시판</a></li>
                         <li><a href="#">문의게시판</a></li>
                         <li><a href="#">중고판매 게시판</a></li>
                         <li><a href="#">노하우게시판</a></li>
                  		  </ul>
                  	 </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                    <div class="col-md-2">
                  	<div class="col-megamenu">
                   		<h4 class="title">사료상품</h4>
	                      <ul class="list-unstyled">
                         <li><a href="#">고양이사료</a></li>
	                      </ul>
                      </div>  <!-- col-megamenu.// -->
                      </div><!-- end col-3 -->
                      <div class="col-md-2">
                      	<div class="col-megamenu">
                          <h4 class="title">간식 / 캔</h4>
                            <ul class="list-unstyled">
		                         <li><a href="#">건강식</a></li>
		                         <li><a href="#">수제간식</a></li>
		                         <li><a href="#">비스킷</a></li>
                           </ul>
                          </div>  <!-- col-megamenu.// -->
                      </div><!-- end col-3 -->
                      <div class="col-md-2">
                      	<div class="col-megamenu">
                          <h4 class="title">지식정보</h4>
                              <ul class="list-unstyled">
                               <li><a href="#">고양이 건강</a></li>
				                       <li><a href="#">고양이 행동/정보</a></li>
				                       <li><a href="#">고양이 음식</a></li>
                              </ul>
                          </div>  <!-- col-megamenu.// -->
                      </div><!-- end col-3 -->
                      <div class="col-md-2">
                      	<div class="col-megamenu">
                          <h4 class="title">묘종백과</h4>
                              <ul class="list-unstyled">
                                  <li><a href="#">소형묘</a></li>
                                  <li><a href="#">중형묘</a></li>
                                  <li><a href="#">대형묘</a></li>
                              </ul>
                          </div>  <!-- col-megamenu.// -->
                      </div>    
                      <div class="col-md-2">
                      	<div class="col-megamenu">
                          <h4 class="title">사진첩</h4>
                              <ul class="list-unstyled">
                         <li><a href="#">소형묘</a></li>
                         <li><a href="#">중형묘</a></li>
                         <li><a href="#">대형묘</a></li>
                              </ul>
                          </div>  <!-- col-megamenu.// -->
                      </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">자유게시판</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">사료</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">간식 / 캔</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">건강 관리</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">품종</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
						<li class="nav-item dropdown has-megamenu">
						<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">사진첩</a>
					    <div class="dropdown-menu megamenu" role="menu">
                <div class="row">
                  <div class="col-md-3">
                    <div class="col-megamenu">
                    	<h6 class="title">강아지</h6>
                     <ul class="list-unstyled">
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                         <li><a href="#">Custom Menu</a></li>
                     </ul>
                    </div>  <!-- col-megamenu.// -->
                  </div><!-- end col-3 -->
                    <div class="col-md-3">
                    	<div class="col-megamenu">
                        <h6 class="title">고양이</h6>
                            <ul class="list-unstyled">
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                                <li><a href="#">Custom Menu</a></li>
                            </ul>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                      <div class="col-md-3">
                    	<div class="col-megamenu">
                       <a class="navbar-brand" href="#">
   											 <img src="image/a.jpg" alt="logo" style="width:280px;">
											</a>
                        </div>  <!-- col-megamenu.// -->
                    </div><!-- end col-3 -->
                  </div><!-- end row --> 
    				  </div> <!-- dropdown-mega-menu.// -->
						</li>
					</ul>
 			 </div> <!-- navbar-collapse.// -->
			</nav>
		</div>
	 
		
	
</body>
</html>