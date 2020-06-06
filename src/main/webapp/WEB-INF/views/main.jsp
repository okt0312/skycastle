<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE</title>
</head>
<body>
	<jsp:include page="common/menubar.jsp"/>
    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(https://t1.daumcdn.net/cfile/tistory/214AB63856E182E620);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">소모임 운영<br>지식을 모아 꿈을 이루세요</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(https://st-c2c-conectspass.s3.amazonaws.com/prod/uploads/attachment/3/1%EC%9D%B8%EC%A2%8C%EC%84%9D.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">쾌적한 실내공기, 독립된 좌석<br> 집중력 향상!!</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(https://campusu.co.kr/wp-content/uploads/2016/12/%ED%81%AC%EA%B8%B0%EB%B3%80%ED%99%98_KENN4462-1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">회의 공간 대여 서비스</a></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper section-padding-100 clearfix">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Lifestyle</a>
                            <h4><a href="#" class="post-headline">Welcome to this Lifestyle blog</a></h4>
                            <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Morbi sodales, dolor id ultricies dictum</p>
                            <a href="#" class="btn original-btn">Read More</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${pageContext.servletContext.contextPath}/resources/bootstrap/img/blog-img/1.jpg" alt="">
                        <!-- Catagory Title -->
                        <div class="catagory-title">
                            <a href="#">Lifestyle posts</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${pageContext.servletContext.contextPath}/resources/bootstrap/img/blog-img/2.jpg" alt="">
                        <!-- Catagory Title -->
                        <div class="catagory-title">
                            <a href="#">latest posts</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <!-- ##### Blog Wrapper End ##### -->

    <!-- ##### Instagram Feed Area Start ##### -->
    <div class="instagram-feed-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="insta-title">
                        <h5>Follow us @ Instagram</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram Slides -->
        <div class="instagram-slides owl-carousel">
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/102555609_256721615751683_7769806015065678287_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=hDIyE1hL5M4AX_aHlS_&oh=fdd9341c80268ed9fc2fe4c57f3f5652&oe=5F04EA26" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGXWtPBn8E/" class="d-flex align-items-center justify-content-center" target="_blank"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/102380001_541926280018221_4565659850631098578_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=VxE-RUGNflQAX-HOxQZ&oh=c28dd3a0602c776aff049a95c62f3ce3&oe=5F04459D" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGX0MjhgEN/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/101711565_249661239466477_4854205708166982871_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=PkN8ZkbYDnQAX88SVpq&oh=ed39e99c31f1e1c9a0e6be7ee380e746&oe=5F050424" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGYF1Yh0V7/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/101950581_588580182070471_1914894546328137755_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=2q-gno12Y08AX-I2ZZm&oh=b8116cba1d593fe931e09b69e5f68842&oe=5F05BFD6" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGYQvOB4Q_/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/103337466_1350656701990768_3110407787218722327_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=104&_nc_ohc=lmgel8Qzve4AX-n7jJu&oh=c1f9abcc6c374c8d6f321ca0b5eb26dc&oe=5F05879B" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGYdwRh8gC/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/101787426_155490976018476_1066484743723391052_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=100&_nc_ohc=MJJp1y0KHL8AX-2KPsX&oh=c84940980673a18c421294ab323f3d22&oe=5F041416" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGYqk4hBrQ/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/102705657_587292678590313_5493018437232181805_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=109&_nc_ohc=plyfvd2cNzsAX9QPUsE&oh=0b469b46638bd7ca3660f826e980272f&oe=5F067D7C" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="https://www.instagram.com/p/CBGYy0tB-bv/" target="_blank" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Instagram Feed Area End ##### -->
	<jsp:include page="common/footer.jsp"/>
	
</body>
</html>