<%@ page  pageEncoding="utf-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %> 
<!doctype html>
<html lang="en">
  <head>
  	<title>Nội Thất Đồ Gỗ-Khắc Hưng</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">List Bill</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>						      
						      <th>Bill ID</th>
						      <th>Bill Date</th>
						      <th>Product ID</th>
						      <th>Customer Name</th>
						      <th>Staff ID</th>
						      <th>Quantity</th>
						      <th>Total</th>
						      <th>Bill Status</th>
						      <th>Exchange status</th>
						    </tr>
						  </thead>
						  <tbody>
						    <c:forEach var = "h" items = "${hd }">
						    	<tr>
						    		<td>${h.bill_id}</td>
						    		<td>${h.bill_date}</td>
						    		<td>${h.getProduct_id_bill().getProduct_id()}</td>
						    		<td>${h.getCustomer_id_bill().getCustomer_name()}</td>
						    		<td>${h.getStaff_id_bill().getStaff_id()}</td>
						    		<td>${h.quantity}</td>
						    		<td><f:formatNumber type="currency" value="${h.total}" /></td>
						    		<td>${h.bill_status}</td>					    		
						    		<td>
						    		
						    		<div class="dropdown show">
  													<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   												    Thay đổi
  													</a>

												  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
												  <a class="dropdown-item" href="quan-ly-don-hang-${h.bill_id}-da-huy.htm">Đã hủy(1)</a>
												    <a class="dropdown-item" href="quan-ly-don-hang-${h.bill_id}-da-giao-hang.htm">Đã giao hàng(-1)</a>
												    <a class="dropdown-item" href="quan-ly-don-hang-${h.bill_id}-dang-giao-hang.htm">Đang giao hàng(0)</a>
												   
												  </div>
									</div>
						    		
						    		</td>
						    	</tr>
						    	
						    	
						    
						    </c:forEach>
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

