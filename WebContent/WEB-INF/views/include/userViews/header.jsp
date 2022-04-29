<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <base href="${pageContext.servletContext.contextPath }/"> 
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="<c:url value='/resources/srcIndex/assets/favicon.ico'/>" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:url value='/resources/srcIndex/css/styles.css'/>" rel="stylesheet" />
        
    </head>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">MT COMPUTER</a>
               
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            	
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form method="post" class="d-flex" action="home/index.htm">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"  > </i>
                            Home
                            
                        </button>
                    </form> 
                 <form method="post">
                 	 <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4" >
                   
                        <!-- <li class="nav-item" ><a  class="nav-link active" aria-current="page" href="home/index.htm">Home</a></li> -->
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="all-Product.htm">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                        
                         <li class="nav-item" ><a  class="nav-link active" aria-current="page" href="login.htm">Đăng nhập</a></li>
                    </ul>
                  </form>                   
                   
                </div>
            </div>
        </nav>