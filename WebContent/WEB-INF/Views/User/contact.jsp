<%@ taglib prefix="core" uri="coreTags"%>
<section class="htc__contact__area ptb--100 bg__white"
	style="background-color: #F4F6F6">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-6 col-sm-12 col-xs-12">
				<div class="map-contacts--2">
					<div id="googleMap"></div>
				</div>
			</div>
			<div class="col-lg-5 col-md-6 col-sm-12 col-xs-12">
				<h2 class="title__line--6">CONTACT US</h2>
				<div class="address">
					<div class="address__icon">
						<i class="icon-location-pin icons"></i>
					</div>
					<div class="address__details" style="background-color: white">
						<h2 class="ct__title">our address</h2>
						<p>#15, 1st main, 1st and 2nd Stage,Yelahanka New
							Town,Bengaluru,Karnataka-560064</p>
					</div>
				</div>
				<div class="address">
					<div class="address__icon">
						<i class="icon-envelope icons"></i>
					</div>
					<div class="address__details" style="background-color: white">
						<h2 class="ct__title">openning hour</h2>
						<h2 class="ct__title" style="font-weight: 300">9:30 AM - 9:00
							PM</h2>
					</div>
				</div>

				<div class="address">
					<div class="address__icon">
						<i class="icon-phone icons"></i>
					</div>
					<div class="address__details" style="background-color: white">
						<h2 class="ct__title">
							<u>Phone Number</u>
						</h2>
						<h2 class="ct__title" style="font-weight: 300">8892042721</h2>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<div class="row" style="background-color: white">
			<div class="contact-form-wrap mt--60">
				<div class="col-xs-12">
					<div class="contact-title">
						<h2 class="title__line--6">SEND A Query</h2>
					</div>
				</div>
				<div class="col-xs-12">
					<form id="contact-form"
						action="${pageContext.request.contextPath}/user/sendQuery"
						method="post">
						<div class="single-contact-form">
							<div class="contact-box name">
								<core:if
									test="${not empty USER_ENTITY.userFirstName || not empty USER_ENTITY.userLastName}">
									<input type="text" name="userName" placeholder="Your Name*"
										value="${USER_ENTITY.userFirstName} ${USER_ENTITY.userLastName}">
								</core:if>
								<core:if
									test="${empty USER_ENTITY.userFirstName && empty USER_ENTITY.userLastName}">
									<input type="text" name="userName" placeholder="Your Name*"
										value="">
								</core:if>
								<input type="text" name="email" placeholder="Mail*"
									value="${USER_ENTITY.userEmail}">
								<core:if test="${not empty USER_ENTITY.userMobileNumber}">
									<input type="text" name="mobileNumber"
										placeholder="Your Mobile Number"
										value="${USER_ENTITY.userMobileNumber}" readonly="readonly">
								</core:if>
								<core:if test="${empty USER_ENTITY.userMobileNumber}">
									<input type="text" name="userName"
										placeholder="Your Mobile Number" value="">
								</core:if>
							</div>
						</div>
						<div class="single-contact-form">
							<div class="contact-box subject">
								<input type="text" name="subject" placeholder="Subject*"
									maxlength="100">
							</div>
						</div>
						<div class="single-contact-form">
							<div class="contact-box message">
								<textarea name="message" placeholder="Your Message"></textarea>
							</div>
						</div>
						<div class="contact-btn">
							<button type="submit" class="fv-btn">Send MESSAGE</button>
						</div>
					</form>
					<div class="form-output">
						<p class="form-messege"></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

