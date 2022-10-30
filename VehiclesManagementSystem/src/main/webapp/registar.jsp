<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration Form</title>
<!-- Favicons -->
<link href="assets/img/favicon.ico" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<%--Bootstrap link --%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">


<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

</head>
<body>

	<main>
		<div class="container">

			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">


							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Create an
											Account</h5>
										<p class="text-center small">Enter your personal details
											to create account</p>
									</div>

									<form class="row g-3 needs-validation" novalidate
										action="/newuser" method="POST">
										<div class="col-12">
											<label for="yourName" class="form-label">Your Name</label> <input
												type="text" name="userFullName" class="form-control"
												id="yourName" required>
											<div class="invalid-feedback">Please, enter your name!</div>
										</div>

										<div class="col-12">
											<label for="yourEmail" class="form-label">Your Email</label>
											<input type="text" name="uEmail" class="form-control"
												id="yourEmail" required>
											<div class="invalid-feedback">Please enter a valid
												Email adddress!</div>
										</div>

										<div class="col-12">
											<label for="yourUsername" class="form-label">Username</label>
											<div class="input-group has-validation">
												<span class="input-group-text" id="inputGroupPrepend">@</span>
												<input type="text" name="userUserName" class="form-control"
													id="yourUsername" required>
												<div class="invalid-feedback">Please choose a
													username.</div>
											</div>
										</div>

										<div class="col-12">
											<label for="yourPassword" class="form-label">Password</label>
											<input type="password" name="uPass" class="form-control"
												id="yourPassword" required>
											<div class="invalid-feedback">Please enter your
												password!</div>
										</div>

										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" name="terms" type="checkbox"
													value="" id="acceptTerms" required> <label
													class="form-check-label" for="acceptTerms">I agree
													and accept the <a href="#">terms and conditions</a>
												</label>
												<div class="invalid-feedback">You must agree before
													submitting.</div>
											</div>
										</div>
										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Create
												Account</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Already have an account? <a href="/">Log in</a>
											</p>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>

			</section>

		</div>
	</main>
	<!-- End #main -->
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%--Bootstrap Js link --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
</body>
</html>