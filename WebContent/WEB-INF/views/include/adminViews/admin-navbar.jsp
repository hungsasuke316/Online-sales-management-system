<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<c:url value='/resources/nav-bar/css/style.css'/>">

	</head>
	<body>
	<section>
	
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid">
	    
	      <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button> -->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav m-auto">
	        	<li class="nav-item active"><a href="${pageContext.request.contextPath}/home/index.htm" class="nav-link">Home</a></li>
	        	<!-- <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Page</a>
              
            </li> -->
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/quan-ly-do-go.htm" class="nav-link">Quản Lý Đồ Gỗ</a></li>
	        	<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/them-do-go.htm" class="nav-link">Thêm Đồ Gỗ</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/quan-ly-don-hang.htm" class="nav-link">Quản Lý Đơn Hàng</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/quan-ly-binh-luan.htm" class="nav-link">Quản Lý Bình Luận</a></li>
	          <li class="nav-item"><a href="${pageContext.request.contextPath}/home/index.htm" class="nav-link">Đăng xuất</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

	</section>

	<script src="<c:url value='/resources/nav-bar/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/nav-bar/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/nav-bar/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/nav-bar/js/main.js'/>"></script>

	</body>
</html>

