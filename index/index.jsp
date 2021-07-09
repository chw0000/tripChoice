<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 사용자 정의 스타일과 자바스크립트 -->
<!-- 주의사항 : CSS와 JS는 각 웹브라우저에서 쿠키삭제하고 확인할것 -->
<!-- <link rel="stylesheet" href="css/layout.css"> -->
<script src="js/myscript.js"></script>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>trip Choice</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/index.do">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button> 
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
					<!-- 관리자 전용 메뉴 시작 -->
					<c:if test="${sessionScope.s_tu_rank =='admin'}">
					<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Master</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/trip/createForm.do">상품등록</a>
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/trip/trip_list_admin.do">상품목록</a>
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/t_hotel/t_hotelForm.do">숙소등록</a>
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/t_hotel/t_hotel_list_admin.do">숙소목록</a>
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/t_airp/ticket.do">항공권등록</a>
							<a  class="dropdown-item" href="<%=request.getContextPath()%>/t_airp/list.do">항공권목록</a>
							</div>
						</li>
					</c:if>
					<!-- 관리자 전용 메뉴 끝 -->
					<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">login</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="<%=request.getContextPath()%>/loginForm.do">sign in</a>
								<a class="dropdown-item" href="<%=request.getContextPath()%>/agreement.do">sign up</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/local.do">local</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/unlocal.do">unlocal</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/reservation.do">reservation</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Pages</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="<%=request.getContextPath()%>/trqList.do">notice</a>
								<a class="dropdown-item" href="<%=request.getContextPath()%>/trvList.do">Review</a>
								<a class="dropdown-item" href="<%=request.getContextPath()%>/tbrqList.do">Question</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="images/slider-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Dream World in JEJU</strong></h1>
							<p class="m-b-40">How happy it is to play, eat, and sleep in jeju, the land of fantasy.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="<%=request.getContextPath()%>/reservation2.do">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Secret Night Sea in YEOSU</strong></h1>
							<p class="m-b-40">Enjoy the quiet night sea while driving with your family, lover, and friends.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="<%=request.getContextPath()%>/reservation2.do">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> Beautiful City in SEOUL</strong></h1>
							<p class="m-b-40">How about getting away from the cold city and relaxing in a quiet and clean place?</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="<%=request.getContextPath()%>/reservation2.do">Reservation</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Welcome To <span>trip Choice</span></h1>
						<h4>Little Story</h4>
						<p>누구나 특별한 공간을 원합니다. 행복한 시간을 꿈꾸고 시끄러운 도시에서 벗어나 잠시 힐링할 곳을 찾습니다. 저희는 그런 공간을 찾아서 당신의 휴식을 위한 공간으로 안내해드립니다.</p>
						<p>서울,여수,제주 그외 어느곳이든 당신이 원하는곳 어디든. 잠시 일상에서 벗어나 조금이라도 여유를 가질수있도록</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="<%=request.getContextPath()%>/reservation.do">Reservation</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="images/about-img.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" 작은것 하나하나 당신의 기억으로 가득찼으면 해요 "
					</p>
					<span class="lead">trip Choice</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
	<!-- Start local travel -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>LOCAL TRAVEL</h2>
						<p>Introducing various domestic tours</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">SEOUL</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">NON-CAPITAL</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">JEJU</a>
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<a href="<%=request.getContextPath()%>/reservation.do"> 
										<img src="images/img-01.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>홍대(서울)</h4>
											<p>#홍대입구 #감성 #파티룸</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-02.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>이태원(서울)</h4>
											<p>#이태원클라스 #이국적 #파티룸</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-03.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>경복궁(서울)</h4>
											<p>#경복궁 #궁투어 #한복투어</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-04.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>도깨비여행(강릉)</h4>
											<p>#강릉 #도깨비 #인생샷</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-05.png" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>양양 서핑</h4>
											<p>#양양 #서핑 #감성</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-06.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>럭셔리 호캉스(속초)</h4>
											<p>#속초 #롯데리조트 #호캉스</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-07.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>여수 밤바다</h4>
											<p>#여수 #호텔 #맛집탐방</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-08.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>남해 히노끼 여행</h4>
											<p>#남해 #히노끼탕 #힐링</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-09.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>한라산 여행(제주)</h4>
											<p>#한라산 #트래킹 #분화구</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-01.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>홍대(서울)</h4>
											<p>#홍대입구 #감성 #파티룸</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-02.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>이태원(서울)</h4>
											<p>#이태원클라스 #이국적 #파티룸</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-03.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>경복궁(서울)</h4>
											<p>#경복궁 #궁투어 #한복투어</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-04.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>도깨비여행(강릉)</h4>
											<p>#강릉 #도깨비 #인생샷</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-05.png" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>양양 서핑</h4>
											<p>#양양 #서핑 #감성</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-06.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>럭셔리 호캉스(속초)</h4>
											<p>#속초 #롯데리조트 #호캉스</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-10.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>머드 축제(보령)</h4>
											<p>#보령 #머드축제 #세계의축제</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-11.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>일몰 여행(충주)</h4>
											<p>#충주 #데이트 #감성샷</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-12.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>트래킹(충북)</h4>
											<p>#속리산 #등산 #트래킹</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-13.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>순천만 여행(순천)</h4>
											<p>#순천 #바다 #인생샷</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-07.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>여수 밤바다</h4>
											<p>#여수 #호텔 #맛집탐방</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-08.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>남해 히노끼 여행</h4>
											<p>#남해 #히노끼탕 #힐링</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						
						<div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-14.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>숨은 보석 우도</h4>
											<p>#우도 #하루1회 #놓치지마세요</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-15.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>제주 중문 여행</h4>
											<p>#중문 #데이트 #인생샷</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
									<a href="<%=request.getContextPath()%>/reservation.do">
										<img src="images/img-09.jpeg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>한라산 여행(제주)</h4>
											<p>#한라산 #트래킹 #분화구</p>
											<h5> ₩100,000</h5>
										</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Gallery</h2>
						<p>The most popular packages</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-01.jpg">
							<img class="img-fluid" src="images/gallery-img-01.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-02.jpg">
							<img class="img-fluid" src="images/gallery-img-02.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-03.jpg">
							<img class="img-fluid" src="images/gallery-img-03.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-04.jpg">
							<img class="img-fluid" src="images/gallery-img-04.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-05.jpg">
							<img class="img-fluid" src="images/gallery-img-05.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-06.jpg">
							<img class="img-fluid" src="images/gallery-img-06.jpg" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start Customer Reviews -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Traveler Review</h2>
						<p>행복한 기억을 가지고 돌아온 생생한 리뷰들입니다.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">김준욱</strong></h5>
								<h6 class="text-dark m-0">Web Developer</h6>
								<p class="m-0 pt-3">조용하고 나만의 공간에서 자유롭게 즐기고 싶었습니다. 좋은 사람들과 행복한 기억을 갖게해주셔서 감사합니다.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">유영승</strong></h5>
								<h6 class="text-dark m-0">Web Designer</h6>
								<p class="m-0 pt-3">어디로든지 떠나고싶었고, 지금당장 일상에서 벗어나 자유로히 즐기고 싶었는데, 실제로 제게도 꿈만같던 일들이 일어났습니다. 좋은 시간 가질수있게 해주셔서 감사하고 모든 사람들이 행복한 여행을 할수있으면 좋겠습니다.</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/quotations-button.png" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">윤민상</strong></h5>
								<h6 class="text-dark m-0">Data Analyst</h6>
								<p class="m-0 pt-3">예전부터 꿈꾸던 유럽을 다녀왔습니다. 먹고 싶은거 다먹고, 바다도 즐기고, 영상에서만 보던 그림같은 풍경들을 보았습니다. 알찬 패키지 여행을 할수있게 해주셔서 감사하고, 좋은 기억을 갖고 돌아올수 있게 해주셔서 감사합니다.</p>
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
							<i class="fa fa-angle-left" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->
	
	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
							+82 010-123-9999
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							yourmail@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">
							777, trip Street, Seoul
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>About Us</h3>
					<p>좋은 사람들과 맛있는 음식, 멋진 풍경, 좋은 기억들을 가지고 다시금 되뇌일수 있는 그런 여행이 되었으면 좋겠습니다. 모두가 좋은 시간을 가지고 좋은 기억만을 가질수 있도록 선도하는 곳입니다.</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Subscribe</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
							<button type="submit" class="submit">SUBSCRIBE</button>
							<div class="clearfix"></div>
						</form>
					</div>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">trip Street, Choice Tower, Seoul, 777</p>
					<p class="lead"><a href="#">+82 010 123 9999</a></p>
					<p><a href="#"> info@master.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Create information</h3>
					<p><span class="text-color">김준욱 : </span>Head director</p>
					<p><span class="text-color">유영승 : </span>Second director</p>
					<p><span class="text-color">윤민상 : </span>Second director</p>
					<p><span class="text-color">송찬우 : </span>Second director</p>
					<p><span class="text-color">이병훈 : </span>Second director</p>
				</div>
			</div>
		</div>
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">All Rights Reserved. &copy; 2018 <a href="#">trip Choice</a> Design By : 
					<a href="https://html.design/">html design</a></p>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>