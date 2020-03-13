<div class="menu-container">
   
    <nav class="navbar navbar-expand-lg navbar-light navbar-full" style="background-color: #fff;" id="nav-main">
  <a class="navbar-brand" href="#">Spring Shop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="@{/}">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="@{/productList}">Product List</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="@{/shoppingCart}">Cart</a>
      </li>
      
      <th:block sec:authorize="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
      <li class="nav-item">
      	<a href="@{/admin/orderList}" class="nav-link">
      Order List
      </a>
      </li>
      
<%--    </th:block>
   <th:block sec:authorize="hasRole('ROLE_MANAGER')">
   <li class="nav-item">
      <a th:href="@{/admin/product}" class="nav-link">
      Create Product
      </a>
      </li>
   	</th:block>
      
      
      <th:block sec:authorize="isAuthenticated()">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" th:href="@{/admin/accountInfo}" th:utext="${#request.userPrincipal.name}" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Hello
        </a>      
         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" th:href="@{/admin/logout}">Logout</a>
        </div>
      </li>
      </th:block>
       
      <th:block sec:authorize="!isAuthenticated()">
      <li class="nav-item">
         <a th:href="@{/admin/login}" class="nav-link">Login</a>
         </li>
      </th:block>
       --%>

      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
    </form>
  </div>
</nav>
<!-- ------------------------------nav end---------------------------------- -->
   
 
   
   
   
</div>