<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/navbar.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
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
					<h2 class="heading-section">Vui lòng nhập thông tin</h2>
				</div>
			</div>
			${mess }
			<div class="row justify-content-center">
			
				<div class="col-md-12">
					<div class="wrapper">
					<form:form action="order-${product_id}-get-info-khach-hang.htm" method="POST" modelAttribute = "kh">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Name</label></br>
													<form:input type="text" class="form-control" path="customer_name" placeholder="Họ tên" name = "name" required="required"/>
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="sdt">SĐT</label></br>
													<form:input type="text" class="form-control" path="customer_phone" placeholder="SĐT" name = "sdt" required="required"/>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label"  for="dc">Address</label></br>
													<form:input type="text" class="form-control" path="customer_address" placeholder="Địa chỉ" name="dc" required="required"/>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="dob">Date Of Birth</label></br>
													<form:input type="text" class="form-control" path="customer_DoB" placeholder="dd/mm/yy" name="dob" required="required"/>
												</div>
											</div>
											<!-- <div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Message</label>
													<textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
												</div>
											</div> -->
											
										</div>
										<button type="submit" class="btn btn-primary col-md-15" >Bước kế</button>
										
										
									</form:form>
										<form action="order-${product_id}-get-info-khach-hang.htm" method="GET" modelAttribute = "hd">
										<div class="row">
										 <div class="col-md-12" ><img class="card-img-top mb-5 mb-md-0" src="${hd.getProduct_id_bill().getProduct_image() }" alt="..." style="width:18%;object-fit:cover"/></div>
											
										<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="sdt">Mã SP:</label>
													<input type="text" class="form-control" value="${hd.getProduct_id_bill().getProduct_id() }" name = "sdt" readonly="true"/>
												</div>
											</div>
										<div class="col-md-6">
										
												<div class="form-group">
													<label class="label"  for="tenSP">Tên sản phẩm: </label>
													<input type="text" class="form-control"  value="${hd.getProduct_id_bill().getProduct_name() }" name="tenSP" readonly="true" />
												</div>
											</div>
											<div class="col-md-12"> 
												<div class="form-group">
													<label class="label" for="gia">Giá: </label>
													<span><f:formatNumber type="currency" value="${hd.getProduct_id_bill().getProduct_price()*hd.getQuantity()}" /></span>
												</div>
											</div>
											<div class="col-md-12">
											<a>SL:</a> </br>
											<input name="sl" class="form-control text-center me-3"  type="number" value="${hd.getQuantity() }" style="max-width: 3rem" readonly="true"/>
											  </br>
												 <!-- <div class="form-group">
													<input type="submit" value="Bước kế" class="btn btn-primary">
													<div class="submitting"></div>
												</div>  -->
											<!-- 	<button class="btn btn-outline-dark mt-auto"> Bước kế</button> -->
											</div>
										</div>
									</form>
									
						<!-- <div class="row mb-5">
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
						</div> -->
						<%-- <div class="row no-gutters" >
							<div class="col-md-7" >
								<div class="contact-wrap w-10 p-md-5 p-4" >
									 <h3 class="mb-4">Thông tin</h3> 
									<div id="form-message-warning" class="mb-4"></div> 
				      			<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
				      		 ${mess }
									<form:form action="" modelAttribute = "kh">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Name</label></br>
													<form:input type="text" class="form-control" path="hoTen" placeholder="Họ tên" name = "name"/>
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="sdt">SĐT</label></br>
													<form:input type="text" class="form-control" path="SDT" placeholder="SĐT" name = "sdt"/>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label"  for="dc">Address</label></br>
													<form:input type="text" class="form-control" path="diaChi" placeholder="Địa chỉ" name="dc"/>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="dob">Date Of Birth</label></br>
													<form:input type="text" class="form-control" path="ngaySinh" placeholder="dd/mm/yy" name="dob"/>
												</div>
											</div>
											<!-- <div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Message</label>
													<textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
												</div>
											</div> -->
											<div class="col-md-12">
											<!-- <button type="submit" class="btn btn-primary">Bước kế</button> -->
											 <!--  <button type="submit" class="btn btn-primary" >Bước kế</button> -->
												<!-- <div class="form-group">
													<input type="submit" value="Bước kế" class="btn btn-primary">
													<div class="submitting"></div>
												</div> -->
											</div>
										</div>
									</form:form>
								</div>
							</div>
							<form action="order-{maSP}-get-info-hoa-don.htm" method="GET" style="max-width:400px" modelAttribute = "sp">
								<div class="col-md-15">
									
								</div>
							 	
								<div class="col-md-5 d-flex align-items-stretch">
								<p>${sp.maSP }</p>
								<div class="info-wrap w-100 p-5 img" style="background-image: url(https://upload.wikimedia.org/wikipedia/commons/d/d7/Logo_PTIT.jpg);">
								 <div class="info-wrap w-100 p-5 img" style="background-image" > <img src="${sp.photo }" style="max-width: 500px; max-height:400px;"/> </div>
							</div>
							 <button type="submit" class="btn btn-primary col-md-15" >Bước kế</button>
							</form>
							
						</div> --%>
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

