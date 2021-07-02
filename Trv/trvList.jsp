<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

 <style>
 	{font-family:gulim; font-size: 24px;}
 </style>
 
	<h2 align="center"> 리뷰 </h2>
	<div class="content" align="center">
		<input type="submit" value="리뷰 등록" class="btn btn-danger" onclick="location.href='./trvForm.do'">
		<input type="button" value="HOME"   onclick="location.href='${root}/tripChoice/index.do'" class="btn btn-success" >
	</div>
 <table class="table table-striped">
  <tr>
  	<th>글번호</th>
  	<th>제목</th>
  	<th>내용</th>
  	<th>작성일</th>
  </tr>
  <c:forEach var="dto" items="${list}">
    <tr>
    	<td>${dto.trv_no}</td> 
  		<td>${dto.trv_sub}</td>
  		<td>${dto.trv_con}</td>
  		<td>${dto.trv_date}<br></td>
    </tr>
  </c:forEach>
  </table>

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
					<p class="lead">Happy Street, memory Tower, Seoul, 777</p>
					<p class="lead"><a href="#">+82 010 123 9999</a></p>
					<p><a href="#"> info@admin.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Opening hours</h3>
					<p><span class="text-color">Monday: </span>Closed</p>
					<p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
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