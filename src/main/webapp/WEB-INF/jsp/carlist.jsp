<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CarEE | Home</title>

    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content="">

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CSource+Sans+Pro:400,300,700,600%7CPlayfair+Display:400,700,400italic'
          rel='stylesheet'>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CSource+Sans+Pro:400,300,700,600%7CPlayfair+Display:400,700,400italic'
          rel='stylesheet'>

    <!-- Css -->
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/font-icons.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/style.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/colors/color-mint.css' />"/>

    <!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value='/img/favicon.ico' />"/>
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/img/apple-touch-icon-72x72.png' />"/>
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/img/apple-touch-icon-114x114.png' />"/>
</head>

<body>

<!-- Preloader -->
<div class="loader-mask">
    <div class="loader">
        <div></div>
        <div></div>
    </div>
</div>

<!-- Navigation -->
<jsp:include page="header.jsp"/>

<div class="main-wrapper oh">
    <div class="row mt-60 mb-60">
        <div class="col-md-12 text-center">
            <a href="${pageContext.request.contextPath}/auth/add-car" class="btn btn-lg btn-color btn-icon">
                <span>Create Car</span>
                <i class="fa fa-angle-right"></i>
            </a>
        </div>
    </div>

    <section class="section-wrap bg-light pb-90">
        <div class="container">
            <div class="row">

                <c:if test="${empty carList}">
                    <div class="heading-row mb-30 text-center">
                        <h2 class="heading">No Car</h2>
                    </div>
                </c:if>

                <c:forEach items="${carList}" var="c">
                    <div class="col-md-4 mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                        <div class="box-shadow">
                            <img src="img/mission/mission.jpg" class="img-rounded" alt="">
                            <div class="card">
                                <h4>${c.name}</h4>

                                <div class="btn-group" role="group">
                                    <a href="${pageContext.request.contextPath}/details-car?id=${c.id}"
                                       class="btn btn-lg btn-color btn-icon">Details
                                        <i class="fa fa-angle-right"></i></a>
                                    <form style="display:inline" action="${pageContext.request.contextPath}/auth/delete-car"
                                          method="post">
                                        <input type="hidden" value="${c.id}" name="id">
                                        <button type="submit" class="btn btn-lg btn-red btn-icon">Delete <i
                                                class="fa fa-angle-right"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>


    <!-- Feature Tabs -->
    <section class="section-wrap pb-50">
        <div class="container">
            <div class="heading-row mb-30 text-center">
                <h2 class="heading">Our Services</h2>
            </div>
            <div class="row">
                <div class="tabs feature-tabs text-center">
                    <ul class="tabs__list">
                        <li class="active feature-tabs__tabs__item tabs__item col-sm-4 col-xs-4 col-xxs-6">
                            <a href="#tab-1" class="feature-tabs__link tabs__link">
                                <i class="icon-search feature-tabs__icon"></i>AAAAAAA
                            </a>
                        </li>

                        <li class="feature-tabs__tabs__item tabs__item col-sm-4 col-xs-4 col-xxs-6">
                            <a href="#tab-2" class="feature-tabs__link tabs__link">
                                <i class="icon-speedometer feature-tabs__icon"></i>BBBBBBBB
                            </a>
                        </li>

                        <li class="feature-tabs__tabs__item tabs__item col-sm-4 col-xs-4 col-xxs-6">
                            <a href="#tab-3" class="feature-tabs__link tabs__link">
                                <i class="icon-tools feature-tabs__icon"></i>CCCCCCCC
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="section-wrap tabs__content bg-light pb-80 pt-90">
        <div class="container">
            <div class="tabs__content__pane active" id="tab-1">
                <div class="row">
                    <div class="col-md-5">
                        <p class="lead">AAAAAAA</p>
                    </div>
                    <div class="col-md-6 col-md-offset-1 tabs__content__text">
                        <p>AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA</p>
                        <p>AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA AAAAAAA</p>
                    </div>
                </div>
            </div>

            <div class="tabs__content__pane" id="tab-2">
                <div class="row">
                    <div class="col-md-5">
                        <p class="lead">BBBBBBB</p>
                    </div>
                    <div class="col-md-6 col-md-offset-1 tabs__content__text">
                        <p>BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB</p>
                        <p>BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB BBBBBBB</p>
                    </div>
                </div>
            </div>

            <div class="tabs__content__pane" id="tab-3">
                <div class="row">
                    <div class="col-md-5">
                        <p class="lead">CCCCCCC</p>
                    </div>
                    <div class="col-md-6 col-md-offset-1 tabs__content__text">
                        <p>CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC</p>
                        <p>CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC CCCCCCC</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-wrap white-text pt-sm-50" style="background-image: url(img/sections/results_bg.jpg)">
        <div class="container text-center">
            <div class="row text-center">
                <div class="col-sm-12 mb-sm-40 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                    <div class="counter">
                        <span class="counter__timer" data-from="0" data-to="${carList.size()}">&nbps;</span>
                        <span class="counter__text">Cars Available</span>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <a href="#" class="call-to-action-1 bg-dark white-text">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="call-to-action-1__title mt-0">What are you waiting for? purchase a CarEE now</h2>
                    <i class="call-to-action-1__icon fa fa-chevron-right"></i>
                </div>
            </div>
        </div>
    </a>

    <!-- Footer -->
    <jsp:include page="footer.jsp"/>
</div>

</body>
</html>