<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Profile</title>
<meta content="" name="description">
<meta content="" name="keywords">

<%-- favicons --%>
<link href="assets/img/favicon.ico" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<%-- Google Fonts --%>
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


<%-- Main CSS --%>
<link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

	<%-- Header --%>
	<header id="header" class="header fixed-top d-flex align-items-center">
		<%-- Logo --%>
		<div class="d-flex align-items-center justify-content-between">
			<a href="/home" class="logo d-flex align-items-center"> <img
				src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">Transport Management</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>

		<%-- Search Bar --%>
		<div class="search-bar">
			<form class="search-form d-flex align-items-center" method="POST"
				action="#">
				<input type="text" name="query" placeholder="Search"
					title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>


		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a
					class="nav-link nav-icon search-bar-toggle " href="#"> <i
						class="bi bi-search"></i>
				</a></li>






				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <%-- Profile Image --%> <img
						src="assets/img/profile.jpg" alt="Profile" class="rounded-circle">
						<span class="d-none d-md-block dropdown-toggle ps-2">Md.
							Nayeem Kazi</span>
				</a>

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>Admin</h6> <span>Web Designer</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/profile"> <i class="bi bi-person"></i> <span>My
									Profile</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/profile"> <i class="bi bi-gear"></i> <span>Account
									Settings</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="/"> <i class="bi bi-box-arrow-right"></i> <span>Sign
									Out</span>
						</a></li>

					</ul> <%-- End Profile Drop Down --%></li>
				<%-- End Profile Navbar --%>

			</ul>
		</nav>


	</header>
	<%-- End Header --%>

	<%-- Sidebar --%>
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">
			<%-- Dashboard Nav --%>
			<li class="nav-item"><a class="nav-link " href="home"> <i
					class="bi bi-grid"></i> <span>Dashboard</span>
			</a></li>


			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-truck"></i><span>Vehicles</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/newVehicle"> <i
							class="bi bi-circle"></i><span>New Vehicles</span>
					</a></li>
					<li><a href="components-accordion.html"> <i
							class="bi bi-circle"></i><span>All Vehicles</span>
					</a></li>
				</ul></li>
			<%-- Employees --%>

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-people"></i><span>Employees</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="/newEmployee"> <i class="bi bi-circle"></i><span>New
								Employee</span>
					</a></li>
					<li><a href="forms-layouts.html"> <i class="bi bi-circle"></i><span>All
								Employees</span>
					</a></li>
				</ul></li>

			<%-- Profile --%>
			<li class="nav-item"><a class="nav-link collapsed"
				href="/profile"> <i class="bi bi-person"></i> <span>Profile</span>
			</a></li>


			<%-- FAQ --%>

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>F.A.Q</span>
			</a></li>

			<%-- Contacts --%>

			<li class="nav-item"><a class="nav-link collapsed"
				href="pages-contact.html"> <i class="bi bi-envelope"></i> <span>Contact</span>
			</a></li>

		</ul>

	</aside>
	<%-- End Side Bar --%>

	<main id="main" class="main">

		<%-- Page Title Start--%>

		<div class="pagetitle">
			<h1>Profile</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/home">Home</a></li>
					<li class="breadcrumb-item">Users</li>
					<li class="breadcrumb-item active">Profile</li>
				</ol>
			</nav>
		</div>
		<%-- End Page Title --%>

		<section class="section profile">
			<div class="row">
				<div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							<img src="assets/img/profile.jpg" alt="Profile"
								class="rounded-circle">
							<h2>Kevin Anderson</h2>
							<h3>Web Designer</h3>
							<div class="social-links mt-2">
								<a href="#"><i class="bi bi-telephone-fill"></i></a> <a
									href="#"><i class="bi bi-envelope-fill"></i></a>
							</div>
						</div>
					</div>

				</div>

				<div class="col-xl-8">

					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview">Overview</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit">Edit Profile</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-settings">Settings</button>
								</li>

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-change-password">Change
										Password</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">
									

									<h5 class="card-title">Profile Details</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Full Name</div>
										<div class="col-lg-9 col-md-8">Nayeem</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Mobile</div>
										<div class="col-lg-9 col-md-8">01859785513</div>
									</div>

									

								</div>

								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

									<%-- Edit Profile --%>
									<form>
										<div class="row mb-3">
											<label for="profileImage"
												class="col-md-4 col-lg-3 col-form-label">Profile
												Image</label>
											<div class="col-md-8 col-lg-9">
												<img src="assets/img/profile.jpg" alt="Profile">
												<div class="pt-2">
													<a href="#" class="btn btn-primary btn-sm"
														title="Upload new profile image"><i
														class="bi bi-upload"></i></a> <a href="#"
														class="btn btn-danger btn-sm"
														title="Remove my profile image"><i class="bi bi-trash"></i></a>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="uId"
												class="col-md-4 col-lg-3 col-form-label">User ID</label>
											<div class="col-md-8 col-lg-9">
												<input name="uId" type="text" class="form-control"
													id="uId" value="1">
											</div>
										</div>
										<div class="row mb-3">
											<label for="uName"
												class="col-md-4 col-lg-3 col-form-label">User Name</label>
											<div class="col-md-8 col-lg-9">
												<input name="uName" type="text" class="form-control"
													id="uName" value="nayeem">
											</div>
										</div>
										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Full Name</label>
											<div class="col-md-8 col-lg-9">
												<input name="fullName" type="text" class="form-control"
													id="fullName" value="Nayeem">
											</div>
										</div>

										<div class="row mb-3">
											<label for="email" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<input name="email" type="text" class="form-control"
													id="email" value="example@email.com">
											</div>
										</div>

										<div class="row mb-3">
											<label for="mobile" class="col-md-4 col-lg-3 col-form-label">Mobile No</label>
											<div class="col-md-8 col-lg-9">
												<input name="mobile" type="text" class="form-control"
													id="mobile" value="01859785513">
											</div>
										</div>							

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
											<div class="col-md-8 col-lg-9">
											<textarea rows="" cols="" name="address" class="form-control"
													id="Address"></textarea>
												
											</div>
										</div>									

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<%-- End Edit Profile --%>

								</div>

								<div class="tab-pane fade pt-3" id="profile-settings">

									<!-- Settings Form -->
									<form>

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Email
												Notifications</label>
											<div class="col-md-8 col-lg-9">
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="changesMade" checked> <label
														class="form-check-label" for="changesMade">
														Changes made to your account </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="newProducts" checked> <label
														class="form-check-label" for="newProducts">
														Information on new products and services </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="proOffers"> <label class="form-check-label"
														for="proOffers"> Marketing and promo offers </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														id="securityNotify" checked disabled> <label
														class="form-check-label" for="securityNotify">
														Security alerts </label>
												</div>
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Save
												Changes</button>
										</div>
									</form>
									<!-- End settings Form -->

								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form>

										<div class="row mb-3">
											<label for="currentPassword"
												class="col-md-4 col-lg-3 col-form-label">Current
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="password" type="password" class="form-control"
													id="currentPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword"
												class="col-md-4 col-lg-3 col-form-label">New
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="newpassword" type="password"
													class="form-control" id="newPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword"
												class="col-md-4 col-lg-3 col-form-label">Re-enter
												New Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="renewpassword" type="password"
													class="form-control" id="renewPassword">
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Change
												Password</button>
										</div>
									</form>
									<!-- End Change Password Form -->

								</div>

							</div>
							<!-- End Bordered Tabs -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>Transport Management
					System</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
			Designed by <a href="https://github.com/nayeem-kazi/">Nayeem Kazi</a>
		</div>
	</footer>
	<!-- End Footer -->

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