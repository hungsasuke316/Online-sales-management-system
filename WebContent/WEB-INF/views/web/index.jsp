<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@include file="/WEB-INF/views/include/userViews/header.jsp" %> --%>
<%@include file="/WEB-INF/views/include/navbar.jsp" %>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<%-- <base href="${pageContext.servletContext.contextPath }/">  --%>
<html lang="en">
<title>Nội thất đồ gỗ-Khắc Hưng</title>
  
    <body>
      
        <header class="p-3 mb-2 bg-warning text-dark">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder text-dark-50">Thế Giới Nội Thất Đồ Gỗ-Khắc Hưng</h1>
                    <p class="p-3 mb-2 bg-gradient-warning text-dark">Mang nét đẹp thiên nhiên vào cuộc sống!</p>
                </div>
            </div>
            
            
        </header>
        <style>
        
        	@import url('https://fonts.googleapis.com/css?family=Numans');
	        html,body{
	        	background-image: url('https://c4.wallpaperflare.com/wallpaper/697/252/951/bedroom-wardrobe-style-wooden-wallpaper-preview.jpg');
	        	background-size: cover;
				background-repeat: no-repeat;
				height: 150%;
				font-family: 'Numans', sans-serif;
	        }
        </style>
        <!-- Section-->
        <section class="py-5" >
        <form:form action="" modelAttribute = "dsDoGo" style="height: 100%,width:100%">
        <div style="display: flex;flex-wrap: wrap;justify-content: center;width:100%">
        	 <c:forEach var="d" items="${dsDoGo }" varStatus="x">
        	 	<div class="col mb-5" >
                        <div class="card h-100" style="width:316px ; margin-right:0px;margin-left:30px;margin-bottom:0px">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                           <img class="card-img-top" src="<c:url value='${d.product_image }'/>" alt="..."  style="height: 210px"/>
                            
                            <!-- Product details-->
                            <div class="card-body p-4 pt-2 pb-0" style="height: auto">
                                <div class="text-center">
                                	<h5 class="fw-bolder">Mã Sản Phẩm:${d.product_id }</h5>
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${d.product_name }</h5>
                                    <!-- Product reviews-->
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through"></span>
                                   <f:formatNumber type="currency" value="${d.product_price}" />
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 pb-4 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="detail-item-${d.product_id}.htm">Show detail</a></div>
                            </div>
                        </div>
                    </div>
                  <%-- <c:if test=" ${x.count  == 4}"></c:if> --%>
        	 
        	 </c:forEach>
        </div>
        </form:form>
        </section>
        <!-- Footer-->
          <%@include file="/WEB-INF/views/include/userViews/footer.jsp" %>       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="<c:url value='/resources/srcIndex/js/scripts.js'/>"></script>
    </body>
</html>
