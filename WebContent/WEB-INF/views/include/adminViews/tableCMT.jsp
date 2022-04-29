<%@ page  pageEncoding="utf-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %> 
<form:form action="product-insert.htm" modelAttribute = "hd" method="get">
								 <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                        	<th>ID CMT</th>
                                        	<th>ID Product</th>
                                            <th>Name</th>
                                            <th>Customer</th>
                                            <th>Email</th>
                                            <th>Nội dung</th>
                                            <th>Time</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                  
                                    <tbody>
                                        <c:forEach var = "c" items = "${cmtList }">
                                        	<tr>
                                        		<td>${c.cmt_id}</td>
                                        	    <td>${c.getProduct_id_cmt().getProduct_id()}</td>
                                        	    <td>${c.getProduct_id_cmt().getProduct_name()}</td>
                                        	    <td>${c.name}</td>
                                        	    <td>${c.email}</td>
                                        	    <td>${c.content}</td>
                                        	    <td>${c.cmt_time}</td>
                                        	    <td><a href = "delete-cmt-${c.cmt_id}.htm?linkDel">Del </a></td>  
                                        	
                                        </c:forEach>
                                    </tbody>
                                </table>                                
                            </div>
                        </div>
							</form:form>