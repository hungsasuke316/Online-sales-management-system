<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@include file="/WEB-INF/views/include/userViews/header.jsp" %>  --%>
<%@include file="/WEB-INF/views/include/navbar.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>Đặt hàng</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<c:url value='/resources/srcHD/css/style.css'/>">
	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<!-- <h2 class="heading-section">Vui lòng nhập thông tin</h2> -->
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
					<!-- 	<div class="row mb-5">
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-map-marker"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-phone"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-paper-plane"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-globe"></span>
			        		</div>
			        		<div class="text">
				            <p><span>Website</span> <a href="#">yoursite.com</a></p>
				          </div>
			          </div>
							</div>
						</div>
						<div class="row no-gutters" >
							<div class="col-md-7" >
								<div class="contact-wrap w-10 p-md-5 p-4" >
									 <h3 class="mb-4">Thông tin sản phẩm</h3> 
									<div id="form-message-warning" class="mb-4"></div> 
				      			<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div> -->
				      		 ${mess }
									<form:form action="order-${product_id}-get-info-khach-hang.htm" method="GET" modelAttribute = "sp">
										<div class="row">
										 <div class="col-md-12" ><img class="card-img-top mb-5 mb-md-0" src="${sp.product_image }" alt="..." style="width:18%;object-fit:cover"/></div>
											
										<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="sdt">Mã SP:</label>
													<form:input type="text" class="form-control" path="product_id" value="${sp.product_id }" name = "sdt" readonly="true"/>
												</div>
											</div>
										<div class="col-md-6">
										
												<div class="form-group">
													<label class="label"  for="tenSP">Tên sản phẩm: </label>
													<form:input type="text" class="form-control" path="product_name" value="${sp.product_name }" name="tenSP" readonly="true" />
												</div>
											</div>
											<div class="col-md-6">
										
												<div class="form-group">
													<label class="label"  for="tenSP">Chất liệu: </label>
													<form:input type="text" class="form-control" path="product_type" value="${sp.product_type }" name="tenSP" readonly="true" />
												</div>
											</div>
											<div class="col-md-6">
										
												<div class="form-group">
													<label class="label"  for="tenSP">Mô tả: </label>
													<form:input type="text" class="form-control" path="product_description" value="${sp.product_description }" name="tenSP" readonly="true" />
												</div>
											</div>
											<div class="col-md-12"> 
												<div class="form-group">
													<label class="label" for="gia">Giá: </label>
													<span><f:formatNumber type="currency" value="${sp.product_price}" /></span>
												</div>
											</div>
											<div class="col-md-12">
											<input name="sl" class="form-control text-center me-3"  type="number" value="1" style="max-width: 3rem" />
											  </br>
												 <!-- <div class="form-group">
													<input type="submit" value="Bước kế" class="btn btn-primary">
													<div class="submitting"></div>
												</div>  -->
												<button class="btn btn-outline-dark mt-auto"> Bước kế</button>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="<c:url value='/resources/srcHD/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/srcHD/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/srcHD/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/srcHD/js/jquery.validate.min.js'/>"></script>
  <script src="<c:url value='/resources/srcHD/js/main.js'/>"></script>

	</body>
</html>

