<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CarEE | Logout</title>

    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content="">

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
<jsp:include page="../header.jsp"/>

<main class="main oh">

    <section class="section-wrap white-text" id="contact"
             style="background-image: url(<c:url value="/img/sections/contact_bg.jpg"/>">
        <div class="container">

            <div class="heading-row text-center">
                <h2 class="heading">Are you sure you want to logout? </h2>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-2 col-md-offset-3">
                        <form method="post" action="${pageContext.request.contextPath}/auth/leave" class="text-center">
                            <input name="leave" type="hidden" value="true">
                            <input type="submit" class="btn btn-lg btn-color btn-button" value="Yes">
                        </form>
                    </div>

                    <div class="col-md-2 col-md-offset-2">
                        <form method="post" action="${pageContext.request.contextPath}/auth/leave"
                              class="text-center">
                            <input name="leave" type="hidden" value="false">
                            <input type="submit" class="btn btn-lg btn-red btn-button" value="No">
                        </form>
                    </div>

                    <div id="msg" class="message"></div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="section-wrap bg-light pb-90">
        <div class="container">

            <div class="heading-row text-center">
                <h2 class="heading">FEATURES</h2>
            </div>

            <div class="row">
                <div class="col-md-4 wow bounceInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="feature-1 feature-1--sm-padding box-shadow">
                        <i class="feature__icon icon icon-mobile"></i>
                        <h3 class="feature__title">Responsive</h3>
                    </div>
                </div>

                <div class="col-md-4 wow bounceInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="feature-1 feature-1--sm-padding box-shadow">
                        <i class="feature__icon icon icon-layers"></i>
                        <h3 class="feature__title">Multi-platform</h3>
                        </p>
                    </div>
                </div>

                <div class="col-md-4 wow bounceInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                    <div class="feature-1 feature-1--sm-padding box-shadow">
                        <i class="feature__icon icon icon-speedometer"></i>
                        <h3 class="feature__title">Efficient</h3>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Footer -->
    <jsp:include page="../footer.jsp"/>
</main>

</body>
</html>