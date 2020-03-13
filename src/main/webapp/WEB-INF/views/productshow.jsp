
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<body>
	<h2></h2>


<%-- 	<table border="1">

		<th>Sr No</th>
		<th>itemType</th>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>itemPrice</th>
		<th>itemDesc</th>
		

		<c:forEach var="productlist" items="${listProduct}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${productlist.itemType}</td>
				<td>${productlist.itemId}</td>
				<td>${productlist.itemName}</td>
				<td>${productlist.itemPrice}</td>
				<td>${productlist.itemDesc}</td>
				

			</tr>
		</c:forEach>
	</table> --%>
		<c:forEach items="${listProduct}" var="productlist">
       <div class="product-preview-container">
          <div style="float: left"><ul>
              <%--  <li><img class="product-image"
                   src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}" /></li> --%>
               <li>Product Id: ${productlist.itemId}</li>
               <li>Product Name: ${productlist.itemName}</li>
               <li>Product Type: ${productlist.itemType}</li>
                <li>Product Price: ${productlist.itemPrice}</li>
                <li>Product Desc: ${productlist.itemDesc}</li>
               <li><a
                   href="${pageContext.request.contextPath}/buyProduct?ItemId=${productlist.itemId}">
                       Buy Now</a></li>
               <!-- For Manager edit Product -->
               <security:authorize  access="hasRole('ROLE_MANAGER')">
               <%--   <li><a style="color:red;"
                     href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
                       Edit Product</a></li> --%>
              <!--  </security:authorize> -->
           </ul></div>
           
       </div>
 
   </c:forEach>
		

</body>
</html>