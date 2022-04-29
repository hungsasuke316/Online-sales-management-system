<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%-- <%@include file="/WEB-INF/views/include/userViews/header.jsp" %> --%>
<%@include file="/WEB-INF/views/include/navbar.jsp" %>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<html lang="en">
 <title>Nội thất đồ gỗ-Khắc Hưng</title>
    <body>	
    
    <div style="background-image" src=" https://images-cdn.welcomesoftware.com/Zz0zZTliMjQ4MzhlNGExMWViYmJiMjFiZTI2ZWNmN2MzZA"></div>
        <!-- Product section-->
        <section class="py-5">
        <form action="order-${product_id}-get-info-khach-hang.htm" modelAttribute = "sp">
        	 <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6" ><img class="card-img-top mb-5 mb-md-0" src="${sp.product_image }" alt="..." style="width:100%;object-fit:cover"/></div>
                    <div class="col-md-6">
                        <div class="small mb-1">Mã sản phẩm: ${sp.product_id } </div>
                        <h1 class="display-5 fw-bolder">Tên: ${sp.product_name }</h1>
                        <div class="fs-5 mb-5">
                        Giá:
                            <span><f:formatNumber type="currency" value="${sp.product_price}" /></span>
                        </div>
                        <p class="lead" style="font-weight: 600"> 
                        	Chất liệu:    ${sp.product_type } </br>
                        	Mô tả: 		${sp.product_description }	</br>

                        
                        </p>
                        
                        <div class="d-flex">
                             <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                             	<input class="form-control text-center me-3" name ="sl" id="inputQuantity" type="num" value="1" min="1" style="max-width: 4rem" />
                                 <div class="text-center"><a class="btn btn-primary" href="order-${product_id}.htm">Order</a></div>
                                <!--  <button type="submit" class="btn btn-outline-dark mt-auto" >Đặt hàng</button>  -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
           
        </section>
        <!-- Related items section-->
        ${ cmtSP}
        <%@include file="/WEB-INF/views/include/cmtBoxForm.jsp" %>
        <!-- Footer-->
          <%@include file="/WEB-INF/views/include/userViews/footer.jsp" %>
        <!-- <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Quốc Minhh 2021</p></div>
        </footer> -->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
