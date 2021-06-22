<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ch" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="nav">

    <div class="nav__holder nav--sticky">
        <div class="container relative">
            <div class="flex-parent">

                <form method="get" action="${pageContext.request.contextPath}/list-car" class="nav__search-wrap">
                    <input type="search" class="nav__search-input" placeholder="Searching...">
                    <i class="fa fa-close nav__search-close" id="nav__search-close"></i>
                </form>

                <div class="nav__header clearfix">
                    <!-- Logo -->
                    <div class="logo-wrap">
                        <a href="${pageContext.request.contextPath}/list-car" class="logo__link">
                            <img class="logo logo--dark" src="https://img.icons8.com/ios/60/000000/car--v1.png"
                                 alt="logo">
                        </a>
                    </div>

                    <button type="button" class="nav__icon-toggle" id="nav__icon-toggle" data-toggle="collapse"
                            data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="nav__icon-toggle-bar"></span>
                        <span class="nav__icon-toggle-bar"></span>
                        <span class="nav__icon-toggle-bar"></span>
                    </button>
                </div> <!-- end nav-header -->

                <nav id="navbar-collapse" class="nav__wrap collapse navbar-collapse">
                    <ul class="nav__menu">

                        <li class="nav__dropdown active">
                            <a href="${pageContext.request.contextPath}/list-car">Home</a>
                        </li>

                        <li class="nav__dropdown active">
                            <a href="${pageContext.request.contextPath}/list-category">Category List</a>
                        </li>

                        <c:if test="${! empty sessionScope.user}">
                            <li class="nav__dropdown active">
                                <a href="#">Administration</a>
                                <i class="fa fa-angle-down nav__dropdown-trigger"></i>
                                <ul class="nav__dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/auth/add-car">Add Car</a></li>
                                    <li><a href="${pageContext.request.contextPath}/auth/add-category">Add Category</a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>


                        <c:choose>
                            <c:when test="${empty sessionScope.user}">
                                <li class="nav__dropdown active">
                                    <a href="${pageContext.request.contextPath}/auth/login">Login</a>
                                </li>
                            </c:when>

                            <c:when test="${! empty sessionScope.user}">
                                <li class="nav__dropdown active">
                                    <a href="${pageContext.request.contextPath}/auth/logout">Logout</a>
                                </li>
                            </c:when>
                        </c:choose>

                        <!-- Search -->
                        <li class="hidden-sm hidden-xs">
                            <div class="nav__search hidden-sm hidden-xs">
                  <span class="nav__search-trigger" id="nav__search-trigger">
                    <i class="fa fa-search"></i>
                  </span>
                            </div>
                        </li>

                        <!-- Mobile Search -->
                        <li class="hidden-lg hidden-md">
                            <form method="get" class="nav__search-mobile">
                                <input type="search" placeholder="Search..." class="nav__search-mobile-input">
                                <button type="submit" class="nav__search-mobile-button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </form>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
