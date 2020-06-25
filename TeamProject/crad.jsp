<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script> 
    
    <title>반려동물 등록</title>
</head>
  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
  <div class="card align-middle" style="width:20rem; border-radius:20px;">
    <div class="card-title" style="margin-top:30px;">
			<h2 class="card-title text-center" style="color:black;">반려동물 등록</h2>
		</div>
		
    <div class="card-body">
      <form class="form-signin" method="post" onSubmit="logincall();return false">
        <div class="media border p-3">
          <img src="img.jpg" alt="picture" class="mr-3 mt-3 rounded-circle" style="width:100px; height:100px;">
        </div>
        
        <label for="inputName" class="name">이름</label>
        <input type="text" id="uname" class="form-control" placeholder="이름을 입력해주세요." required autofocus><br>
        
        <!-- 생일 -->
        <label for="inputBir" class="bir">생일</label>
        <input type="date" id="ubir" class="form-control" required autofocus><br>
        
        <!-- 품종선택 -->
        <div class="dropdown">
          <label for="inputKind" class="kind">품종</label><br>
          <button type="button" class="btn" data-toggle="dropdown">
                       품종을 선택해주세요.
          </button>
          <div class="dropdown-menu">
              <a class="dropdown-item">노르웨이 숲</a>
              <a class="dropdown-item">러시안블루</a>
              <a class="dropdown-item">뱅갈</a>
              <a class="dropdown-item">샴</a>
              <a class="dropdown-item">브리티시 숏헤어</a>
              <a class="dropdown-item">아메리칸 숏헤어</a>
              <a class="dropdown-item">스코티시 폴드</a>
              <a class="dropdown-item">터키시 반</a>
              <a class="dropdown-item">토이거</a>
          </div>
        </div><br>
        
        <!-- 성별 -->
        <div class="dropdown">
          <label for="inputGender" class="gender">성별</label><br>
          <button type="button" class="btn" data-toggle="dropdown">
                         성별을 선택해주세요.
          </button>
          <div class="dropdown-menu">
              <a class="dropdown-item">여아</a>
              <a class="dropdown-item">남아</a>
          </div>
        </div><br>
        
        <!-- 알러지 유무 -->
        <div class="dropdown">
          <label for="inputAllergy" class="allergy">알러지가 있습니까?</label><br>
          <button type="button" class="btn" data-toggle="dropdown">
                         알러지 유무를 선택해주세요.
          </button>
          <div class="dropdown-menu">
              <a class="dropdown-item">있음</a>
              <a class="dropdown-item">없음</a>
          </div>
        </div><br><br>
        
        <button id="btn-OK" class="btn btn-lg btn-primary btn-block" type="submit">작성완료</button>
      </form>
		</div>
  </div>
</body>
</html>