<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
 <%@include file="/WEB-INF/views/include/adminViews/admin-navbar.jsp" %>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V04</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<!--===============================================================================================-->	
	<!-- <link rel="icon" type="image/png" href="resources/srcDoGo/images/icons/favicon.ico"/> -->
	<link rel="icon" type="image/png" href="<c:url value='/resources/srcDoGo/images/icons/favicon.ico'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/vendor/bootstrap/css/bootstrap.min.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/vendor/bootstrap/css/bootstrap.min.css'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/fonts/font-awesome-4.7.0/css/font-awesome.min.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/vendor/animate/animate.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/vendor/animate/animate.css'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/vendor/select2/select2.min.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/vendor/select2/select2.min.css'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/vendor/perfect-scrollbar/perfect-scrollbar.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/vendor/perfect-scrollbar/perfect-scrollbar.css'/>">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/css/util.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/css/util.css'/>">
	<!-- <link rel="stylesheet" type="text/css" href="resources/srcDoGo/css/main.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcDoGo/css/main.css'/>">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th >ID</th>
									<th >Name</th>
									<th >Type</th>
									<th >Price</th>
									<th >Image</th>
									<th >Description</th>
									<th >Status</th>	
									<th ></th>
																
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<c:forEach var = "ds" items = "${dsDoGo }">
                                        	<tr>
                                        		<td>${ds.product_id }</td>
                                        	    <td>${ds.product_name }</td>
                                        	    <td>${ds.product_type }</td>  
                                        	    <td><f:formatNumber type="currency" value="${ds.product_price}" /></td>  
                                        	    <%-- <td> <a href="${ds.product_image }">${ds.product_image }</a></td>  --%>
                                        	    <td> <image class="" src="<c:url value='${ds.product_image }'/>" alt="..."  style="height: 210px"/></td> 
                                        	                                      	                                         	   
                                        	    <td>${ds.product_description }</td>
                                        	    <td>${ds.product_status }</td>                                                                	                                          	    
                                        	    <td><a href = "edit-${ds.product_id}.htm?linkEdit">Edit </a></td>
                                        	    
                                        	</tr>
                                        </c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
													
					</div>
				</div>
			</div>
		


<!--===============================================================================================-->	
	<!-- <script src="resources/srcDoGo/vendor/jquery/jquery-3.2.1.min.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
	<!-- <script src="vendor/bootstrap/js/popper.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/vendor/bootstrap/js/popper.js'/>"></script>
	<!-- <script src="vendor/bootstrap/js/bootstrap.min.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!--===============================================================================================-->
	<!-- <script src="vendor/select2/select2.min.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/vendor/select2/select2.min.js'/>"></script>
<!--===============================================================================================-->
	<!-- <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/vendor/perfect-scrollbar/perfect-scrollbar.min.js'/>"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<!-- <script src="js/main.js"></script> -->
	<script src="<c:url value='/resources/srcDoGo/js/main.js'/>"></script>

</body>
</html>