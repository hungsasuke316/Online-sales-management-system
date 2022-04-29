<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/include/navbar.jsp"%>
    <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<html lang="en">
    <head>
     
       <!-- <!--  <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" /> --> 
        <title>Trang chủ</title>
        <base href="${pageContext.servletContext.contextPath}/">
         <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:url value='/resources/srcHome/css/styles.css'/>" rel="stylesheet" />
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    </head>
    <style>
				    	/* Made with love by Mutiullah Samim*/
				
				@import url('https://fonts.googleapis.com/css?family=Numans');
				
				html,body{
				background-image: url('https://noithatminhkhoi.com/upload/sanpham/large/giuong-ngu-go-cam-xe-boc-nem-cao-cap-gn1036-5638-1.jpg');
				background-size: cover;
				background-repeat: no-repeat;
				height: 100%;
				font-family: 'Numans', sans-serif;
				}
				
				.container{
				height: 100%;
				align-content: center;
				}
				
				.card{
				height: 370px;
				margin-top: auto;
				margin-bottom: auto;
				width: 400px;
				background-color: rgba(0,0,0,0.5) !important;
				}
				
				.social_icon span{
				font-size: 60px;
				margin-left: 10px;
				color: #FFC312;
				}
				
				.social_icon span:hover{
				color: white;
				cursor: pointer;
				}
				
				.card-header h3{
				color: white;
				}
				
				.social_icon{
				position: absolute;
				right: 20px;
				top: -45px;
				}
				
				.input-group-prepend span{
				width: 50px;
				background-color: #FFC312;
				color: black;
				border:0 !important;
				}
				
				input:focus{
				outline: 0 0 0 0  !important;
				box-shadow: 0 0 0 0 !important;
				
				}
				
				.remember{
				color: white;
				}
				
				.remember input
				{
				width: 20px;
				height: 20px;
				margin-left: 15px;
				margin-right: 5px;
				}
				
				.login_btn{
				color: black;
				background-color: #FFC312;
				width: 100px;
				}
				
				.login_btn:hover{
				color: black;
				background-color: white;
				}
				
				.links{
				color: white;
				}
				
				.links a{
				margin-left: 4px;
				}
    </style>
    <body> 
    
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Sign In</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form action="admin/quan-ly-do-go.htm" method="get">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" name="user" id="user" placeholder="username">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control"name="pass" id="pass" placeholder="password">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<input type="submit"  value="Login" class="btn float-right login_btn" >
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="#">Sign Up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
		</div>
	</div>
</div>     
        <%-- <%@include file="/WEB-INF/views/include/userViews/footer.jsp" %>  --%>
        <!-- <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">76 Dream House, Dreammy Street, Quang Ngai, Viet Nam</p></div>
        </footer> -->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
       <!-- Core theme JS-->
        <script src="<c:url value='/resources/srcHome/js/scripts.js'/>"></script>
        
	<script src="<c:url value='/resources/srcText/js/jquery.min.js'/>"></script>
  	<script src="<c:url value='/resources/srcText/js/popper.js'/>"></script>
  	<script src="<c:url value='/resources/srcText/js/bootstrap.min.js'/>"></script>
  	<script src="<c:url value='/resources/srcText/js/main.js'/>"></script>
    </body>
</html>
