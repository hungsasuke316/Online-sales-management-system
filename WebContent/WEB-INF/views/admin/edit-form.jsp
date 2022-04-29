<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update thông tin</title>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<%@include file="/WEB-INF/views/include/adminViews/admin-navbar.jsp"%>
</head>
<body>

	${mess }
	<form:form action="edit-${product_id}.htm?linkEdit" method="post"
		modelAttribute="sp">
		<div class="form-row">
			<div class="col">
				<!-- Name 	input -->
				<label>Product ID</label>
				<form:input type="text" value="${sp.product_id }"
					class="form-control" path="product_id" readonly="true" />
			</div>
			<div class="col">
				<!-- tên input -->
				<label>Product Name</label>
				<form:input type="text" value="${sp.product_name }"
					class="form-control" path="product_name" required="required" />
			</div>
		</div>

		<div class="form-row">
			<div class="col">
				<!-- hangSX 	input -->
				<label>Type</label>
				<form:input type="text" value="${sp.product_type }"
					class="form-control" path="product_type" required="required" />
			</div>
			<div class="col">
				<!-- ram input -->
				<label>Price</label>				
				<form:input type="text" value="${sp.product_price }"
					class="form-control" path="product_price" required="required" />
			</div>
		</div>
		<div class="form-row">
			<div class="col">
				<!-- chip 	input -->
				<label>Description</label>
				<form:input type="text" value="${sp.product_description }"
					class="form-control" path="product_description" required="required" />
			</div>


			<div class="col">
				<label>Image</label>
				<form:input type="url" placeholder="Nhập URL ảnh"
					class="form-control" path="product_image" required="required" />
			</div>
		</div>
		</br>

		<div class="form-row">
			</br>
			<div class="col">
				<label>Status</label>
				<%-- <form:input type="text"  value="${sp.product_status }" class="form-control" path="product_status" required="required" /> --%>
				<div class="form-check form-check-inline">
					<form:radiobutton class="form-check-input" path="product_status"
						id="inlineRadio1" value="1" />
					<label class="form-check-label" for="inlineRadio1">True</label>
				</div>
				<div class="form-check form-check-inline">
					<form:radiobutton class="form-check-input" path="product_status"
						id="inlineRadio2" value="0" />
					<label class="form-check-label" for="inlineRadio2">False</label>
				</div>
			</div>
		</div>





		<!-- photo input -->
		<button type="submit" class="btn btn-primary">Edit Product</button>
	</form:form>
</body>
</html>