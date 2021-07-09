<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

	<!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Local Travel</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Local Travel</h2>
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
	
	<%@ include file="../footer.jsp" %>