<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Đồ Gỗ Nội Thất-Khắc Hưng</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="/WEB-INF/views/include/adminViews/admin-navbar.jsp"%>
	<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>

	<div class="container-fluid px-4">
		<h1 class="mt-4">Thêm mới sản phẩm</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="index.html">Admin</a></li>
			<li class="breadcrumb-item active">Product-Insert</li>
		</ol>
		${mess }
		<!-- Gutter g-5 -->
		<form:form action="them-do-go.htm" method="post"
			modelAttribute="sp">
			<div class="form-row">
			<div class="col">
					<label>Ảnh</label>
					<form:input type="url" placeholder="Nhập URL ảnh"
						class="form-control" path="product_image" required="required" />
				</div>
			</div>
			<div class="form-row">
			
				<div class="col">
					<!-- hangSX 	input -->
					<label>Type</label>
					<form:input type="text" placeholder="Loại gỗ" class="form-control"
						path="product_type" required="required" />
				</div>
				<div class="col">
					<!-- ram input -->
					<label>Price</label>
					<form:input type="text" placeholder="Giá"
						class="form-control" path="product_price" required="required" />
				</div>
			</div>
			<div class="form-row">
				<div class="col">
					<!-- chip 	input -->
					<label>Description</label>
					<form:input type="text" placeholder="Mô tả" class="form-control"
						path="product_description" required="required" />
				</div>

				<div class="col">
					<!-- tên input -->
					<label>Tên</label>
					<form:input type="text" placeholder="Tên sản phẩm"
						class="form-control" path="product_name" required="required" />
				</div>
			</div>
			
			</br>
			
			<button type="submit" class="btn btn-primary">Insert Product</button>
		</form:form>
		<br />

		<!--  </div> -->
		<%@include file="/WEB-INF/views/include/adminViews/tableSP.jsp"%>		
	<%-- <footer class="py-4 bg-light mt-auto">
		<div class="container-fluid px-4">
			<div class="d-flex align-items-center justify-content-between small">
				<div class="text-muted">Copyright &copy; Your Website 2021</div>
				<div>
					<a href="#">Privacy Policy</a> &middot; <a href="#">Terms &amp;
						Conditions</a>
				</div>
			</div>
		</div>
	</footer> --%>	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<!--  <script src="js/scripts.js"></script> -->
	<script src="<c:url value = '/resources/srcAdmin/js/scripts.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value='/resources/srcAdmin/js/datatables-simple-demo.js'/>"></script>
</body>
</html>
