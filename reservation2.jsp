<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<!--

Template 2095 Level

http://www.tooplate.com/view/2095-level

-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">                <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap2.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="css/datepicker.css"/>
    <link rel="stylesheet" href="css/tooplate-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
     
            <div class="tm-section tm-bg-img" id="tm-section-1">
                <div class="tm-bg-white ie-container-width-fix-2">
                    <div class="container ie-h-align-center-fix">
                        <div class="row">
                            <div class="col-xs-12 ml-auto mr-auto ie-container-width-fix">
                                <form action="index.html" method="get" class="tm-search-form tm-section-pad-2">
                                    <div class="form-row tm-search-form-row">
                                        <div class="form-group tm-form-element tm-form-element-100">
                                            <i class="fa fa-map-marker fa-2x tm-form-element-icon"></i>
                                            <input name="city" type="text" class="form-control" id="inputCity" placeholder="Type your destination...">
                                        </div>
                                        <div class="form-group tm-form-element tm-form-element-50">
                                            <i class="fa fa-calendar fa-2x tm-form-element-icon"></i>
                                            <input name="check-in" type="text" class="form-control" id="inputCheckIn" placeholder="Check In">
                                        </div>
                                        <div class="form-group tm-form-element tm-form-element-50">
                                            <i class="fa fa-calendar fa-2x tm-form-element-icon"></i>
                                            <input name="check-out" type="text" class="form-control" id="inputCheckOut" placeholder="Check Out">
                                        </div>
                                    </div>
                                    <div class="form-row tm-search-form-row">
                                        <div class="form-group tm-form-element tm-form-element-2">                                            
                                            <select name="adult" class="form-control tm-select" id="adult">
                                                <option value="">Adult</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                            <i class="fa fa-2x fa-user tm-form-element-icon"></i>
                                        </div>
                                        <div class="form-group tm-form-element tm-form-element-2">                                            
                                            <select name="Youth" class="form-control tm-select" id="Youth">
                                                   <option value="">Youth</option>
                                                <option value="0">0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                            <i class="fa fa-user tm-form-element-icon tm-form-element-icon-small"></i>
                                        </div>
                                        <div class="form-group tm-form-element tm-form-element-2">
                                            <select name="children" class="form-control tm-select" id="children">
                                                <option value="">children</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                            <i class="fa fa-2x fa-bed tm-form-element-icon"></i>
                                        </div>
                                        <div class="form-group tm-form-element tm-form-element-2">
                                            <button type="submit" class="btn btn-primary tm-btn-search">Check Availability</button>
                                        </div>
                                      </div>
                                      <div class="form-row clearfix pl-2 pr-2 tm-fx-col-xs">
                                          <p class="tm-margin-b-0">원하시는 날짜와 인원수를 체크해주세요.</p>
                                      </div>
                                </form>
                            </div>                        
                        </div>      
                    </div>
                </div>                  
            </div>
            
           <div class="tm-section tm-position-relative">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none" class="tm-section-down-arrow">
                    <polygon fill="#ee5057" points="0,0  100,0  50,60"></polygon>                   
                </svg> 
                <div class="container tm-pt-5 tm-pb-4">
                    <div class="row text-center">
                       <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">                           
                            <i class="fa tm-fa-6x fa-life-saver tm-color-primary tm-margin-b-20"></i>
                            <h3 class="tm-color-primary tm-article-title-1">관광/식사</h3>
                            <div id="footleft">
							    <a id='link'>자세히 보기</a>
							    <div id="subscribe-pop">   
							    <p>▣ 노을과 일출이 아름다운 제주 속 작은 제주 우도<br>
								우도의 노을&쏟아지는 별빛&햇살가득한 우도의아침<br><br>
								▣ 우도 전기차 포함<br>
								우도에서 편안한 이동 하실수 있도록 전기차 포함</p><hr>
								<h3>식사</h3>
								<p>
								▣ 제주 돔베고기정식 ▣ 갈치조림 ▣ 제주물회<br>
								제주에서 꼭 드셔야 하는 음식으로만 엄선하였습니다.</p>
								</div>
							 </div>
                        </article>
                        
                        <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">                            
                            <i class="fa tm-fa-6x fa-legal tm-color-primary tm-margin-b-20"></i>
                            <h3 class="tm-color-primary tm-article-title-1">표준 약관</h3>
                            <div id="footleft">
							    <a id='link'>자세히 보기</a>
							    <div id="subscribe-pop">  
								<p>	▣ 예약 취소시 수수료에 관한규정 (국외 여행약관 참조)<br>
									
									여행 예약일시부터<br>
									여행 30일 전까지 취소 경우 : 계약금 환불<br>
									여행 20일 전까지 취소 경우 : 여행요금의 10% 배상적용<br>
									여행 10일 전까지 취소 경우 : 여행요금의 15% 배상적용<br>
									여행 08일 전까지 취소 경우 : 여행요금의 20% 배상적용<br>
									여행 01일 전까지 취소 경우 : 여행요금의 30% 배상적용<br>
									여행 개시일 당일 취소시 : 여행요금의 50% 배상적용<br><br>
									
									▣ 근무일(공휴일 및 토,일요일 제외) 및 근무시간(18시까지) 내에 취소요청에 한하여 적용됩니다.<br><br>
									▣ 위의 내용은 국외여행 표준약관에 의거하였으며 소비자피해보상규정’(공정거래위원회 고시)에 따라 배상합니다.<br><br>
									▣ 최저행사인원 미 충족시 계약해제<br>
									- 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.<br>
									- 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에<br>
									다음 각 항목에 따라 여행자에게 배상하여야 합니다.<br>
									① 여행출발 1일전까지 통지시 : 여행요금의 30%<br>
									② 여행출발 당일 통지시 : 여행요금의 50%</p>
								</div>
							</div> 
                        </article>
                        
                        <article class="col-sm-12 col-md-4 col-lg-4 col-xl-4 tm-article">                            
                            <i class="fa tm-fa-6x fa-plane tm-color-primary tm-margin-b-20"></i>
                            <h3 class="tm-color-primary tm-article-title-1">참고 사항</h3>
                             <div id="footleft">
							    <a id='link'>자세히 보기</a>
							    <div id="subscribe-pop"> 
								 <p>1. 예약 시 여권상의 영문이름(항공권 및 호텔 예약), 여권번호(출/입국 절차). 여권 만료기간, 주민등록번호(여행자보험 가입), 연락처(자택/직장)를 알려주시기 바랍니다.<br>
								최초 예약 시 알려주신 영문이름이 실제 여권상 영문이름과 상이할 경우, 항공 탑승 및 호텔숙박이 거절될 수 있으며 당사의 귀책사유가 아님을 알려드립니다.<br><br>
								
								2. 여권 만료일은 출발일 기준으로 6개월 이상 있어야 합니다. (여권이 훼손된 경우 출/입국이 불가할 수 있습니다.)<br>
								1회 사용한 단수여권은 재사용이 불가하므로 반드시 재발급 받으시기를 바랍니다. 한국국적이 아닌 경우 담당자에게 별도 문의 바랍니다.<br><br>
								
								3. 유럽에 도착하셔서 입국수속을 하실 때 여권 소지인의 서명 란에 서명(sign)이 안된 여권으로는 입국이 거절되거나 벌금이 부과될 수 있으니, 반드시 확인하시기 바랍니다.<br><br>
								
								4. 유럽여행을 가실 때는 여권의 사증(VISAS) 면이 3장 이상(추가기재 면 제외) 남아있어야 하며, 사증(VISAS) 면이 부족할 경우 출입국이 제한될 수 있으니, 이 점도 주의하셔서 출발 전 반드시 확인하시기 바랍니다.<br><br>
								
								5. 여권과 필요한 경우 비자를 준비하는 것은 전적으로 고객님의 책임입니다. 출입국을 거부당했을 경우 발생하는 비용이나 환불 불가 등에 대해 당사에서 책임을 지지 않음을 알려드립니다.<br>
								</p>
								</div>
							</div>
                           
                        </article>
                    </div>        
                </div>
            </div>
            
           <div class="tm-section tm-section-pad tm-bg-gray" id="tm-section-4">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
                            <div class="tm-article-carousel">                            
                                <article class="tm-bg-white mr-2 tm-carousel-item">
                                <a class="lightbox" href="img/gallery-img-01.jpg">
                                    <img src="img/img-01.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">라마다 프라자 제주 호텔</h3></header>
                                        <p>제주의 첫 5성급 호텔로 선정된 라마다 프라자 제주 호텔은 제주 공항에서 차로 단 10분 거리에 있습니다. 주변 관광지로는 용두암이 차로 5분, 삼성혈, 민속자연사박물관 등이 차로 분 10분 거리에 있습니다. 또한, 칠성로 쇼핑상가 등도 차로 5분 거리에 있어 쇼핑을 편리하게 즐기실 수 있습니다.</p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Ramada_Plaza_Jeju_Hotel&destination_kor=%EB%9D%BC%EB%A7%88%EB%8B%A4%20%ED%94%84%EB%9D%BC%EC%9E%90%20%EC%A0%9C%EC%A3%BC%20%ED%98%B8%ED%85%94&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>                    
                                <article class="tm-bg-white mr-2 tm-carousel-item">
                                  <a class="lightbox" href="img/gallery-img-02.jpg">
                                    <img src="img/img-02.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">롯데 호텔 제주</h3></header>
                                        <p>푸른 제주 바다와 하늘이 맞닿은 곳에 위치한 롯데호텔 제주는 천국 같은 휴식과 여행의 즐거움을 동시에 누릴 수 있는 대한민국 대표 호텔입니다. 볼거리가 가득한 중문관광단지 내 자리하고 있어 관광단지 내 여미지 식물원, 천제연 폭포, 별 내린 전망대 등에서 가깝습니다 </p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Lotte_Hotel_Jeju&destination_kor=%EB%A1%AF%EB%8D%B0%20%ED%98%B8%ED%85%94%20%EC%A0%9C%EC%A3%BC&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>
                                <article class="tm-bg-white mr-2 tm-carousel-item">
                                <a class="lightbox" href="img/gallery-img-03.jpg">
                                    <img src="img/img-03.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">그랜드 조선 제주</h3></header>
                                        <p>서귀포에 위치한 그랜드 조선 제주는 제주 국제공항에서 차로 약 1시간 소요됩니다. 볼거리가 다양한 중문 관광단지는 도보로 약 5분도 채 안 되는 거리에 있습니다. 중문 색달해변, 천제연폭포, 여미지식물원, 테디베어 뮤지엄이 모두 걸어서 약 15분이면 갈 수 있습니다.</p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Grand_Josun_Jeju&destination_kor=%EA%B7%B8%EB%9E%9C%EB%93%9C%20%EC%A1%B0%EC%84%A0%20%EC%A0%9C%EC%A3%BC&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>
                                <article class="tm-bg-white mr-2 tm-carousel-item">
                                 <a class="lightbox" href="img/gallery-img-04.jpg">
                                    <img src="img/img-04.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">랜딩관 제주신화월드 호텔앤리조트</h3></header>
                                        <p>랜딩관 제주신화월드 호텔&리조트는 5성급 서비스와 부대시설을 합리적인 가격으로 선보이며, 제주를 찾는 이들에게 사랑받는 리조트 호텔입니다. 호텔 안팎에 전시된 제주 작가들의 작품과 계절에 따라 피어나는 제주의 꽃들이 꾸밈없는 제주의 감성을 전합니다. 제주에서 만나는 가장 합리적인 품격, 랜딩관이 선사합니다.</p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Landing_Jeju_Shinhwa_World_HotelsResorts&destination_kor=%EB%9E%9C%EB%94%A9%EA%B4%80%20%EC%A0%9C%EC%A3%BC%EC%8B%A0%ED%99%94%EC%9B%94%EB%93%9C%20%ED%98%B8%ED%85%94%EC%95%A4%EB%A6%AC%EC%A1%B0%ED%8A%B8&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>                    
                                <article class="tm-bg-white mr-2 tm-carousel-item">
                                <a class="lightbox" href="img/gallery-img-05.jpg">
                                    <img src="img/img-05.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">메리어트관 제주신화월드 호텔앤리조트</h3></header>
                                        <p>메리어트관 제주신화월드 호텔&리조트는 특별한 분들의 완벽한 제주 여행을 위한 제주 최고의 프리미엄 서비스와 차별화된 혜택을 선보이고 있습니다.오설록, 협재해수욕장, 중문 관광 단지 등 제주의 인기 명소가 인접해 있어 완벽한 제주 여행을 위한 최고의 숙소로 손색이 없습니다. 더 특별한 당신을 위한 제주 여행 최고의 숙소, 메리어트 관입니다. </p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Marriott_Jeju_Shinhwa_World_Hotels_Resorts&destination_kor=%EB%A9%94%EB%A6%AC%EC%96%B4%ED%8A%B8%EA%B4%80%20%EC%A0%9C%EC%A3%BC%EC%8B%A0%ED%99%94%EC%9B%94%EB%93%9C%20%ED%98%B8%ED%85%94%EC%95%A4%EB%A6%AC%EC%A1%B0%ED%8A%B8&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>
                                <article class="tm-bg-white tm-carousel-item">
                                <a class="lightbox" href="img/gallery-img-06.jpg">
                                    <img src="img/img-06.jpg" alt="Image" class="img-fluid">
                                    </a>
                                    <div class="tm-article-pad">
                                        <header><h3 class="text-uppercase tm-article-title-2">라마다 제주 시티 호텔</h3></header>
                                        <p>마다 제주 시티 호텔은 제주국제공항에서 차로 15분 거리에 자리잡고 있습니다. 주변의 관광 명소로는 용연 계곡과 용의 머리를 닮은 용두암이 차로 15분 거리에 있으며 제주도 원주민의 발상지인 삼성혈이 차로 5분 거리에 자리해 있습니다. 또한, 반짝이는 검은 모래가 특징인 삼양 검은모래해변까지 차로 20분이면 도착하며 제주도를 대표하는 명소인 한라산까지 차로 35분이 소요됩니다..</p>
                                        <a href="https://hotel.naver.com/hotels/item?hotelId=hotel:Ramada_Jeju_City_Hotel&destination_kor=%EB%9D%BC%EB%A7%88%EB%8B%A4%20%EC%A0%9C%EC%A3%BC%20%EC%8B%9C%ED%8B%B0%20%ED%98%B8%ED%85%94&nxQuery=%EC%A0%9C%EC%A3%BC%ED%98%B8%ED%85%94" 
                                        class="text-uppercase btn-primary tm-btn-primary">Get More Info.</a>
                                    </div>                                
                                </article>
                            </div>    
                        </div>
                        
                       <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-recommended-container">
                            <div class="tm-bg-white">
                                <div class="tm-bg-primary tm-sidebar-pad">
                                    <h3 class="tm-color-white tm-sidebar-title">Recommended Places</h3>
                                    <p class="tm-color-white tm-margin-b-0 tm-font-light">추천 지역</p>
                                </div>
                                <div class="tm-sidebar-pad-2">
                                    <a href="https://www.osulloc.com/kr/ko/museum" class="media tm-media tm-recommended-item">
                                        <img src="img/tn-img-01.jpg" alt="Image">
                                        <div class="media-body tm-media-body tm-bg-gray">
                                            <h4 class="text-uppercase tm-font-semibold tm-sidebar-item-title">오설록 티 뮤지엄</h4>
                                        </div>                                        
                                    </a>
                                    <a href="http://www.seokbujak.com/" class="media tm-media tm-recommended-item">
                                        <img src="img/tn-img-02.jpg" alt="Image">
                                        <div class="media-body tm-media-body tm-bg-gray">
                                            <h4 class="text-uppercase tm-font-semibold tm-sidebar-item-title">숨도</h4>
                                        </div>
                                    </a>
                                    <a href="https://jeju.museum.go.kr/html/kr/index.html" class="media tm-media tm-recommended-item">
                                        <img src="img/tn-img-03.jpg" alt="Image">
                                        <div class="media-body tm-media-body tm-bg-gray">
                                            <h4 class="text-uppercase tm-font-semibold tm-sidebar-item-title">국립제주박물관</h4>
                                        </div>
                                    </a>
                                     <a href="https://map.naver.com/v5/entry/place/13491455?c=14061311.6166451,3926072.4769170,15,0,0,0,dh&placePath=%3Fentry=plt%26from=nx" class="media tm-media tm-recommended-item">
                                        <img src="img/tn-img-04.jpg" alt="Image">
                                        <div class="media-body tm-media-body tm-bg-gray">
                                            <h4 class="text-uppercase tm-font-semibold tm-sidebar-item-title">용머리해안</h4>
                                        </div>
                                    </a>
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>

          
                 <div class="tm-section tm-section-pad tm-bg-img" id="tm-section-5">                                                        
                    <div class="container ie-h-align-center-fix">
                        <div class="row tm-flex-align-center">
                            <div class="col-xs-12 col-md-12 col-lg-3 col-xl-3 tm-media-title-container">
                                <h2 class="text-uppercase tm-section-title-2">Jeju</h2>
                                <h3 class="tm-color-primary tm-font-semibold tm-section-subtitle-2">Recommend</h3>
                            </div>
                            <div class="col-xs-12 col-md-12 col-lg-9 col-xl-9 mt-0 mt-sm-3">
                                <div class="ml-auto tm-bg-white-shadow tm-pad tm-media-container">
                                    <article class="media tm-margin-b-20 tm-media-1">
                                        <img src="img/img-07.jpg" alt="Image">
                                        <div class="media-body tm-media-body-1 tm-media-body-v-center">
                                            <h3 class="tm-font-semibold tm-color-primary tm-article-title-3">제주 애월 카페거리</h3>
                                            <p>눈앞에 바다가 보이는 절경이 너무나 아름다운곳. 그곳에서 친구와,가족과,연인과 함께 맛있는 식사뿐 아니라 디저트까지 함께하세요. 다양한 먹거리가 즐비해있고, 데이트 코스도 잘되어있어 남녀노소 누구나 즐기수 있는 거리입니다.
                                            <br><br>
											조용한 곳에서 나만의 시간을 즐기고, 느껴보세요. 소소하고 작은 행복을 원하신다면 제주 애월 카페거리 추천드립니다. </p>
                                        </div>                                
                                    </article>
                                    <article class="media tm-margin-b-20 tm-media-1">
                                        <img src="img/img-08.jpg" alt="Image">
                                        <div class="media-body tm-media-body-1 tm-media-body-v-center">
                                            <h3 class="tm-font-semibold tm-article-title-3">감귤 농장 체험</h3>
                                            <p>제주의 특산품, 한라봉. 자신의 손으로 직접따서 먹어보고, 즐길수 있는 공간입니다. 누구나 쉽게 따라오실수 있으니 꼭 경험해보세요!</p>
                                            <a href="https://blog.naver.com/dalljunggo" class="text-uppercase tm-color-primary tm-font-semibold">체험 바로가기</a>
                                        </div>                                
                                    </article>
                                    <article class="media tm-margin-b-20 tm-media-1">
                                        <img src="img/img-09.jpg" alt="Image">
                                        <div class="media-body tm-media-body-1 tm-media-body-v-center">
                                            <h3 class="tm-font-semibold tm-article-title-3">한라산 등산 투어</h3>
                                            <p>제주의 핫한 관광명소, 한라산. 제주도의 대부분을 차지하고 있는 거대한 화산섬을 경험하고 싶다면 한라산 등산 투어에 참여해보세요.</p>
                                            <a href="http://www.jeju.go.kr/hallasan/index.htm" class="text-uppercase tm-color-primary tm-font-semibold">투어 바로가기</a>
                                        </div>                                
                                    </article>
                                </div>                            
                            </div>
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
        
        <!-- load JS files -->
        <script src="js/myMenu.js"></script>
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/popper2.min.js"></script>                    <!-- https://popper.js.org/ -->       
        <script src="js/bootstrap2.min.js"></script>                 <!-- https://getbootstrap.com/ -->
        <script src="js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
        <script src="js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
        <script src="slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->
        <script>

            /* Google map
            ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 16,
                    center: new google.maps.LatLng(13.7567928,100.5653741),
                    scrollwheel: false
                };

                map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

                google.maps.event.addDomListener(map, 'idle', function() {
                  calculateCenter();
              });

                google.maps.event.addDomListener(window, 'resize', function() {
                  map.setCenter(center);
              });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap(){
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            } 

            function setCarousel() {
                
                if ($('.tm-article-carousel').hasClass('slick-initialized')) {
                    $('.tm-article-carousel').slick('destroy');
                } 

                if($(window).width() < 438){
                    // Slick carousel
                    $('.tm-article-carousel').slick({
                        infinite: false,
                        dots: true,
                        slidesToShow: 1,
                        slidesToScroll: 1
                    });
                }
                else {
                 $('.tm-article-carousel').slick({
                        infinite: false,
                        dots: true,
                        slidesToShow: 2,
                        slidesToScroll: 1
                    });   
                }
            }

            function setPageNav(){
                if($(window).width() > 991) {
                    $('#tm-top-bar').singlePageNav({
                        currentClass:'active',
                        offset: 79
                    });   
                }
                else {
                    $('#tm-top-bar').singlePageNav({
                        currentClass:'active',
                        offset: 65
                    });   
                }
            }

            function togglePlayPause() {
                vid = $('.tmVideo').get(0);

                if(vid.paused) {
                    vid.play();
                    $('.tm-btn-play').hide();
                    $('.tm-btn-pause').show();
                }
                else {
                    vid.pause();
                    $('.tm-btn-play').show();
                    $('.tm-btn-pause').hide();   
                }  
            }
       
            $(document).ready(function(){

                $(window).on("scroll", function() {
                    if($(window).scrollTop() > 100) {
                        $(".tm-top-bar").addClass("active");
                    } else {
                        //remove the background property so it comes transparent again (defined in your css)
                       $(".tm-top-bar").removeClass("active");
                    }
                });      

                // Google Map
                loadGoogleMap();  

                // Date Picker
                const pickerCheckIn = datepicker('#inputCheckIn');
                const pickerCheckOut = datepicker('#inputCheckOut');
                
                // Slick carousel
                setCarousel();
                setPageNav();

                $(window).resize(function() {
                  setCarousel();
                  setPageNav();
                });

                // Close navbar after clicked
                $('.nav-link').click(function(){
                    $('#mainNav').removeClass('show');
                });

                // Control video
                $('.tm-btn-play').click(function() {
                    togglePlayPause();                                      
                });

                $('.tm-btn-pause').click(function() {
                    togglePlayPause();                                      
                });

                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());                           
            });

        </script>             

</body>
</html>

