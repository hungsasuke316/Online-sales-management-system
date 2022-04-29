<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@include file="/WEB-INF/views/include/navbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<base href="${pageContext.servletContext.contextPath }/"> 
<head>

	<title>Contact us</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="<c:url value='/resources/srcContacForm/images/icons/favicon.ico'/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContacForm/vendor/bootstrap/css/bootstrap.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/vendor/animate/animate.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/vendor/css-hamburgers/hamburgers.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/vendor/select2/select2.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/css/util.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/srcContactForm/css/main.css'/>">
<!--===============================================================================================--> 
</head>
<body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="resources/srcContactForm/images/img-01.png" alt="IMG">
			</div>

			<form:form class="contact1-form validate-form" action = "home/user-contact.htm" method="post" modelAttribute="contactForm" >
				<span class="contact1-form-title">
					Contact us
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz" >
					<form:input name="from" class="input1" type="email" path="emailSender" placeholder="Email" required="required"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<form:input  class="input1" type="text" path="sdt" placeholder="Phone number" required="required"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<form:textarea name="body" class="input1" path="messages" placeholder="Message" required="required"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Gửi góp ý
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
					
				</div>
			</form:form>
			${ message}
			</br>
			${ mess}
		</div>
	</div>




<!--===============================================================================================-->
	<script src="<c:url value='/resources/srcContactForm/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="resources/srcContactForm/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/srcContactForm/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/srcContactForm/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/srcContactForm/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
 <%@include file="/WEB-INF/views/include/userViews/footer.jsp" %>
</html>
