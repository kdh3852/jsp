<%@page import="java.sql.Clob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. Context객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsPSK");
	
	//3. CP에서 connection 가져오기
	Connection con =  ds.getConnection();
	
	String sql = "SELECT P.NAME FROM CART C INNER JOIN PRODUCT P ON C.PRODUCT_ID = P.PRODUCT_ID";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
<section class="pt-5 pb-5">
  <div class="container">
    <div class="row w-100">
        <div class="col-lg-12 col-md-12 col-12">
            <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
            <p class="mb-5 text-center">
                <i class="text-info font-weight-bold">3</i> items in your cart</p>
            <table id="shoppingCart" class="table table-condensed table-responsive">
                <thead>
                    <tr>
                        <th style="width:60%">상품/옵션 정보</th>
                        <th style="width:12%">상품금액</th>
                        <th style="width:10%">수량</th>
                        <th style="width:16%"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
             	    	<%
											while(rs.next()){
											String name = rs.getString("NAME");
											%>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-md-3 text-left">
                                    <img src="https://via.placeholder.com/250x250/5fa9f8/ffffff" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow">
                                </div>
                                <div class="col-md-9 text-left mt-sm-2">
                                    <h4><%=name %></h4>
                                    <p class="font-weight-light"></p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price"></td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control form-control-lg text-center" value="1">
                        </td>
                        <td class="actions" data-th="">
                            <div class="text-right">
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-sync"></i>
                                </button>
                                <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
               				<% }
											con.close();
											st.close();
											rs.close();
											%>
                </tbody>
            </table>
            <div class="float-right text-right">
                <h4>Subtotal:</h4>
                <h1>$99.00</h1>
            </div>
        </div>
    </div>
    <div class="row mt-4 d-flex align-items-center">
        <div class="col-sm-6 order-md-2 text-right">
            <a href="catalog.html" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
        </div>
        <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
            <a href="catalog.html">
                <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
        </div>
    </div>
</div>
</section>
</body>
</html>