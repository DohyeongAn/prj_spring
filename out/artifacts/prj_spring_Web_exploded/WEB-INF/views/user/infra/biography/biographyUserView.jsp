<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>dodoan portfolio</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

<%--    <!-- Favicons -->--%>
<%--    <link href="assets/img/favicon.png" rel="icon" />--%>
<%--    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />--%>
    <!-- 파비콘 -->
    <link rel="apple-touch-icon" sizes="57x57" href="../../../../../resources/icon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="../../../../../resources/icon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../../../../../resources/icon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../../../../../resources/icon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../../../../../resources/icon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../../../../../resources/icon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="../../../../../resources/icon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../../../../../resources/icon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="../../../../../resources/icon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="../../../../../resources/icon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../../../../../resources/icon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../../../../../resources/icon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../../../../../resources/icon/favicon-16x16.png">
    <link rel="manifest" href="../../../../../resources/icon/manifest.json">
    <meta name="msapplication-TileColor" content="#219ebc">
    <meta name="msapplication-TileImage" content="icon/ms-icon-144x144.pxng">
    <meta name="theme-color" content="#219ebc">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap"
            rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
            rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
            href="../../../../../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link
            href="../../../../../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
            rel="stylesheet"
    />
    <link href="../../../../../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <link
            href="../../../../../resources/assets/vendor/glightbox/css/glightbox.min.css"
            rel="stylesheet"
    />
    <link href="../../../../../resources/assets/vendor/aos/aos.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="../../../../../resources/assets/css/main.css" rel="stylesheet" />

    <!-- FontAwsome -->
    <script
            src="https://kit.fontawesome.com/df1b18aebb.js"
            crossorigin="anonymous"
    ></script>
    <!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<!-- ======= Header ======= -->
<header id="header" class="header d-flex align-items-center fixed-top">
    <div
            class="container-fluid d-flex align-items-center justify-content-between"
    >
        <a
                href="/"
                class="logo d-flex align-items-center me-auto me-lg-0"
        >
            <!-- Uncomment the line below if you also wish to use an image logo -->
            <!-- <img src="../../../../../resources/assets/img/logo.png" alt=""> -->
            <i class="fa-solid fa-laptop-code"></i>
            <img src="../../../../../resources/assets/img/dodoanLogoWhite.png" alt="" />
        </a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a href="about">About</a></li>
                <li><a href="/" class="active">Home</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </nav>
        <!-- .navbar -->

        <div class="header-social-links">
            <a href="https://github.com/DohyeongAn" class="github"><i class="fa-brands fa-github"></i></a>
            <!-- <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
          <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a> -->
        </div>
        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
    </div>
</header>
<!-- End Header -->

<!-- ======= Hero Section ======= -->
<section
        id="hero"
        class="hero d-flex flex-column justify-content-center align-items-center"
        data-aos="fade"
        data-aos-delay="1500"
>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
                <h2>안녕하세요 <span>안도형</span> 입니다</h2>
                <p>
                    html, css, javaseript, sql, java, spring을 배워 <br />
                    아래의 포트폴리오들을 제작 하였습니다.
                </p>
                <a href="/contact" class="btn-get-started"
                >Available for hire</a
                >
            </div>
        </div>
    </div>
</section>
<!-- End Hero Section -->

<main id="main" data-aos="fade" data-aos-delay="1500">
    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
        <div class="container-fluid">
            <div class="row gy-4 justify-content-center">
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="gallery-item h-100">
                        <img
                                src="../../../../../resources/assets/img/gallery/dodomallEx.png"
                                class="img-fluid"
                                alt=""
                        />
                        <div
                                class="gallery-links d-flex align-items-center"
                        >
                            <a class="details-link" href="login"
                            ><i class="fa-solid fa-users"></i><br />
                                <p class="icon-detail">user</p></a
                            >
                            <a class="details-link" href="adminLogin"
                            ><i class="fa-solid fa-user-gear"></i><br />
                                <p class="icon-detail">admin</p></a
                            >

                        </div>
                    </div>
                </div>
                <!-- End Gallery Item -->
            </div>
        </div>
    </section>
    <!-- End Gallery Section -->
</main>
<!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>DODOAN</span></strong
        >. All Rights Reserved
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
            Designed by <a href="#">DohyeongAn</a>
        </div>
    </div>
</footer>
<!-- End Footer -->

<a
        href="#"
        class="scroll-top d-flex align-items-center justify-content-center"
><i class="bi bi-arrow-up-short"></i
></a>

<div id="preloader">
    <div class="line"></div>
</div>

<!-- Vendor JS Files -->
<script src="../../../../../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../../../../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="../../../../../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="../../../../../resources/assets/vendor/aos/aos.js"></script>
<script src="../../../../../resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../../../../../resources/assets/js/main.js"></script>
</body>
</html>
